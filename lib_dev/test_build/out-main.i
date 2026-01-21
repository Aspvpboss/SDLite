# 0 "main.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "main.c"
# 1 "include/SDK.h" 1
       

# 1 "include/SDK_display.h" 1







# 1 "include/common_libs.h" 1
       
# 17 "include/common_libs.h"
# 1 "include/SDL3_mixer/SDL_mixer.h" 1
# 122 "include/SDL3_mixer/SDL_mixer.h"
# 1 "include/SDL3/SDL.h" 1
# 34 "include/SDL3/SDL.h"
# 1 "include/SDL3/SDL_stdinc.h" 1
# 49 "include/SDL3/SDL_stdinc.h"
# 1 "include/SDL3/SDL_platform_defines.h" 1
# 50 "include/SDL3/SDL_stdinc.h" 2

# 1 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/15.2.0/include/stdarg.h" 1 3 4
# 1 "C:/msys64/mingw64/include/stdarg.h" 1 3 4
# 45 "C:/msys64/mingw64/include/stdarg.h" 3 4

# 45 "C:/msys64/mingw64/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 107 "C:/msys64/mingw64/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 140 "C:/msys64/mingw64/include/stdarg.h" 3 4
# 1 "C:/msys64/mingw64/include/_mingw_stdarg.h" 1 3 4
# 14 "C:/msys64/mingw64/include/_mingw_stdarg.h" 3 4
# 1 "C:/msys64/mingw64/include/vadefs.h" 1 3 4
# 9 "C:/msys64/mingw64/include/vadefs.h" 3 4
# 1 "C:/msys64/mingw64/include/_mingw.h" 1 3 4
# 10 "C:/msys64/mingw64/include/_mingw.h" 3 4
# 1 "C:/msys64/mingw64/include/_mingw_mac.h" 1 3 4
# 108 "C:/msys64/mingw64/include/_mingw_mac.h" 3 4
             
# 117 "C:/msys64/mingw64/include/_mingw_mac.h" 3 4
             
# 326 "C:/msys64/mingw64/include/_mingw_mac.h" 3 4
       
# 405 "C:/msys64/mingw64/include/_mingw_mac.h" 3 4
       
# 11 "C:/msys64/mingw64/include/_mingw.h" 2 3 4
# 1 "C:/msys64/mingw64/include/_mingw_secapi.h" 1 3 4
# 12 "C:/msys64/mingw64/include/_mingw.h" 2 3 4
# 306 "C:/msys64/mingw64/include/_mingw.h" 3 4
# 1 "C:/msys64/mingw64/include/vadefs.h" 1 3 4
# 307 "C:/msys64/mingw64/include/_mingw.h" 2 3 4
# 604 "C:/msys64/mingw64/include/_mingw.h" 3 4
void __attribute__((__cdecl__)) __debugbreak(void);
extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) void __attribute__((__cdecl__)) __debugbreak(void)
{



  __asm__ __volatile__("int {$}3":);





}
# 625 "C:/msys64/mingw64/include/_mingw.h" 3 4
void __attribute__((__cdecl__)) __attribute__ ((__noreturn__)) __fastfail(unsigned int code);
extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) void __attribute__((__cdecl__)) __attribute__ ((__noreturn__)) __fastfail(unsigned int code)
{




  __asm__ __volatile__("int {$}0x29"::"c"(code));






  __builtin_unreachable();
}
# 665 "C:/msys64/mingw64/include/_mingw.h" 3 4
const char *__mingw_get_crt_info (void);
# 685 "C:/msys64/mingw64/include/_mingw.h" 3 4
# 1 "C:/msys64/mingw64/include/sdks/_mingw_ddk.h" 1 3 4
# 686 "C:/msys64/mingw64/include/_mingw.h" 2 3 4
# 10 "C:/msys64/mingw64/include/vadefs.h" 2 3 4




#pragma pack(push,_CRT_PACKING)
# 103 "C:/msys64/mingw64/include/vadefs.h" 3 4
#pragma pack(pop)
# 15 "C:/msys64/mingw64/include/_mingw_stdarg.h" 2 3 4
# 141 "C:/msys64/mingw64/include/stdarg.h" 2 3 4
# 2 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/15.2.0/include/stdarg.h" 2 3 4
# 52 "include/SDL3/SDL_stdinc.h" 2
# 1 "C:/msys64/mingw64/include/string.h" 1 3
# 9 "C:/msys64/mingw64/include/string.h" 3
# 1 "C:/msys64/mingw64/include/crtdefs.h" 1 3
# 10 "C:/msys64/mingw64/include/crtdefs.h" 3
# 1 "C:/msys64/mingw64/include/corecrt.h" 1 3
# 10 "C:/msys64/mingw64/include/corecrt.h" 3
# 1 "C:/msys64/mingw64/include/_mingw.h" 1 3
# 11 "C:/msys64/mingw64/include/corecrt.h" 2 3




#pragma pack(push,_CRT_PACKING)
# 35 "C:/msys64/mingw64/include/corecrt.h" 3
__extension__ typedef unsigned long long size_t;
# 45 "C:/msys64/mingw64/include/corecrt.h" 3
__extension__ typedef long long ssize_t;






typedef size_t rsize_t;
# 62 "C:/msys64/mingw64/include/corecrt.h" 3
__extension__ typedef long long intptr_t;
# 75 "C:/msys64/mingw64/include/corecrt.h" 3
__extension__ typedef unsigned long long uintptr_t;
# 88 "C:/msys64/mingw64/include/corecrt.h" 3
__extension__ typedef long long ptrdiff_t;
# 98 "C:/msys64/mingw64/include/corecrt.h" 3
typedef unsigned short wchar_t;







typedef unsigned short wint_t;
typedef unsigned short wctype_t;





typedef int errno_t;




typedef long __time32_t;




__extension__ typedef long long __time64_t;
# 138 "C:/msys64/mingw64/include/corecrt.h" 3
typedef __time64_t time_t;
# 157 "C:/msys64/mingw64/include/corecrt.h" 3
__attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _invalid_parameter_noinfo(void);
__attribute__ ((__dllimport__)) __attribute__ ((__noreturn__)) void __attribute__((__cdecl__)) _invalid_parameter_noinfo_noreturn(void);
__attribute__ ((__dllimport__)) __attribute__ ((__noreturn__)) void __attribute__((__cdecl__)) _invoke_watson(const wchar_t *expression, const wchar_t *function_name, const wchar_t *file_name, unsigned int line_number, uintptr_t reserved);
# 437 "C:/msys64/mingw64/include/corecrt.h" 3
struct threadlocaleinfostruct;
struct threadmbcinfostruct;
typedef struct threadlocaleinfostruct *pthreadlocinfo;
typedef struct threadmbcinfostruct *pthreadmbcinfo;
struct __lc_time_data;

typedef struct localeinfo_struct {
  pthreadlocinfo locinfo;
  pthreadmbcinfo mbcinfo;
} _locale_tstruct,*_locale_t;



typedef struct tagLC_ID {
  unsigned short wLanguage;
  unsigned short wCountry;
  unsigned short wCodePage;
} LC_ID,*LPLC_ID;




typedef struct threadlocaleinfostruct {

  const unsigned short *_locale_pctype;
  int _locale_mb_cur_max;
  unsigned int _locale_lc_codepage;
# 489 "C:/msys64/mingw64/include/corecrt.h" 3
} threadlocinfo;
# 508 "C:/msys64/mingw64/include/corecrt.h" 3
#pragma pack(pop)
# 11 "C:/msys64/mingw64/include/crtdefs.h" 2 3
# 10 "C:/msys64/mingw64/include/string.h" 2 3
# 45 "C:/msys64/mingw64/include/string.h" 3
  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _memccpy(void *_Dst,const void *_Src,int _Val,size_t _MaxCount);
  void *__attribute__((__cdecl__)) memchr(const void *_Buf ,int _Val,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _memicmp(const void *_Buf1,const void *_Buf2,size_t _Size);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _memicmp_l(const void *_Buf1,const void *_Buf2,size_t _Size,_locale_t _Locale);
  int __attribute__((__cdecl__)) memcmp(const void *_Buf1,const void *_Buf2,size_t _Size);
  void * __attribute__((__cdecl__)) memcpy(void * __restrict__ _Dst,const void * __restrict__ _Src,size_t _Size) ;
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) memcpy_s (void *_dest,size_t _numberOfElements,const void *_src,size_t _count);
  void * __attribute__((__cdecl__)) mempcpy (void *_Dst, const void *_Src, size_t _Size);
  void * __attribute__((__cdecl__)) memset(void *_Dst,int _Val,size_t _Size);

  void * __attribute__((__cdecl__)) memccpy(void *_Dst,const void *_Src,int _Val,size_t _Size) ;
  int __attribute__((__cdecl__)) memicmp(const void *_Buf1,const void *_Buf2,size_t _Size) ;


  char * __attribute__((__cdecl__)) _strset(char *_Str,int _Val) ;
  char * __attribute__((__cdecl__)) _strset_l(char *_Str,int _Val,_locale_t _Locale) ;
  char * __attribute__((__cdecl__)) strcpy(char * __restrict__ _Dest,const char * __restrict__ _Source);
  char * __attribute__((__cdecl__)) strcat(char * __restrict__ _Dest,const char * __restrict__ _Source);
  int __attribute__((__cdecl__)) strcmp(const char *_Str1,const char *_Str2);
  size_t __attribute__((__cdecl__)) strlen(const char *_Str);
  size_t __attribute__((__cdecl__)) strnlen(const char *_Str,size_t _MaxCount);
  void *__attribute__((__cdecl__)) memmove(void *_Dst,const void *_Src,size_t _Size) ;




  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strdup(const char *_Src);



  char *__attribute__((__cdecl__)) strchr(const char *_Str,int _Val);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricmp(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strcmpi(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricmp_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  int __attribute__((__cdecl__)) strcoll(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strcoll_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricoll(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricoll_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strncoll (const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strncoll_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicoll (const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicoll_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  size_t __attribute__((__cdecl__)) strcspn(const char *_Str,const char *_Control);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strerror(const char *_ErrMsg) ;
  char *__attribute__((__cdecl__)) strerror(int) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strlwr(char *_String) ;
  char *strlwr_l(char *_String,_locale_t _Locale) ;
  char *__attribute__((__cdecl__)) strncat(char * __restrict__ _Dest,const char * __restrict__ _Source,size_t _Count) ;
  int __attribute__((__cdecl__)) strncmp(const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicmp(const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicmp_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  char *strncpy(char * __restrict__ _Dest,const char * __restrict__ _Source,size_t _Count) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strnset(char *_Str,int _Val,size_t _MaxCount) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strnset_l(char *str,int c,size_t count,_locale_t _Locale) ;
  char *__attribute__((__cdecl__)) strpbrk(const char *_Str,const char *_Control);
  char *__attribute__((__cdecl__)) strrchr(const char *_Str,int _Ch);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strrev(char *_Str);
  size_t __attribute__((__cdecl__)) strspn(const char *_Str,const char *_Control);
  char *__attribute__((__cdecl__)) strstr(const char *_Str,const char *_SubStr);
  char *__attribute__((__cdecl__)) strtok(char * __restrict__ _Str,const char * __restrict__ _Delim) ;
       

  char *strtok_r(char * __restrict__ _Str, const char * __restrict__ _Delim, char ** __restrict__ __last);
       
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strupr(char *_String) ;
  __attribute__ ((__dllimport__)) char *_strupr_l(char *_String,_locale_t _Locale) ;
  size_t __attribute__((__cdecl__)) strxfrm(char * __restrict__ _Dst,const char * __restrict__ _Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _strxfrm_l(char * __restrict__ _Dst,const char * __restrict__ _Src,size_t _MaxCount,_locale_t _Locale);






  char *__attribute__((__cdecl__)) strdup(const char *_Src) ;



  int __attribute__((__cdecl__)) strcmpi(const char *_Str1,const char *_Str2) ;
  int __attribute__((__cdecl__)) stricmp(const char *_Str1,const char *_Str2) ;
  char *__attribute__((__cdecl__)) strlwr(char *_Str) ;
  int __attribute__((__cdecl__)) strnicmp(const char *_Str1,const char *_Str,size_t _MaxCount) ;
  int __attribute__((__cdecl__)) strncasecmp (const char *, const char *, size_t);
  int __attribute__((__cdecl__)) strcasecmp (const char *, const char *);







  char *__attribute__((__cdecl__)) strnset(char *_Str,int _Val,size_t _MaxCount) ;
  char *__attribute__((__cdecl__)) strrev(char *_Str) ;
  char *__attribute__((__cdecl__)) strset(char *_Str,int _Val) ;
  char *__attribute__((__cdecl__)) strupr(char *_Str) ;
# 149 "C:/msys64/mingw64/include/string.h" 3
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsdup(const wchar_t *_Str);



  wchar_t *__attribute__((__cdecl__)) wcscat(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source) ;
  wchar_t *__attribute__((__cdecl__)) wcschr(const wchar_t *_Str,wchar_t _Ch);
  int __attribute__((__cdecl__)) wcscmp(const wchar_t *_Str1,const wchar_t *_Str2);
  wchar_t *__attribute__((__cdecl__)) wcscpy(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source) ;
  size_t __attribute__((__cdecl__)) wcscspn(const wchar_t *_Str,const wchar_t *_Control);
  size_t __attribute__((__cdecl__)) wcslen(const wchar_t *_Str);
  size_t __attribute__((__cdecl__)) wcsnlen(const wchar_t *_Src,size_t _MaxCount);
  wchar_t *wcsncat(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count) ;
  int __attribute__((__cdecl__)) wcsncmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  wchar_t *wcsncpy(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count) ;
  wchar_t *__attribute__((__cdecl__)) _wcsncpy_l(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count,_locale_t _Locale) ;
  wchar_t *__attribute__((__cdecl__)) wcspbrk(const wchar_t *_Str,const wchar_t *_Control);
  wchar_t *__attribute__((__cdecl__)) wcsrchr(const wchar_t *_Str,wchar_t _Ch);
  size_t __attribute__((__cdecl__)) wcsspn(const wchar_t *_Str,const wchar_t *_Control);
  wchar_t *__attribute__((__cdecl__)) wcsstr(const wchar_t *_Str,const wchar_t *_SubStr);
  wchar_t *__attribute__((__cdecl__)) wcstok(wchar_t * __restrict__ _Str,const wchar_t * __restrict__ _Delim,wchar_t ** __restrict__ _Ptr) ;
  wchar_t *__attribute__((__cdecl__)) _wcstok(wchar_t * __restrict__ _Str,const wchar_t * __restrict__ _Delim) ;






  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcserror(int _ErrNum) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) __wcserror(const wchar_t *_Str) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicmp(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicmp_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicmp_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsnset(wchar_t *_Str,wchar_t _Val,size_t _MaxCount) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsrev(wchar_t *_Str);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsset(wchar_t *_Str,wchar_t _Val) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcslwr(wchar_t *_String) ;
  __attribute__ ((__dllimport__)) wchar_t *_wcslwr_l(wchar_t *_String,_locale_t _Locale) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsupr(wchar_t *_String) ;
  __attribute__ ((__dllimport__)) wchar_t *_wcsupr_l(wchar_t *_String,_locale_t _Locale) ;
  size_t __attribute__((__cdecl__)) wcsxfrm(wchar_t * __restrict__ _Dst,const wchar_t * __restrict__ _Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _wcsxfrm_l(wchar_t * __restrict__ _Dst,const wchar_t * __restrict__ _Src,size_t _MaxCount,_locale_t _Locale);
  int __attribute__((__cdecl__)) wcscoll(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcscoll_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicoll(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicoll_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsncoll(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsncoll_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicoll(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicoll_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);






  wchar_t *__attribute__((__cdecl__)) wcsdup(const wchar_t *_Str) ;




  int __attribute__((__cdecl__)) wcsicmp(const wchar_t *_Str1,const wchar_t *_Str2) ;
  int __attribute__((__cdecl__)) wcsnicmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount) ;
  wchar_t *__attribute__((__cdecl__)) wcsnset(wchar_t *_Str,wchar_t _Val,size_t _MaxCount) ;
  wchar_t *__attribute__((__cdecl__)) wcsrev(wchar_t *_Str) ;
  wchar_t *__attribute__((__cdecl__)) wcsset(wchar_t *_Str,wchar_t _Val) ;
  wchar_t *__attribute__((__cdecl__)) wcslwr(wchar_t *_Str) ;
  wchar_t *__attribute__((__cdecl__)) wcsupr(wchar_t *_Str) ;
  int __attribute__((__cdecl__)) wcsicoll(const wchar_t *_Str1,const wchar_t *_Str2) ;







# 1 "C:/msys64/mingw64/include/sec_api/string_s.h" 1 3
# 9 "C:/msys64/mingw64/include/sec_api/string_s.h" 3
# 1 "C:/msys64/mingw64/include/string.h" 1 3
# 10 "C:/msys64/mingw64/include/sec_api/string_s.h" 2 3
# 24 "C:/msys64/mingw64/include/sec_api/string_s.h" 3
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strset_s(char *_Dst,size_t _DstSize,int _Value);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strerror_s(char *_Buf,size_t _SizeInBytes,const char *_ErrMsg);
 
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) strerror_s(char *_Buf,size_t _SizeInBytes,int _ErrNum);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strlwr_s(char *_Str,size_t _Size);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strlwr_s_l(char *_Str,size_t _Size,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strnset_s(char *_Str,size_t _Size,int _Val,size_t _MaxCount);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strupr_s(char *_Str,size_t _Size);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strupr_s_l(char *_Str,size_t _Size,_locale_t _Locale);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strncat_s(char *_Dst,size_t _DstSizeInChars,const char *_Src,size_t _MaxCount);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strncat_s_l(char *_Dst,size_t _DstSizeInChars,const char *_Src,size_t _MaxCount,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strcpy_s(char *_Dst, rsize_t _SizeInBytes, const char *_Src);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strncpy_s(char *_Dst, size_t _DstSizeInChars, const char *_Src, size_t _MaxCount);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strncpy_s_l(char *_Dst, size_t _DstSizeInChars, const char *_Src, size_t _MaxCount, _locale_t _Locale);
 
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) strtok_s(char *_Str,const char *_Delim,char **_Context);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strtok_s_l(char *_Str,const char *_Delim,char **_Context,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strcat_s(char *_Dst, rsize_t _SizeInBytes, const char * _Src);
 

  extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) size_t __attribute__((__cdecl__)) strnlen_s(const char * _src, size_t _count) {
    return _src ? strnlen(_src, _count) : 0;
  }

  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) memmove_s(void *_dest,size_t _numberOfElements,const void *_src,size_t _count);


  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) wcstok_s(wchar_t *_Str,const wchar_t *_Delim,wchar_t **_Context);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcserror_s(wchar_t *_Buf,size_t _SizeInWords,int _ErrNum);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) __wcserror_s(wchar_t *_Buffer,size_t _SizeInWords,const wchar_t *_ErrMsg);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsnset_s(wchar_t *_Dst,size_t _DstSizeInWords,wchar_t _Val,size_t _MaxCount);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsset_s(wchar_t *_Str,size_t _SizeInWords,wchar_t _Val);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcslwr_s(wchar_t *_Str,size_t _SizeInWords);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcslwr_s_l(wchar_t *_Str,size_t _SizeInWords,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsupr_s(wchar_t *_Str,size_t _Size);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsupr_s_l(wchar_t *_Str,size_t _Size,_locale_t _Locale);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcscpy_s(wchar_t *_Dst, rsize_t _SizeInWords, const wchar_t *_Src);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcscat_s(wchar_t * _Dst, rsize_t _SizeInWords, const wchar_t *_Src);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcsncat_s(wchar_t *_Dst,size_t _DstSizeInChars,const wchar_t *_Src,size_t _MaxCount);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsncat_s_l(wchar_t *_Dst,size_t _DstSizeInChars,const wchar_t *_Src,size_t _MaxCount,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcsncpy_s(wchar_t *_Dst, size_t _DstSizeInChars, const wchar_t *_Src, size_t _MaxCount);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsncpy_s_l(wchar_t *_Dst, size_t _DstSizeInChars, const wchar_t *_Src, size_t _MaxCount, _locale_t _Locale);
 
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcstok_s_l(wchar_t *_Str,const wchar_t *_Delim,wchar_t **_Context,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsset_s_l(wchar_t *_Str,size_t _SizeInChars,wchar_t _Val,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsnset_s_l(wchar_t *_Str,size_t _SizeInChars,wchar_t _Val, size_t _Count,_locale_t _Locale);
 

  extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) size_t __attribute__((__cdecl__)) wcsnlen_s(const wchar_t * _src, size_t _count) {
    return _src ? wcsnlen(_src, _count) : 0;
  }
# 226 "C:/msys64/mingw64/include/string.h" 2 3
# 53 "include/SDL3/SDL_stdinc.h" 2
# 1 "C:/msys64/mingw64/include/wchar.h" 1 3
# 10 "C:/msys64/mingw64/include/wchar.h" 3
# 1 "C:/msys64/mingw64/include/corecrt_stdio_config.h" 1 3
# 16 "C:/msys64/mingw64/include/corecrt_stdio_config.h" 3
unsigned long long* __attribute__((__cdecl__)) __local_stdio_printf_options(void);
unsigned long long* __attribute__((__cdecl__)) __local_stdio_scanf_options(void);
# 11 "C:/msys64/mingw64/include/wchar.h" 2 3
# 1 "C:/msys64/mingw64/include/corecrt_wstdlib.h" 1 3
# 19 "C:/msys64/mingw64/include/corecrt_wstdlib.h" 3
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wdupenv_s(wchar_t **_Buffer,size_t *_BufferSizeInWords,const wchar_t *_VarName);




  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _itow_s (int _Val,wchar_t *_DstBuf,size_t _SizeInWords,int _Radix);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _ltow_s (long _Val,wchar_t *_DstBuf,size_t _SizeInWords,int _Radix);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _ultow_s (unsigned long _Val,wchar_t *_DstBuf,size_t _SizeInWords,int _Radix);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wgetenv_s(size_t *_ReturnSize,wchar_t *_DstBuf,size_t _DstSizeInWords,const wchar_t *_VarName);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _i64tow_s(long long _Val,wchar_t *_DstBuf,size_t _SizeInWords,int _Radix);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _ui64tow_s(unsigned long long _Val,wchar_t *_DstBuf,size_t _SizeInWords,int _Radix);

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wmakepath_s(wchar_t *_PathResult,size_t _SizeInWords,const wchar_t *_Drive,const wchar_t *_Dir,const wchar_t *_Filename,const wchar_t *_Ext);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wputenv_s(const wchar_t *_Name,const wchar_t *_Value);

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wsearchenv_s(const wchar_t *_Filename,const wchar_t *_EnvVar,wchar_t *_ResultPath,size_t _SizeInWords);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wsplitpath_s(const wchar_t *_FullPath,wchar_t *_Drive,size_t _DriveSizeInWords,wchar_t *_Dir,size_t _DirSizeInWords,wchar_t *_Filename,size_t _FilenameSizeInWords,wchar_t *_Ext,size_t _ExtSizeInWords);
 
# 12 "C:/msys64/mingw64/include/wchar.h" 2 3
# 1 "C:/msys64/mingw64/include/corecrt_wctype.h" 1 3
# 31 "C:/msys64/mingw64/include/corecrt_wctype.h" 3
  __attribute__ ((__dllimport__)) const unsigned short* __pctype_func(void);
# 45 "C:/msys64/mingw64/include/corecrt_wctype.h" 3
  extern const unsigned short ** __imp__wctype;



  __attribute__ ((__dllimport__)) const wctype_t * __attribute__((__cdecl__)) __pwctype_func(void);
# 72 "C:/msys64/mingw64/include/corecrt_wctype.h" 3
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) iswalpha(wint_t _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) iswupper(wint_t _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) iswlower(wint_t _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) iswdigit(wint_t _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) iswxdigit(wint_t _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) iswspace(wint_t _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) iswpunct(wint_t _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) iswalnum(wint_t _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) iswprint(wint_t _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) iswgraph(wint_t _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) iswcntrl(wint_t _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) iswascii(wint_t _C);

  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) isleadbyte(int _C);

  __attribute__ ((__dllimport__)) wint_t __attribute__((__cdecl__)) towupper(wint_t _C);
  __attribute__ ((__dllimport__)) wint_t __attribute__((__cdecl__)) towlower(wint_t _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) iswctype(wint_t _C,wctype_t _Type);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) __iswcsymf(wint_t _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) __iswcsym(wint_t _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) iswblank(wint_t _C);



  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _iswalpha_l(wint_t _C,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _iswupper_l(wint_t _C,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _iswlower_l(wint_t _C,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _iswdigit_l(wint_t _C,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _iswxdigit_l(wint_t _C,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _iswspace_l(wint_t _C,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _iswpunct_l(wint_t _C,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _iswalnum_l(wint_t _C,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _iswprint_l(wint_t _C,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _iswgraph_l(wint_t _C,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _iswcntrl_l(wint_t _C,_locale_t _Locale);
  __attribute__ ((__dllimport__)) wint_t __attribute__((__cdecl__)) _towupper_l(wint_t _C,_locale_t _Locale);
  __attribute__ ((__dllimport__)) wint_t __attribute__((__cdecl__)) _towlower_l(wint_t _C,_locale_t _Locale);

  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _isleadbyte_l(int _C,_locale_t _Locale);

  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _iswctype_l(wint_t _C,wctype_t _Type,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _iswblank_l(wint_t _C,_locale_t _Locale);



  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _iswcsymf_l(wint_t _C,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _iswcsym_l(wint_t _C,_locale_t _Locale);


  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) is_wctype(wint_t _C,wctype_t _Type);
# 13 "C:/msys64/mingw64/include/wchar.h" 2 3
# 27 "C:/msys64/mingw64/include/wchar.h" 3
#pragma pack(push,_CRT_PACKING)
# 43 "C:/msys64/mingw64/include/wchar.h" 3
  struct _iobuf {

    void *_Placeholder;
# 56 "C:/msys64/mingw64/include/wchar.h" 3
  };
  typedef struct _iobuf FILE;



__attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) __acrt_iob_func(unsigned index);

  __attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) __iob_func(void);
# 75 "C:/msys64/mingw64/include/wchar.h" 3
  typedef unsigned long _fsize_t;




  struct _wfinddata32_t {
    unsigned attrib;
    __time32_t time_create;
    __time32_t time_access;
    __time32_t time_write;
    _fsize_t size;
    wchar_t name[260];
  };

  struct _wfinddata32i64_t {
    unsigned attrib;
    __time32_t time_create;
    __time32_t time_access;
    __time32_t time_write;
    __extension__ long long size;
    wchar_t name[260];
  };

  struct _wfinddata64i32_t {
    unsigned attrib;
    __time64_t time_create;
    __time64_t time_access;
    __time64_t time_write;
    _fsize_t size;
    wchar_t name[260];
  };

  struct _wfinddata64_t {
    unsigned attrib;
    __time64_t time_create;
    __time64_t time_access;
    __time64_t time_write;
    __extension__ long long size;
    wchar_t name[260];
  };
# 167 "C:/msys64/mingw64/include/wchar.h" 3
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wgetcwd(wchar_t *_DstBuf,int _SizeInWords);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wgetdcwd(int _Drive,wchar_t *_DstBuf,int _SizeInWords);

  wchar_t *__attribute__((__cdecl__)) _wgetdcwd_nolock(int _Drive,wchar_t *_DstBuf,int _SizeInWords);






  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wchdir(const wchar_t *_Path);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wmkdir(const wchar_t *_Path);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wrmdir(const wchar_t *_Path);





  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _waccess(const wchar_t *_Filename,int _AccessMode);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wchmod(const wchar_t *_Filename,int _Mode);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcreat(const wchar_t *_Filename,int _PermissionMode) ;
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wfindfirst32(const wchar_t *_Filename,struct _wfinddata32_t *_FindData);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wfindnext32(intptr_t _FindHandle,struct _wfinddata32_t *_FindData);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wunlink(const wchar_t *_Filename);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wrename(const wchar_t *_OldFilename,const wchar_t *_NewFilename);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wmktemp(wchar_t *_TemplateName) ;
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wfindfirst32i64(const wchar_t *_Filename,struct _wfinddata32i64_t *_FindData);
  intptr_t __attribute__((__cdecl__)) _wfindfirst64i32(const wchar_t *_Filename,struct _wfinddata64i32_t *_FindData);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wfindfirst64(const wchar_t *_Filename,struct _wfinddata64_t *_FindData);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wfindnext32i64(intptr_t _FindHandle,struct _wfinddata32i64_t *_FindData);
  int __attribute__((__cdecl__)) _wfindnext64i32(intptr_t _FindHandle,struct _wfinddata64i32_t *_FindData);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wfindnext64(intptr_t _FindHandle,struct _wfinddata64_t *_FindData);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wsopen_s(int *_FileHandle,const wchar_t *_Filename,int _OpenFlag,int _ShareFlag,int _PermissionFlag);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wopen(const wchar_t *_Filename,int _OpenFlag,...) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wsopen(const wchar_t *_Filename,int _OpenFlag,int _ShareFlag,...) ;




  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wsetlocale(int _Category,const wchar_t *_Locale);



  __attribute__ ((__dllimport__)) _locale_t __attribute__((__cdecl__)) _wcreate_locale(int _Category, const wchar_t *_Locale);





  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wexecl(const wchar_t *_Filename,const wchar_t *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wexecle(const wchar_t *_Filename,const wchar_t *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wexeclp(const wchar_t *_Filename,const wchar_t *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wexeclpe(const wchar_t *_Filename,const wchar_t *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wexecv(const wchar_t *_Filename,const wchar_t *const *_ArgList);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wexecve(const wchar_t *_Filename,const wchar_t *const *_ArgList,const wchar_t *const *_Env);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wexecvp(const wchar_t *_Filename,const wchar_t *const *_ArgList);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wexecvpe(const wchar_t *_Filename,const wchar_t *const *_ArgList,const wchar_t *const *_Env);




  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wspawnl(int _Mode,const wchar_t *_Filename,const wchar_t *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wspawnle(int _Mode,const wchar_t *_Filename,const wchar_t *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wspawnlp(int _Mode,const wchar_t *_Filename,const wchar_t *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wspawnlpe(int _Mode,const wchar_t *_Filename,const wchar_t *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wspawnv(int _Mode,const wchar_t *_Filename,const wchar_t *const *_ArgList);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wspawnve(int _Mode,const wchar_t *_Filename,const wchar_t *const *_ArgList,const wchar_t *const *_Env);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wspawnvp(int _Mode,const wchar_t *_Filename,const wchar_t *const *_ArgList);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wspawnvpe(int _Mode,const wchar_t *_Filename,const wchar_t *const *_ArgList,const wchar_t *const *_Env);




  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wsystem(const wchar_t *_Command);






  typedef unsigned short _ino_t;

  typedef unsigned short ino_t;





  typedef unsigned int _dev_t;

  typedef unsigned int dev_t;



# 1 "C:/msys64/mingw64/include/_mingw_off_t.h" 1 3




  typedef long _off_t;

  typedef long off32_t;





  __extension__ typedef long long _off64_t;

  __extension__ typedef long long off64_t;
# 26 "C:/msys64/mingw64/include/_mingw_off_t.h" 3
typedef off32_t off_t;
# 262 "C:/msys64/mingw64/include/wchar.h" 2 3
# 1 "C:/msys64/mingw64/include/_mingw_stat64.h" 1 3
# 29 "C:/msys64/mingw64/include/_mingw_stat64.h" 3
  struct _stat32 {
    _dev_t st_dev;
   _ino_t st_ino;
    unsigned short st_mode;
    short st_nlink;
    short st_uid;
    short st_gid;
    _dev_t st_rdev;
    _off_t st_size;
    __time32_t st_atime;
    __time32_t st_mtime;
    __time32_t st_ctime;
  };

  struct _stat32i64 {
    _dev_t st_dev;
    _ino_t st_ino;
    unsigned short st_mode;
    short st_nlink;
    short st_uid;
    short st_gid;
    _dev_t st_rdev;
    __extension__ long long st_size;
    __time32_t st_atime;
    __time32_t st_mtime;
    __time32_t st_ctime;
  };

  struct _stat64i32 {
    _dev_t st_dev;
    _ino_t st_ino;
    unsigned short st_mode;
    short st_nlink;
    short st_uid;
    short st_gid;
    _dev_t st_rdev;
    _off_t st_size;
    __time64_t st_atime;
    __time64_t st_mtime;
    __time64_t st_ctime;
  };

  struct _stat64 {
    _dev_t st_dev;
    _ino_t st_ino;
    unsigned short st_mode;
    short st_nlink;
    short st_uid;
    short st_gid;
    _dev_t st_rdev;
    __extension__ long long st_size;
    __time64_t st_atime;
    __time64_t st_mtime;
    __time64_t st_ctime;
  };
# 263 "C:/msys64/mingw64/include/wchar.h" 2 3




  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wstat32(const wchar_t *_Name,struct _stat32 *_Stat);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wstat32i64(const wchar_t *_Name,struct _stat32i64 *_Stat);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wstat64i32(const wchar_t *_Name,struct _stat64i32 *_Stat);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wstat64(const wchar_t *_Name,struct _stat64 *_Stat);
# 281 "C:/msys64/mingw64/include/wchar.h" 3
  __attribute__ ((__dllimport__)) wchar_t *_cgetws(wchar_t *_Buffer) ;
  __attribute__ ((__dllimport__)) wint_t __attribute__((__cdecl__)) _getwch(void);
  __attribute__ ((__dllimport__)) wint_t __attribute__((__cdecl__)) _getwche(void);
  __attribute__ ((__dllimport__)) wint_t __attribute__((__cdecl__)) _putwch(wchar_t _WCh);
  __attribute__ ((__dllimport__)) wint_t __attribute__((__cdecl__)) _ungetwch(wint_t _WCh);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _cputws(const wchar_t *_String);

  int __attribute__((__cdecl__)) __conio_common_vcwprintf(unsigned long long _Options, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList);
  int __attribute__((__cdecl__)) __conio_common_vcwprintf_p(unsigned long long _Options, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList);
  int __attribute__((__cdecl__)) __conio_common_vcwprintf_s(unsigned long long _Options, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList);
  int __attribute__((__cdecl__)) __conio_common_vcwscanf(unsigned long long _Options, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList);

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vcwprintf(const wchar_t * __restrict__ _Format,va_list _ArgList)
  {
    return __conio_common_vcwprintf((*__local_stdio_printf_options()), _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _cwprintf(const wchar_t * __restrict__ _Format,...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vcwprintf(_Format, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  int __attribute__((__cdecl__)) _cwscanf(const wchar_t * __restrict__ _Format,...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = __conio_common_vcwscanf((*__local_stdio_scanf_options()), _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  int __attribute__((__cdecl__)) _cwscanf_l(const wchar_t * __restrict__ _Format,_locale_t _Locale,...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = __conio_common_vcwscanf((*__local_stdio_scanf_options()), _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vcwprintf_p(const wchar_t * __restrict__ _Format,va_list _ArgList)
  {
    return __conio_common_vcwprintf_p((*__local_stdio_printf_options()), _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _cwprintf_p(const wchar_t * __restrict__ _Format,...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vcwprintf_p(_Format, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vcwprintf_l(const wchar_t * __restrict__ _Format,_locale_t _Locale,va_list _ArgList)
  {
    return __conio_common_vcwprintf((*__local_stdio_printf_options()), _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _cwprintf_l(const wchar_t * __restrict__ _Format,_locale_t _Locale,...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vcwprintf_l(_Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vcwprintf_p_l(const wchar_t * __restrict__ _Format,_locale_t _Locale,va_list _ArgList)
  {
    return __conio_common_vcwprintf_p((*__local_stdio_printf_options()), _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _cwprintf_p_l(const wchar_t * __restrict__ _Format,_locale_t _Locale,...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vcwprintf_p_l(_Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
# 379 "C:/msys64/mingw64/include/wchar.h" 3
  wint_t __attribute__((__cdecl__)) _putwch_nolock(wchar_t _WCh);
  wint_t __attribute__((__cdecl__)) _getwch_nolock(void);
  wint_t __attribute__((__cdecl__)) _getwche_nolock(void);
  wint_t __attribute__((__cdecl__)) _ungetwch_nolock(wint_t _WCh);




  int __attribute__((__cdecl__)) __stdio_common_vswprintf_p(unsigned long long _Options, wchar_t *_Str, size_t _Len, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList);
  int __attribute__((__cdecl__)) __stdio_common_vfwprintf_p(unsigned long long _Options, FILE *_File, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList);





                                                     __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_swscanf(const wchar_t * __restrict__ _Src,const wchar_t * __restrict__ _Format,...);
                                                     __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_vswscanf (const wchar_t * __restrict__ _Str,const wchar_t * __restrict__ Format,va_list argp);
                                                     __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __mingw_wscanf(const wchar_t * __restrict__ _Format,...);
                                                     __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __mingw_vwscanf(const wchar_t * __restrict__ Format, va_list argp);
                                                     __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_fwscanf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,...);
                                                     __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_vfwscanf (FILE * __restrict__ fp, const wchar_t * __restrict__ Format,va_list argp);


                                                      __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_fwprintf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,...);
                                                      __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __mingw_wprintf(const wchar_t * __restrict__ _Format,...);
                                                      __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_vfwprintf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,va_list _ArgList);
                                                     __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __mingw_vwprintf(const wchar_t * __restrict__ _Format,va_list _ArgList);
                                                      __attribute__ ((__nonnull__ (3)))
  int __attribute__((__cdecl__)) __mingw_snwprintf (wchar_t * __restrict__ s, size_t n, const wchar_t * __restrict__ format, ...);
                                                      __attribute__ ((__nonnull__ (3)))
  int __attribute__((__cdecl__)) __mingw_vsnwprintf (wchar_t * __restrict__ , size_t, const wchar_t * __restrict__ , va_list);
                                                      __attribute__ ((__nonnull__ (3)))
  int __attribute__((__cdecl__)) __mingw_swprintf(wchar_t * __restrict__ , size_t, const wchar_t * __restrict__ , ...);
                                                      __attribute__ ((__nonnull__ (3)))
  int __attribute__((__cdecl__)) __mingw_vswprintf(wchar_t * __restrict__ , size_t, const wchar_t * __restrict__ ,va_list);

                                                    __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_swscanf(const wchar_t * __restrict__ _Src,const wchar_t * __restrict__ _Format,...)
  __asm__("swscanf");
                                                    __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_vswscanf(const wchar_t * __restrict__ _Src,const wchar_t * __restrict__ _Format,va_list)
  __asm__("vswscanf");
                                                    __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __ms_wscanf(const wchar_t * __restrict__ _Format,...)
  __asm__("wscanf");
                                                    __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __ms_vwscanf(const wchar_t * __restrict__ _Format, va_list)
  __asm__("vwscanf");
                                                    __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_fwscanf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,...)
  __asm__("fwscanf");
                                                    __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_vfwscanf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,va_list)
  __asm__("vfwscanf");

                                                     __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_fwprintf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,...);


                                                     __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __ms_wprintf(const wchar_t * __restrict__ _Format,...)
  __asm__("wprintf");
                                                    __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_vfwprintf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,va_list _ArgList)
  __asm__("vfwprintf");
                                                    __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __ms_vwprintf(const wchar_t * __restrict__ _Format,va_list _ArgList)
  __asm__("vwprintf");
                                                     __attribute__ ((__nonnull__ (3)))
  int __attribute__((__cdecl__)) __ms_swprintf(wchar_t * __restrict__ , size_t, const wchar_t * __restrict__ , ...)
  __asm__("swprintf");
                                                     __attribute__ ((__nonnull__ (3)))
  int __attribute__((__cdecl__)) __ms_vswprintf(wchar_t * __restrict__ , size_t, const wchar_t * __restrict__ ,va_list)
  __asm__("vswprintf");
                                                     __attribute__ ((__nonnull__ (3)))
  int __attribute__((__cdecl__)) __ms_snwprintf(wchar_t * __restrict__ , size_t, const wchar_t * __restrict__ , ...)
  __asm__("snwprintf");
                                                     __attribute__ ((__nonnull__ (3)))
  int __attribute__((__cdecl__)) __ms_vsnwprintf(wchar_t * __restrict__ , size_t, const wchar_t * __restrict__ , va_list)
  __asm__("vsnwprintf");


  int __attribute__((__cdecl__)) __stdio_common_vswprintf(unsigned long long options, wchar_t *str, size_t len, const wchar_t *format, _locale_t locale, va_list valist);
  int __attribute__((__cdecl__)) __stdio_common_vfwprintf(unsigned long long options, FILE *file, const wchar_t *format, _locale_t locale, va_list valist);
  int __attribute__((__cdecl__)) __stdio_common_vswscanf(unsigned long long options, const wchar_t *input, size_t length, const wchar_t *format, _locale_t locale, va_list valist);
  int __attribute__((__cdecl__)) __stdio_common_vfwscanf(unsigned long long options, FILE *file, const wchar_t *format, _locale_t locale, va_list valist);
# 547 "C:/msys64/mingw64/include/wchar.h" 3
 
  int __attribute__((__cdecl__)) fwscanf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,...);

 
  int __attribute__((__cdecl__)) swscanf(const wchar_t * __restrict__ _Src,const wchar_t * __restrict__ _Format,...);

 
  int __attribute__((__cdecl__)) wscanf(const wchar_t * __restrict__ _Format,...);

  __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) vfwscanf(FILE *__stream, const wchar_t *__format, va_list __local_argv);

  __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) vswscanf(const wchar_t * __restrict__ __source, const wchar_t * __restrict__ __format, va_list __local_argv);

  __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) vwscanf(const wchar_t *__format, va_list __local_argv);

  int __attribute__((__cdecl__)) fwprintf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,...);
  int __attribute__((__cdecl__)) wprintf(const wchar_t * __restrict__ _Format,...);
  int __attribute__((__cdecl__)) vfwprintf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,va_list _ArgList);
  int __attribute__((__cdecl__)) vwprintf(const wchar_t * __restrict__ _Format,va_list _ArgList);
  int __attribute__((__cdecl__)) swprintf(wchar_t * __restrict__ _Dest,size_t _Count,const wchar_t * __restrict__ _Format,...);
  int __attribute__((__cdecl__)) vswprintf(wchar_t * __restrict__ _Dest,size_t _Count,const wchar_t * __restrict__ _Format,va_list _Args);
# 581 "C:/msys64/mingw64/include/wchar.h" 3
  __attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) _wfsopen(const wchar_t *_Filename,const wchar_t *_Mode,int _ShFlag);


  wint_t __attribute__((__cdecl__)) fgetwc(FILE *_File);
  __attribute__ ((__dllimport__)) wint_t __attribute__((__cdecl__)) _fgetwchar(void);
  wint_t __attribute__((__cdecl__)) fputwc(wchar_t _Ch,FILE *_File);
  __attribute__ ((__dllimport__)) wint_t __attribute__((__cdecl__)) _fputwchar(wchar_t _Ch);
  wint_t __attribute__((__cdecl__)) getwc(FILE *_File);
  wint_t __attribute__((__cdecl__)) getwchar(void);
  wint_t __attribute__((__cdecl__)) putwc(wchar_t _Ch,FILE *_File);
  wint_t __attribute__((__cdecl__)) putwchar(wchar_t _Ch);
  wint_t __attribute__((__cdecl__)) ungetwc(wint_t _Ch,FILE *_File);
  wchar_t *__attribute__((__cdecl__)) fgetws(wchar_t * __restrict__ _Dst,int _SizeInWords,FILE * __restrict__ _File);
  int __attribute__((__cdecl__)) fputws(const wchar_t * __restrict__ _Str,FILE * __restrict__ _File);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _getws(wchar_t *_String) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _putws(const wchar_t *_Str);

  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _scwprintf(const wchar_t * __restrict__ _Format,...);







  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _snwprintf(wchar_t * __restrict__ _Dest,size_t _Count,const wchar_t * __restrict__ _Format,...) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _vsnwprintf(wchar_t * __restrict__ _Dest,size_t _Count,const wchar_t * __restrict__ _Format,va_list _Args) ;




       
       


  int __attribute__((__cdecl__)) snwprintf (wchar_t * __restrict__ s, size_t n, const wchar_t * __restrict__ format, ...);
  int __attribute__((__cdecl__)) vsnwprintf (wchar_t * __restrict__ s, size_t n, const wchar_t * __restrict__ format, va_list arg);
       
       






  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vfwscanf_l(FILE *_File, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vfwscanf((*__local_stdio_scanf_options()), _File, _Format, _Locale, _ArgList);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vwscanf_l(const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return _vfwscanf_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _fwscanf_l(FILE *_File, const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfwscanf_l(_File, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _wscanf_l(const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfwscanf_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsnwscanf_l(const wchar_t *_Src, size_t _MaxCount, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vswscanf((*__local_stdio_scanf_options()), _Src, _MaxCount, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snwscanf_l(const wchar_t *_Src, size_t _MaxCount, const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsnwscanf_l(_Src, _MaxCount, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snwscanf(const wchar_t *_Src, size_t _MaxCount, const wchar_t *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vsnwscanf_l(_Src, _MaxCount, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vswscanf_l(const wchar_t *_Src, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vswscanf((*__local_stdio_scanf_options()), _Src, (size_t)-1, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _swscanf_l(const wchar_t *_Src, const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vswscanf_l(_Src, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vfwprintf_p_l(FILE *_File, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vfwprintf_p((*__local_stdio_printf_options()), _File, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vwprintf_p_l(const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return _vfwprintf_p_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vfwprintf_p(FILE *_File, const wchar_t *_Format, va_list _ArgList)
  {
    return _vfwprintf_p_l(_File, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vwprintf_p(const wchar_t *_Format, va_list _ArgList)
  {
    return _vfwprintf_p_l((__acrt_iob_func(1)), _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _fwprintf_p_l(FILE *_File, const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfwprintf_p_l(_File, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _wprintf_p_l(const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfwprintf_p_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _fwprintf_p(FILE *_File, const wchar_t *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfwprintf_p_l(_File, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _wprintf_p(const wchar_t *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfwprintf_p_l((__acrt_iob_func(1)), _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vfwprintf_l(FILE *_File, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vfwprintf((*__local_stdio_printf_options()), _File, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vwprintf_l(const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return _vfwprintf_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _fwprintf_l(FILE *_File, const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfwprintf_l(_File, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _wprintf_l(const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfwprintf_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vswprintf_p_l(wchar_t *_DstBuf, size_t _MaxCount, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vswprintf_p((*__local_stdio_printf_options()), _DstBuf, _MaxCount, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vswprintf_p(wchar_t *_DstBuf, size_t _MaxCount, const wchar_t *_Format, va_list _ArgList)
  {
    return _vswprintf_p_l(_DstBuf, _MaxCount, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _swprintf_p_l(wchar_t *_DstBuf, size_t _MaxCount, const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vswprintf_p_l(_DstBuf, _MaxCount, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _swprintf_p(wchar_t *_DstBuf, size_t _MaxCount, const wchar_t *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vswprintf_p_l(_DstBuf, _MaxCount, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsnwprintf_l(wchar_t *_DstBuf, size_t _MaxCount, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vswprintf((*__local_stdio_printf_options()) | 0x0001ULL, _DstBuf, _MaxCount, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snwprintf_l(wchar_t *_DstBuf, size_t _MaxCount, const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsnwprintf_l(_DstBuf, _MaxCount, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vscwprintf_p_l(const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vswprintf_p((*__local_stdio_printf_options()) | 0x0002ULL, ((void *)0), 0, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vscwprintf_p(const wchar_t *_Format, va_list _ArgList)
  {
    return _vscwprintf_p_l(_Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _scwprintf_p_l(const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vscwprintf_p_l(_Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _scwprintf_p(const wchar_t *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vscwprintf_p_l(_Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vscwprintf_l(const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vswprintf((*__local_stdio_printf_options()) | 0x0002ULL, ((void *)0), 0, _Format, _Locale, _ArgList);
  }

  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _vscwprintf(const wchar_t * __restrict__ _Format,va_list _ArgList);

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _scwprintf_l(const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vscwprintf_l(_Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vswprintf_c_l(wchar_t *_DstBuf, size_t _MaxCount, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vswprintf((*__local_stdio_printf_options()), _DstBuf, _MaxCount, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) __vswprintf_l(wchar_t *_DstBuf, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return _vswprintf_c_l(_DstBuf, (size_t)-1, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vswprintf_l(wchar_t *_DstBuf, size_t _MaxCount, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return _vswprintf_c_l(_DstBuf, _MaxCount, _Format, _Locale, _ArgList);
  }
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _vswprintf(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Format,va_list _Args);
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _swprintf_c_l(wchar_t *_DstBuf, size_t _MaxCount, const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vswprintf_c_l(_DstBuf, _MaxCount, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) __swprintf_l(wchar_t *_DstBuf, const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vswprintf_c_l(_DstBuf, (size_t)-1, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _swprintf(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Format,...);
# 923 "C:/msys64/mingw64/include/wchar.h" 3
# 1 "C:/msys64/mingw64/include/swprintf.inl" 1 3
# 924 "C:/msys64/mingw64/include/wchar.h" 2 3
# 937 "C:/msys64/mingw64/include/wchar.h" 3
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wtempnam(const wchar_t *_Directory,const wchar_t *_FilePrefix);
# 951 "C:/msys64/mingw64/include/wchar.h" 3
  __attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) _wfdopen(int _FileHandle ,const wchar_t *_Mode);
  __attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) _wfopen(const wchar_t * __restrict__ _Filename,const wchar_t * __restrict__ _Mode) ;
  __attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) _wfreopen(const wchar_t * __restrict__ _Filename,const wchar_t * __restrict__ _Mode,FILE * __restrict__ _OldFile) ;



  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _wperror(const wchar_t *_ErrMsg);

  __attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) _wpopen(const wchar_t *_Command,const wchar_t *_Mode);



  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wremove(const wchar_t *_Filename);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wtmpnam(wchar_t *_Buffer);

  __attribute__ ((__dllimport__)) wint_t __attribute__((__cdecl__)) _fgetwc_nolock(FILE *_File);
  __attribute__ ((__dllimport__)) wint_t __attribute__((__cdecl__)) _fputwc_nolock(wchar_t _Ch,FILE *_File);
  __attribute__ ((__dllimport__)) wint_t __attribute__((__cdecl__)) _ungetwc_nolock(wint_t _Ch,FILE *_File);
# 993 "C:/msys64/mingw64/include/wchar.h" 3
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _itow(int _Value,wchar_t *_Dest,int _Radix) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _ltow(long _Value,wchar_t *_Dest,int _Radix) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _ultow(unsigned long _Value,wchar_t *_Dest,int _Radix) ;
  __attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) _wcstod_l(const wchar_t * __restrict__ _Str,wchar_t ** __restrict__ _EndPtr,_locale_t _Locale);

  double __attribute__((__cdecl__)) __mingw_wcstod(const wchar_t * __restrict__ _Str,wchar_t ** __restrict__ _EndPtr);
  float __attribute__((__cdecl__)) __mingw_wcstof(const wchar_t * __restrict__ nptr, wchar_t ** __restrict__ endptr);
  long double __attribute__((__cdecl__)) __mingw_wcstold(const wchar_t * __restrict__, wchar_t ** __restrict__);
# 1013 "C:/msys64/mingw64/include/wchar.h" 3
  double __attribute__((__cdecl__)) wcstod(const wchar_t * __restrict__ _Str,wchar_t ** __restrict__ _EndPtr);
  float __attribute__((__cdecl__)) wcstof(const wchar_t * __restrict__ nptr, wchar_t ** __restrict__ endptr);


  long double __attribute__((__cdecl__)) wcstold (const wchar_t * __restrict__, wchar_t ** __restrict__);

  long __attribute__((__cdecl__)) wcstol(const wchar_t * __restrict__ _Str,wchar_t ** __restrict__ _EndPtr,int _Radix);
  __attribute__ ((__dllimport__)) long __attribute__((__cdecl__)) _wcstol_l(const wchar_t * __restrict__ _Str,wchar_t ** __restrict__ _EndPtr,int _Radix,_locale_t _Locale);
  unsigned long __attribute__((__cdecl__)) wcstoul(const wchar_t * __restrict__ _Str,wchar_t ** __restrict__ _EndPtr,int _Radix);
  __attribute__ ((__dllimport__)) unsigned long __attribute__((__cdecl__)) _wcstoul_l(const wchar_t * __restrict__ _Str,wchar_t ** __restrict__ _EndPtr,int _Radix,_locale_t _Locale);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wgetenv(const wchar_t *_VarName) ;




  __attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) _wtof(const wchar_t *_Str);
  __attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) _wtof_l(const wchar_t *_Str,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wtoi(const wchar_t *_Str);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wtoi_l(const wchar_t *_Str,_locale_t _Locale);
  __attribute__ ((__dllimport__)) long __attribute__((__cdecl__)) _wtol(const wchar_t *_Str);
  __attribute__ ((__dllimport__)) long __attribute__((__cdecl__)) _wtol_l(const wchar_t *_Str,_locale_t _Locale);

  __extension__ __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _i64tow(long long _Val,wchar_t *_DstBuf,int _Radix) ;
  __extension__ __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _ui64tow(unsigned long long _Val,wchar_t *_DstBuf,int _Radix);
  __extension__ __attribute__ ((__dllimport__)) long long __attribute__((__cdecl__)) _wtoi64(const wchar_t *_Str);
  __extension__ __attribute__ ((__dllimport__)) long long __attribute__((__cdecl__)) _wtoi64_l(const wchar_t *_Str,_locale_t _Locale);
  __extension__ __attribute__ ((__dllimport__)) long long __attribute__((__cdecl__)) _wcstoi64(const wchar_t *_Str,wchar_t **_EndPtr,int _Radix);
  __extension__ __attribute__ ((__dllimport__)) long long __attribute__((__cdecl__)) _wcstoi64_l(const wchar_t *_Str,wchar_t **_EndPtr,int _Radix,_locale_t _Locale);
  __extension__ __attribute__ ((__dllimport__)) unsigned long long __attribute__((__cdecl__)) _wcstoui64(const wchar_t *_Str,wchar_t **_EndPtr,int _Radix);
  __extension__ __attribute__ ((__dllimport__)) unsigned long long __attribute__((__cdecl__)) _wcstoui64_l(const wchar_t *_Str,wchar_t **_EndPtr,int _Radix,_locale_t _Locale);
# 1052 "C:/msys64/mingw64/include/wchar.h" 3
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wfullpath(wchar_t *_FullPath,const wchar_t *_Path,size_t _SizeInWords);



  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _wmakepath(wchar_t *_ResultPath,const wchar_t *_Drive,const wchar_t *_Dir,const wchar_t *_Filename,const wchar_t *_Ext);




  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wputenv(const wchar_t *_EnvString);
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _wsearchenv(const wchar_t *_Filename,const wchar_t *_EnvVar,wchar_t *_ResultPath) ;
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _wsplitpath(const wchar_t *_FullPath,wchar_t *_Drive,wchar_t *_Dir,wchar_t *_Filename,wchar_t *_Ext) ;
# 1147 "C:/msys64/mingw64/include/wchar.h" 3
  struct tm {
    int tm_sec;
    int tm_min;
    int tm_hour;
    int tm_mday;
    int tm_mon;
    int tm_year;
    int tm_wday;
    int tm_yday;
    int tm_isdst;
  };





  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wasctime(const struct tm *_Tm);
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _wasctime_s (wchar_t *_Buf,size_t _SizeInWords,const struct tm *_Tm);
  wchar_t *__attribute__((__cdecl__)) _wctime32(const __time32_t *_Time) ;
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _wctime32_s (wchar_t *_Buf,size_t _SizeInWords,const __time32_t *_Time);
  size_t __attribute__((__cdecl__)) wcsftime(wchar_t * __restrict__ _Buf,size_t _SizeInWords,const wchar_t * __restrict__ _Format,const struct tm * __restrict__ _Tm);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _wcsftime_l(wchar_t * __restrict__ _Buf,size_t _SizeInWords,const wchar_t * __restrict__ _Format,const struct tm * __restrict__ _Tm,_locale_t _Locale);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wstrdate(wchar_t *_Buffer) ;
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _wstrdate_s (wchar_t *_Buf,size_t _SizeInWords);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wstrtime(wchar_t *_Buffer) ;
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _wstrtime_s (wchar_t *_Buf,size_t _SizeInWords);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wctime64(const __time64_t *_Time) ;
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _wctime64_s (wchar_t *_Buf,size_t _SizeInWords,const __time64_t *_Time);



  wchar_t *__attribute__((__cdecl__)) _wctime(const time_t *_Time) ;
# 1190 "C:/msys64/mingw64/include/wchar.h" 3
  errno_t __attribute__((__cdecl__)) _wctime_s(wchar_t *, size_t, const time_t *);
# 1203 "C:/msys64/mingw64/include/wchar.h" 3
  typedef struct _Mbstatet {
    unsigned long _Wchar;
    unsigned short _Byte, _State;
  } _Mbstatet;
  typedef _Mbstatet mbstate_t;



  typedef wchar_t _Wint_t;

  wint_t __attribute__((__cdecl__)) btowc(int);
  int __attribute__((__cdecl__)) mbsinit(const mbstate_t *ps);
  size_t __attribute__((__cdecl__)) mbrlen(const char * __restrict__ _Ch,size_t _SizeInBytes,mbstate_t * __restrict__ _State);
  size_t __attribute__((__cdecl__)) mbrtowc(wchar_t * __restrict__ _DstCh,const char * __restrict__ _SrcCh,size_t _SizeInBytes,mbstate_t * __restrict__ _State);
  size_t __attribute__((__cdecl__)) mbsrtowcs(wchar_t * __restrict__ _Dest,const char ** __restrict__ _PSrc,size_t _Count,mbstate_t * __restrict__ _State) ;
  size_t __attribute__((__cdecl__)) wcrtomb(char * __restrict__ _Dest,wchar_t _Source,mbstate_t * __restrict__ _State) ;
  size_t __attribute__((__cdecl__)) wcsrtombs(char * __restrict__ _Dest,const wchar_t ** __restrict__ _PSource,size_t _Count,mbstate_t * __restrict__ _State) ;
  int __attribute__((__cdecl__)) wctob(wint_t _WCh);


  wchar_t *__attribute__((__cdecl__)) wmemset(wchar_t *s, wchar_t c, size_t n);
  wchar_t *__attribute__((__cdecl__)) wmemchr(const wchar_t *s, wchar_t c, size_t n);
  int __attribute__((__cdecl__)) wmemcmp(const wchar_t *s1, const wchar_t *s2,size_t n);
  wchar_t *__attribute__((__cdecl__)) wmemcpy(wchar_t * __restrict__ s1,const wchar_t * __restrict__ s2,size_t n) ;
  wchar_t * __attribute__((__cdecl__)) wmempcpy (wchar_t *_Dst, const wchar_t *_Src, size_t _Size);
  wchar_t *__attribute__((__cdecl__)) wmemmove(wchar_t *s1, const wchar_t *s2, size_t n) ;
  int __attribute__((__cdecl__)) fwide(FILE *stream,int mode);
  __extension__ long long __attribute__((__cdecl__)) wcstoll(const wchar_t * __restrict__ nptr,wchar_t ** __restrict__ endptr, int base);
  __extension__ unsigned long long __attribute__((__cdecl__)) wcstoull(const wchar_t * __restrict__ nptr,wchar_t ** __restrict__ endptr, int base);


  void *__attribute__((__cdecl__)) memmove(void *_Dst,const void *_Src,size_t _MaxCount);
  void *__attribute__((__cdecl__)) memcpy(void * __restrict__ _Dst,const void * __restrict__ _Src,size_t _MaxCount) ;
# 1284 "C:/msys64/mingw64/include/wchar.h" 3
int __attribute__((__cdecl__)) __mingw_str_wide_utf8 (const wchar_t * const wptr, char **mbptr, size_t * buflen);
# 1298 "C:/msys64/mingw64/include/wchar.h" 3
int __attribute__((__cdecl__)) __mingw_str_utf8_wide (const char *const mbptr, wchar_t ** wptr, size_t * buflen);
# 1307 "C:/msys64/mingw64/include/wchar.h" 3
void __attribute__((__cdecl__)) __mingw_str_free(void *ptr);







#pragma pack(pop)

# 1 "C:/msys64/mingw64/include/sec_api/wchar_s.h" 1 3
# 9 "C:/msys64/mingw64/include/sec_api/wchar_s.h" 3
# 1 "C:/msys64/mingw64/include/wchar.h" 1 3
# 10 "C:/msys64/mingw64/include/sec_api/wchar_s.h" 2 3
# 26 "C:/msys64/mingw64/include/sec_api/wchar_s.h" 3
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _waccess_s (const wchar_t *_Filename,int _AccessMode);
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _wmktemp_s (wchar_t *_TemplateName,size_t _SizeInWords);




  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _cgetws_s (wchar_t *_Buffer,size_t _SizeInWords,size_t *_SizeRead);
  __attribute__((dllimport)) int __attribute__((__cdecl__)) _cwprintf_s (const wchar_t *_Format,...);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _cwscanf_s(const wchar_t *_Format,...);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _cwscanf_s_l(const wchar_t *_Format,_locale_t _Locale,...);
  __attribute__((dllimport)) int __attribute__((__cdecl__)) _vcwprintf_s (const wchar_t *_Format,va_list _ArgList);
  __attribute__((dllimport)) int __attribute__((__cdecl__)) _cwprintf_s_l (const wchar_t *_Format,_locale_t _Locale,...);
  __attribute__((dllimport)) int __attribute__((__cdecl__)) _vcwprintf_s_l (const wchar_t *_Format,_locale_t _Locale,va_list _ArgList);




  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _getws_s(wchar_t *_Str,size_t _SizeInWords);
 


  int __attribute__((__cdecl__)) __stdio_common_vswprintf_s(unsigned long long _Options, wchar_t *_Str, size_t _Len, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList);
  int __attribute__((__cdecl__)) __stdio_common_vsnwprintf_s(unsigned long long _Options, wchar_t *_Str, size_t _Len, size_t _MaxCount, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList);
  int __attribute__((__cdecl__)) __stdio_common_vfwprintf_s(unsigned long long _Options, FILE *_File, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList);

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vfwscanf_s_l(FILE *_File, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vfwscanf((*__local_stdio_scanf_options()) | 0x0001ULL, _File, _Format, _Locale, _ArgList);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vfwscanf_s(FILE* _File, const wchar_t *_Format, va_list _ArgList)
  {
    return _vfwscanf_s_l(_File, _Format, ((void *)0), _ArgList);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vwscanf_s_l(const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return _vfwscanf_s_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vwscanf_s(const wchar_t *_Format, va_list _ArgList)
  {
    return _vfwscanf_s_l((__acrt_iob_func(0)), _Format, ((void *)0), _ArgList);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _fwscanf_s_l(FILE *_File, const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfwscanf_s_l(_File, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) fwscanf_s(FILE *_File, const wchar_t *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfwscanf_s_l(_File, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _wscanf_s_l(const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfwscanf_s_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) wscanf_s(const wchar_t *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfwscanf_s_l((__acrt_iob_func(0)), _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vswscanf_s_l(const wchar_t *_Src, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vswscanf((*__local_stdio_scanf_options()) | 0x0001ULL, _Src, (size_t)-1, _Format, _Locale, _ArgList);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vswscanf_s(const wchar_t *_Src, const wchar_t *_Format, va_list _ArgList)
  {
    return _vswscanf_s_l(_Src, _Format, ((void *)0), _ArgList);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _swscanf_s_l(const wchar_t *_Src, const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vswscanf_s_l(_Src, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) swscanf_s(const wchar_t *_Src, const wchar_t *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vswscanf_s_l(_Src, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsnwscanf_s_l(const wchar_t *_Src, size_t _MaxCount, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vswscanf((*__local_stdio_scanf_options()) | 0x0001ULL, _Src, _MaxCount, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snwscanf_s_l(const wchar_t *_Src, size_t _MaxCount, const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsnwscanf_s_l(_Src, _MaxCount, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snwscanf_s(const wchar_t *_Src, size_t _MaxCount, const wchar_t *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vsnwscanf_s_l(_Src, _MaxCount, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vfwprintf_s_l(FILE *_File, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vfwprintf_s((*__local_stdio_printf_options()), _File, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vwprintf_s_l(const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return _vfwprintf_s_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vfwprintf_s(FILE *_File, const wchar_t *_Format, va_list _ArgList)
  {
    return _vfwprintf_s_l(_File, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vwprintf_s(const wchar_t *_Format, va_list _ArgList)
  {
    return _vfwprintf_s_l((__acrt_iob_func(1)), _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _fwprintf_s_l(FILE *_File, const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfwprintf_s_l(_File, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _wprintf_s_l(const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfwprintf_s_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) fwprintf_s(FILE *_File, const wchar_t *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfwprintf_s_l(_File, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) wprintf_s(const wchar_t *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfwprintf_s_l((__acrt_iob_func(1)), _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vswprintf_s_l(wchar_t *_DstBuf, size_t _DstSize, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vswprintf_s((*__local_stdio_printf_options()), _DstBuf, _DstSize, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vswprintf_s(wchar_t *_DstBuf, size_t _DstSize, const wchar_t *_Format, va_list _ArgList)
  {
    return _vswprintf_s_l(_DstBuf, _DstSize, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _swprintf_s_l(wchar_t *_DstBuf, size_t _DstSize, const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vswprintf_s_l(_DstBuf, _DstSize, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) swprintf_s(wchar_t *_DstBuf, size_t _DstSize, const wchar_t *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vswprintf_s_l(_DstBuf, _DstSize, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsnwprintf_s_l(wchar_t *_DstBuf, size_t _DstSize, size_t _MaxCount, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vsnwprintf_s((*__local_stdio_printf_options()), _DstBuf, _DstSize, _MaxCount, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsnwprintf_s(wchar_t *_DstBuf, size_t _DstSize, size_t _MaxCount, const wchar_t *_Format, va_list _ArgList)
  {
    return _vsnwprintf_s_l(_DstBuf, _DstSize, _MaxCount, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snwprintf_s_l(wchar_t *_DstBuf, size_t _DstSize, size_t _MaxCount, const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsnwprintf_s_l(_DstBuf, _DstSize, _MaxCount, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snwprintf_s(wchar_t *_DstBuf, size_t _DstSize, size_t _MaxCount, const wchar_t *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vsnwprintf_s_l(_DstBuf, _DstSize, _MaxCount, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
# 302 "C:/msys64/mingw64/include/sec_api/wchar_s.h" 3
 
 
 
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wfopen_s(FILE **_File,const wchar_t *_Filename,const wchar_t *_Mode);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wfreopen_s(FILE **_File,const wchar_t *_Filename,const wchar_t *_Mode,FILE *_OldFile);

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wtmpnam_s(wchar_t *_DstBuf,size_t _SizeInWords);
 
# 360 "C:/msys64/mingw64/include/sec_api/wchar_s.h" 3
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _wasctime_s (wchar_t *_Buf,size_t _SizeInWords,const struct tm *_Tm);
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _wctime32_s (wchar_t *_Buf,size_t _SizeInWords,const __time32_t *_Time);
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _wstrdate_s (wchar_t *_Buf,size_t _SizeInWords);
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _wstrtime_s (wchar_t *_Buf,size_t _SizeInWords);
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _wctime64_s (wchar_t *_Buf,size_t _SizeInWords,const __time64_t *_Time);
# 375 "C:/msys64/mingw64/include/sec_api/wchar_s.h" 3
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) mbsrtowcs_s(size_t *_Retval,wchar_t *_Dst,size_t _SizeInWords,const char **_PSrc,size_t _N,mbstate_t *_State);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcrtomb_s(size_t *_Retval,char *_Dst,size_t _SizeInBytes,wchar_t _Ch,mbstate_t *_State);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcsrtombs_s(size_t *_Retval,char *_Dst,size_t _SizeInBytes,const wchar_t **_Src,size_t _Size,mbstate_t *_State);
 

  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) wmemcpy_s (wchar_t *_dest,size_t _numberOfElements,const wchar_t *_src,size_t _count);
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) wmemmove_s(wchar_t *_dest,size_t _numberOfElements,const wchar_t *_src,size_t _count);
# 1318 "C:/msys64/mingw64/include/wchar.h" 2 3
# 54 "include/SDL3/SDL_stdinc.h" 2
# 80 "include/SDL3/SDL_stdinc.h"
# 1 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/15.2.0/include/stdint.h" 1 3 4
# 9 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/15.2.0/include/stdint.h" 3 4
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpedantic"
# 1 "C:/msys64/mingw64/include/stdint.h" 1 3 4
# 32 "C:/msys64/mingw64/include/stdint.h" 3 4
# 1 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/15.2.0/include/stddef.h" 1 3 4
# 1 "C:/msys64/mingw64/include/stddef.h" 1 3 4
# 18 "C:/msys64/mingw64/include/stddef.h" 3 4
  __attribute__ ((__dllimport__)) extern int *__attribute__((__cdecl__)) _errno(void);

  errno_t __attribute__((__cdecl__)) _set_errno(int _Value);
  errno_t __attribute__((__cdecl__)) _get_errno(int *_Value);


  __attribute__ ((__dllimport__)) extern unsigned long __attribute__((__cdecl__)) __threadid(void);

  __attribute__ ((__dllimport__)) extern uintptr_t __attribute__((__cdecl__)) __threadhandle(void);
# 2 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/15.2.0/include/stddef.h" 2 3 4
# 441 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/15.2.0/include/stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
# 452 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/15.2.0/include/stddef.h" 3 4
} max_align_t;
# 466 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/15.2.0/include/stddef.h" 3 4
  typedef __typeof__(nullptr) nullptr_t;
# 33 "C:/msys64/mingw64/include/stdint.h" 2 3 4


typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef short int16_t;
typedef unsigned short uint16_t;
typedef int int32_t;
typedef unsigned uint32_t;
__extension__ typedef long long int64_t;
__extension__ typedef unsigned long long uint64_t;


typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int_least16_t;
typedef unsigned short uint_least16_t;
typedef int int_least32_t;
typedef unsigned uint_least32_t;
__extension__ typedef long long int_least64_t;
__extension__ typedef unsigned long long uint_least64_t;





typedef signed char int_fast8_t;
typedef unsigned char uint_fast8_t;
typedef short int_fast16_t;
typedef unsigned short uint_fast16_t;
typedef int int_fast32_t;
typedef unsigned int uint_fast32_t;
__extension__ typedef long long int_fast64_t;
__extension__ typedef unsigned long long uint_fast64_t;


__extension__ typedef long long intmax_t;
__extension__ typedef unsigned long long uintmax_t;
# 12 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/15.2.0/include/stdint.h" 2 3 4
#pragma GCC diagnostic pop
# 81 "include/SDL3/SDL_stdinc.h" 2




# 1 "C:/msys64/mingw64/include/inttypes.h" 1 3
# 14 "C:/msys64/mingw64/include/inttypes.h" 3
# 1 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/15.2.0/include/stddef.h" 1 3 4
# 1 "C:/msys64/mingw64/include/stddef.h" 1 3 4
# 2 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/15.2.0/include/stddef.h" 2 3 4
# 15 "C:/msys64/mingw64/include/inttypes.h" 2 3





typedef struct {
 intmax_t quot;
 intmax_t rem;
 } imaxdiv_t;
# 327 "C:/msys64/mingw64/include/inttypes.h" 3
intmax_t __attribute__((__cdecl__)) imaxabs (intmax_t j);




imaxdiv_t __attribute__((__cdecl__)) imaxdiv (intmax_t numer, intmax_t denom);



intmax_t __attribute__((__cdecl__)) strtoimax (const char* __restrict__ nptr,
                            char** __restrict__ endptr, int base);
uintmax_t __attribute__((__cdecl__)) strtoumax (const char* __restrict__ nptr,
        char** __restrict__ endptr, int base);

intmax_t __attribute__((__cdecl__)) wcstoimax (const wchar_t* __restrict__ nptr,
                            wchar_t** __restrict__ endptr, int base);
uintmax_t __attribute__((__cdecl__)) wcstoumax (const wchar_t* __restrict__ nptr,
        wchar_t** __restrict__ endptr, int base);
# 86 "include/SDL3/SDL_stdinc.h" 2
# 97 "include/SDL3/SDL_stdinc.h"
# 1 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/15.2.0/include/stdbool.h" 1 3 4
# 98 "include/SDL3/SDL_stdinc.h" 2
# 443 "include/SDL3/SDL_stdinc.h"

# 443 "include/SDL3/SDL_stdinc.h"
typedef int8_t Sint8;
# 452 "include/SDL3/SDL_stdinc.h"
typedef uint8_t Uint8;
# 461 "include/SDL3/SDL_stdinc.h"
typedef int16_t Sint16;
# 470 "include/SDL3/SDL_stdinc.h"
typedef uint16_t Uint16;
# 479 "include/SDL3/SDL_stdinc.h"
typedef int32_t Sint32;
# 488 "include/SDL3/SDL_stdinc.h"
typedef uint32_t Uint32;
# 499 "include/SDL3/SDL_stdinc.h"
typedef int64_t Sint64;
# 510 "include/SDL3/SDL_stdinc.h"
typedef uint64_t Uint64;
# 527 "include/SDL3/SDL_stdinc.h"
typedef Sint64 SDL_Time;
# 810 "include/SDL3/SDL_stdinc.h"
static_assert(sizeof(long long) == 8, "sizeof(long long) == 8");
# 1175 "include/SDL3/SDL_stdinc.h"
static_assert(sizeof(bool) == 1, "sizeof(bool) == 1");
static_assert(sizeof(Uint8) == 1, "sizeof(Uint8) == 1");
static_assert(sizeof(Sint8) == 1, "sizeof(Sint8) == 1");
static_assert(sizeof(Uint16) == 2, "sizeof(Uint16) == 2");
static_assert(sizeof(Sint16) == 2, "sizeof(Sint16) == 2");
static_assert(sizeof(Uint32) == 4, "sizeof(Uint32) == 4");
static_assert(sizeof(Sint32) == 4, "sizeof(Sint32) == 4");
static_assert(sizeof(Uint64) == 8, "sizeof(Uint64) == 8");
static_assert(sizeof(Sint64) == 8, "sizeof(Sint64) == 8");

static_assert(sizeof(Uint64) <= sizeof(unsigned long long), "sizeof(Uint64) <= sizeof(unsigned long long)");
static_assert(sizeof(size_t) <= sizeof(unsigned long long), "sizeof(size_t) <= sizeof(unsigned long long)");

typedef struct SDL_alignment_test
{
    Uint8 a;
    void *b;
} SDL_alignment_test;
static_assert(sizeof(SDL_alignment_test) == (2 * sizeof(void *)), "sizeof(SDL_alignment_test) == (2 * sizeof(void *))");
static_assert(((int)(~((int)(0)))) == ((int)(-1)), "SDL_static_cast(int, ~SDL_static_cast(int, 0)) == SDL_static_cast(int, -1)");
# 1208 "include/SDL3/SDL_stdinc.h"
typedef enum SDL_DUMMY_ENUM
{
    DUMMY_ENUM_VALUE
} SDL_DUMMY_ENUM;

static_assert(sizeof(SDL_DUMMY_ENUM) == sizeof(int), "sizeof(SDL_DUMMY_ENUM) == sizeof(int)");




# 1 "include/SDL3/SDL_begin_code.h" 1
# 1219 "include/SDL3/SDL_stdinc.h" 2
# 1347 "include/SDL3/SDL_stdinc.h"
extern __attribute__((malloc)) void * SDL_malloc(size_t size);
# 1372 "include/SDL3/SDL_stdinc.h"
extern __attribute__((malloc)) __attribute__((alloc_size(1, 2))) void * SDL_calloc(size_t nmemb, size_t size);
# 1412 "include/SDL3/SDL_stdinc.h"
extern __attribute__((alloc_size(2))) void * SDL_realloc(void *mem, size_t size);
# 1432 "include/SDL3/SDL_stdinc.h"
extern void SDL_free(void *mem);
# 1451 "include/SDL3/SDL_stdinc.h"
typedef void *( *SDL_malloc_func)(size_t size);
# 1472 "include/SDL3/SDL_stdinc.h"
typedef void *( *SDL_calloc_func)(size_t nmemb, size_t size);
# 1493 "include/SDL3/SDL_stdinc.h"
typedef void *( *SDL_realloc_func)(void *mem, size_t size);
# 1511 "include/SDL3/SDL_stdinc.h"
typedef void ( *SDL_free_func)(void *mem);
# 1530 "include/SDL3/SDL_stdinc.h"
extern void SDL_GetOriginalMemoryFunctions(SDL_malloc_func *malloc_func,
                                                            SDL_calloc_func *calloc_func,
                                                            SDL_realloc_func *realloc_func,
                                                            SDL_free_func *free_func);
# 1552 "include/SDL3/SDL_stdinc.h"
extern void SDL_GetMemoryFunctions(SDL_malloc_func *malloc_func,
                                                    SDL_calloc_func *calloc_func,
                                                    SDL_realloc_func *realloc_func,
                                                    SDL_free_func *free_func);
# 1583 "include/SDL3/SDL_stdinc.h"
extern bool SDL_SetMemoryFunctions(SDL_malloc_func malloc_func,
                                                            SDL_calloc_func calloc_func,
                                                            SDL_realloc_func realloc_func,
                                                            SDL_free_func free_func);
# 1610 "include/SDL3/SDL_stdinc.h"
extern __attribute__((malloc)) void * SDL_aligned_alloc(size_t alignment, size_t size);
# 1628 "include/SDL3/SDL_stdinc.h"
extern void SDL_aligned_free(void *mem);
# 1640 "include/SDL3/SDL_stdinc.h"
extern int SDL_GetNumAllocations(void);
# 1655 "include/SDL3/SDL_stdinc.h"
typedef struct SDL_Environment SDL_Environment;
# 1678 "include/SDL3/SDL_stdinc.h"
extern SDL_Environment * SDL_GetEnvironment(void);
# 1700 "include/SDL3/SDL_stdinc.h"
extern SDL_Environment * SDL_CreateEnvironment(bool populated);
# 1720 "include/SDL3/SDL_stdinc.h"
extern const char * SDL_GetEnvironmentVariable(SDL_Environment *env, const char *name);
# 1741 "include/SDL3/SDL_stdinc.h"
extern char ** SDL_GetEnvironmentVariables(SDL_Environment *env);
# 1765 "include/SDL3/SDL_stdinc.h"
extern bool SDL_SetEnvironmentVariable(SDL_Environment *env, const char *name, const char *value, bool overwrite);
# 1786 "include/SDL3/SDL_stdinc.h"
extern bool SDL_UnsetEnvironmentVariable(SDL_Environment *env, const char *name);
# 1800 "include/SDL3/SDL_stdinc.h"
extern void SDL_DestroyEnvironment(SDL_Environment *env);
# 1815 "include/SDL3/SDL_stdinc.h"
extern const char * SDL_getenv(const char *name);
# 1834 "include/SDL3/SDL_stdinc.h"
extern const char * SDL_getenv_unsafe(const char *name);
# 1852 "include/SDL3/SDL_stdinc.h"
extern int SDL_setenv_unsafe(const char *name, const char *value, int overwrite);
# 1867 "include/SDL3/SDL_stdinc.h"
extern int SDL_unsetenv_unsafe(const char *name);
# 1883 "include/SDL3/SDL_stdinc.h"
typedef int ( *SDL_CompareCallback)(const void *a, const void *b);
# 1929 "include/SDL3/SDL_stdinc.h"
extern void SDL_qsort(void *base, size_t nmemb, size_t size, SDL_CompareCallback compare);
# 1979 "include/SDL3/SDL_stdinc.h"
extern void * SDL_bsearch(const void *key, const void *base, size_t nmemb, size_t size, SDL_CompareCallback compare);
# 1996 "include/SDL3/SDL_stdinc.h"
typedef int ( *SDL_CompareCallback_r)(void *userdata, const void *a, const void *b);
# 2049 "include/SDL3/SDL_stdinc.h"
extern void SDL_qsort_r(void *base, size_t nmemb, size_t size, SDL_CompareCallback_r compare, void *userdata);
# 2107 "include/SDL3/SDL_stdinc.h"
extern void * SDL_bsearch_r(const void *key, const void *base, size_t nmemb, size_t size, SDL_CompareCallback_r compare, void *userdata);
# 2119 "include/SDL3/SDL_stdinc.h"
extern int SDL_abs(int x);
# 2194 "include/SDL3/SDL_stdinc.h"
extern int SDL_isalpha(int x);
# 2209 "include/SDL3/SDL_stdinc.h"
extern int SDL_isalnum(int x);
# 2224 "include/SDL3/SDL_stdinc.h"
extern int SDL_isblank(int x);
# 2239 "include/SDL3/SDL_stdinc.h"
extern int SDL_iscntrl(int x);
# 2254 "include/SDL3/SDL_stdinc.h"
extern int SDL_isdigit(int x);
# 2269 "include/SDL3/SDL_stdinc.h"
extern int SDL_isxdigit(int x);
# 2287 "include/SDL3/SDL_stdinc.h"
extern int SDL_ispunct(int x);
# 2309 "include/SDL3/SDL_stdinc.h"
extern int SDL_isspace(int x);
# 2324 "include/SDL3/SDL_stdinc.h"
extern int SDL_isupper(int x);
# 2339 "include/SDL3/SDL_stdinc.h"
extern int SDL_islower(int x);
# 2358 "include/SDL3/SDL_stdinc.h"
extern int SDL_isprint(int x);
# 2379 "include/SDL3/SDL_stdinc.h"
extern int SDL_isgraph(int x);
# 2397 "include/SDL3/SDL_stdinc.h"
extern int SDL_toupper(int x);
# 2415 "include/SDL3/SDL_stdinc.h"
extern int SDL_tolower(int x);
# 2436 "include/SDL3/SDL_stdinc.h"
extern Uint16 SDL_crc16(Uint16 crc, const void *data, size_t len);
# 2457 "include/SDL3/SDL_stdinc.h"
extern Uint32 SDL_crc32(Uint32 crc, const void *data, size_t len);
# 2483 "include/SDL3/SDL_stdinc.h"
extern Uint32 SDL_murmur3_32(const void *data, size_t len, Uint32 seed);
# 2503 "include/SDL3/SDL_stdinc.h"
extern void * SDL_memcpy( void *dst, const void *src, size_t len);
# 2559 "include/SDL3/SDL_stdinc.h"
extern void * SDL_memmove( void *dst, const void *src, size_t len);
# 2587 "include/SDL3/SDL_stdinc.h"
extern void * SDL_memset( void *dst, int c, size_t len);
# 2607 "include/SDL3/SDL_stdinc.h"
extern void * SDL_memset4(void *dst, Uint32 val, size_t dwords);
# 2689 "include/SDL3/SDL_stdinc.h"
extern int SDL_memcmp(const void *s1, const void *s2, size_t len);
# 2716 "include/SDL3/SDL_stdinc.h"
extern size_t SDL_wcslen(const wchar_t *wstr);
# 2747 "include/SDL3/SDL_stdinc.h"
extern size_t SDL_wcsnlen(const wchar_t *wstr, size_t maxlen);
# 2774 "include/SDL3/SDL_stdinc.h"
extern size_t SDL_wcslcpy( wchar_t *dst, const wchar_t *src, size_t maxlen);
# 2803 "include/SDL3/SDL_stdinc.h"
extern size_t SDL_wcslcat( wchar_t *dst, const wchar_t *src, size_t maxlen);
# 2821 "include/SDL3/SDL_stdinc.h"
extern wchar_t * SDL_wcsdup(const wchar_t *wstr);
# 2841 "include/SDL3/SDL_stdinc.h"
extern wchar_t * SDL_wcsstr(const wchar_t *haystack, const wchar_t *needle);
# 2866 "include/SDL3/SDL_stdinc.h"
extern wchar_t * SDL_wcsnstr(const wchar_t *haystack, const wchar_t *needle, size_t maxlen);
# 2885 "include/SDL3/SDL_stdinc.h"
extern int SDL_wcscmp(const wchar_t *str1, const wchar_t *str2);
# 2916 "include/SDL3/SDL_stdinc.h"
extern int SDL_wcsncmp(const wchar_t *str1, const wchar_t *str2, size_t maxlen);
# 2946 "include/SDL3/SDL_stdinc.h"
extern int SDL_wcscasecmp(const wchar_t *str1, const wchar_t *str2);
# 2988 "include/SDL3/SDL_stdinc.h"
extern int SDL_wcsncasecmp(const wchar_t *str1, const wchar_t *str2, size_t maxlen);
# 3015 "include/SDL3/SDL_stdinc.h"
extern long SDL_wcstol(const wchar_t *str, wchar_t **endp, int base);
# 3035 "include/SDL3/SDL_stdinc.h"
extern size_t SDL_strlen(const char *str);
# 3059 "include/SDL3/SDL_stdinc.h"
extern size_t SDL_strnlen(const char *str, size_t maxlen);
# 3088 "include/SDL3/SDL_stdinc.h"
extern size_t SDL_strlcpy( char *dst, const char *src, size_t maxlen);
# 3116 "include/SDL3/SDL_stdinc.h"
extern size_t SDL_utf8strlcpy( char *dst, const char *src, size_t dst_bytes);
# 3144 "include/SDL3/SDL_stdinc.h"
extern size_t SDL_strlcat( char *dst, const char *src, size_t maxlen);
# 3162 "include/SDL3/SDL_stdinc.h"
extern __attribute__((malloc)) char * SDL_strdup(const char *str);
# 3187 "include/SDL3/SDL_stdinc.h"
extern __attribute__((malloc)) char * SDL_strndup(const char *str, size_t maxlen);
# 3208 "include/SDL3/SDL_stdinc.h"
extern char * SDL_strrev(char *str);
# 3229 "include/SDL3/SDL_stdinc.h"
extern char * SDL_strupr(char *str);
# 3250 "include/SDL3/SDL_stdinc.h"
extern char * SDL_strlwr(char *str);
# 3270 "include/SDL3/SDL_stdinc.h"
extern char * SDL_strchr(const char *str, int c);
# 3289 "include/SDL3/SDL_stdinc.h"
extern char * SDL_strrchr(const char *str, int c);
# 3309 "include/SDL3/SDL_stdinc.h"
extern char * SDL_strstr(const char *haystack, const char *needle);
# 3332 "include/SDL3/SDL_stdinc.h"
extern char * SDL_strnstr(const char *haystack, const char *needle, size_t maxlen);
# 3360 "include/SDL3/SDL_stdinc.h"
extern char * SDL_strcasestr(const char *haystack, const char *needle);
# 3389 "include/SDL3/SDL_stdinc.h"
extern char * SDL_strtok_r(char *str, const char *delim, char **saveptr);
# 3417 "include/SDL3/SDL_stdinc.h"
extern size_t SDL_utf8strlen(const char *str);
# 3450 "include/SDL3/SDL_stdinc.h"
extern size_t SDL_utf8strnlen(const char *str, size_t bytes);
# 3478 "include/SDL3/SDL_stdinc.h"
extern char * SDL_itoa(int value, char *str, int radix);
# 3506 "include/SDL3/SDL_stdinc.h"
extern char * SDL_uitoa(unsigned int value, char *str, int radix);
# 3534 "include/SDL3/SDL_stdinc.h"
extern char * SDL_ltoa(long value, char *str, int radix);
# 3562 "include/SDL3/SDL_stdinc.h"
extern char * SDL_ultoa(unsigned long value, char *str, int radix);
# 3592 "include/SDL3/SDL_stdinc.h"
extern char * SDL_lltoa(long long value, char *str, int radix);
# 3620 "include/SDL3/SDL_stdinc.h"
extern char * SDL_ulltoa(unsigned long long value, char *str, int radix);
# 3644 "include/SDL3/SDL_stdinc.h"
extern int SDL_atoi(const char *str);
# 3666 "include/SDL3/SDL_stdinc.h"
extern double SDL_atof(const char *str);
# 3700 "include/SDL3/SDL_stdinc.h"
extern long SDL_strtol(const char *str, char **endp, int base);
# 3733 "include/SDL3/SDL_stdinc.h"
extern unsigned long SDL_strtoul(const char *str, char **endp, int base);
# 3768 "include/SDL3/SDL_stdinc.h"
extern long long SDL_strtoll(const char *str, char **endp, int base);
# 3802 "include/SDL3/SDL_stdinc.h"
extern unsigned long long SDL_strtoull(const char *str, char **endp, int base);
# 3832 "include/SDL3/SDL_stdinc.h"
extern double SDL_strtod(const char *str, char **endp);
# 3852 "include/SDL3/SDL_stdinc.h"
extern int SDL_strcmp(const char *str1, const char *str2);
# 3882 "include/SDL3/SDL_stdinc.h"
extern int SDL_strncmp(const char *str1, const char *str2, size_t maxlen);
# 3910 "include/SDL3/SDL_stdinc.h"
extern int SDL_strcasecmp(const char *str1, const char *str2);
# 3950 "include/SDL3/SDL_stdinc.h"
extern int SDL_strncasecmp(const char *str1, const char *str2, size_t maxlen);
# 3968 "include/SDL3/SDL_stdinc.h"
extern char * SDL_strpbrk(const char *str, const char *breakset);
# 4028 "include/SDL3/SDL_stdinc.h"
extern Uint32 SDL_StepUTF8(const char **pstr, size_t *pslen);
# 4059 "include/SDL3/SDL_stdinc.h"
extern Uint32 SDL_StepBackUTF8(const char *start, const char **pstr);
# 4088 "include/SDL3/SDL_stdinc.h"
extern char * SDL_UCS4ToUTF8(Uint32 codepoint, char *dst);
# 4105 "include/SDL3/SDL_stdinc.h"
extern int SDL_sscanf(const char *text, const char *fmt, ...) __attribute__ (( format( __scanf__, 2, 2 +1 )));
# 4124 "include/SDL3/SDL_stdinc.h"
extern int SDL_vsscanf(const char *text, const char *fmt, va_list ap) __attribute__(( format( __scanf__, 2, 0 )));
# 4157 "include/SDL3/SDL_stdinc.h"
extern int SDL_snprintf( char *text, size_t maxlen, const char *fmt, ...) __attribute__ (( format( __printf__, 3, 3 +1 )));
# 4191 "include/SDL3/SDL_stdinc.h"
extern int SDL_swprintf( wchar_t *text, size_t maxlen, const wchar_t *fmt, ...) ;
# 4211 "include/SDL3/SDL_stdinc.h"
extern int SDL_vsnprintf( char *text, size_t maxlen, const char *fmt, va_list ap) __attribute__(( format( __printf__, 3, 0 )));
# 4232 "include/SDL3/SDL_stdinc.h"
extern int SDL_vswprintf( wchar_t *text, size_t maxlen, const wchar_t *fmt, va_list ap) ;
# 4261 "include/SDL3/SDL_stdinc.h"
extern int SDL_asprintf(char **strp, const char *fmt, ...) __attribute__ (( format( __printf__, 2, 2 +1 )));
# 4280 "include/SDL3/SDL_stdinc.h"
extern int SDL_vasprintf(char **strp, const char *fmt, va_list ap) __attribute__(( format( __printf__, 2, 0 )));
# 4300 "include/SDL3/SDL_stdinc.h"
extern void SDL_srand(Uint64 seed);
# 4334 "include/SDL3/SDL_stdinc.h"
extern Sint32 SDL_rand(Sint32 n);
# 4357 "include/SDL3/SDL_stdinc.h"
extern float SDL_randf(void);
# 4380 "include/SDL3/SDL_stdinc.h"
extern Uint32 SDL_rand_bits(void);
# 4415 "include/SDL3/SDL_stdinc.h"
extern Sint32 SDL_rand_r(Uint64 *state, Sint32 n);
# 4442 "include/SDL3/SDL_stdinc.h"
extern float SDL_randf_r(Uint64 *state);
# 4467 "include/SDL3/SDL_stdinc.h"
extern Uint32 SDL_rand_bits_r(Uint64 *state);
# 4521 "include/SDL3/SDL_stdinc.h"
extern double SDL_acos(double x);
# 4551 "include/SDL3/SDL_stdinc.h"
extern float SDL_acosf(float x);
# 4581 "include/SDL3/SDL_stdinc.h"
extern double SDL_asin(double x);
# 4611 "include/SDL3/SDL_stdinc.h"
extern float SDL_asinf(float x);
# 4643 "include/SDL3/SDL_stdinc.h"
extern double SDL_atan(double x);
# 4675 "include/SDL3/SDL_stdinc.h"
extern float SDL_atanf(float x);
# 4711 "include/SDL3/SDL_stdinc.h"
extern double SDL_atan2(double y, double x);
# 4747 "include/SDL3/SDL_stdinc.h"
extern float SDL_atan2f(float y, float x);
# 4775 "include/SDL3/SDL_stdinc.h"
extern double SDL_ceil(double x);
# 4803 "include/SDL3/SDL_stdinc.h"
extern float SDL_ceilf(float x);
# 4829 "include/SDL3/SDL_stdinc.h"
extern double SDL_copysign(double x, double y);
# 4855 "include/SDL3/SDL_stdinc.h"
extern float SDL_copysignf(float x, float y);
# 4883 "include/SDL3/SDL_stdinc.h"
extern double SDL_cos(double x);
# 4911 "include/SDL3/SDL_stdinc.h"
extern float SDL_cosf(float x);
# 4943 "include/SDL3/SDL_stdinc.h"
extern double SDL_exp(double x);
# 4975 "include/SDL3/SDL_stdinc.h"
extern float SDL_expf(float x);
# 4996 "include/SDL3/SDL_stdinc.h"
extern double SDL_fabs(double x);
# 5017 "include/SDL3/SDL_stdinc.h"
extern float SDL_fabsf(float x);
# 5045 "include/SDL3/SDL_stdinc.h"
extern double SDL_floor(double x);
# 5073 "include/SDL3/SDL_stdinc.h"
extern float SDL_floorf(float x);
# 5102 "include/SDL3/SDL_stdinc.h"
extern double SDL_trunc(double x);
# 5131 "include/SDL3/SDL_stdinc.h"
extern float SDL_truncf(float x);
# 5161 "include/SDL3/SDL_stdinc.h"
extern double SDL_fmod(double x, double y);
# 5191 "include/SDL3/SDL_stdinc.h"
extern float SDL_fmodf(float x, float y);
# 5205 "include/SDL3/SDL_stdinc.h"
extern int SDL_isinf(double x);
# 5219 "include/SDL3/SDL_stdinc.h"
extern int SDL_isinff(float x);
# 5233 "include/SDL3/SDL_stdinc.h"
extern int SDL_isnan(double x);
# 5247 "include/SDL3/SDL_stdinc.h"
extern int SDL_isnanf(float x);
# 5277 "include/SDL3/SDL_stdinc.h"
extern double SDL_log(double x);
# 5306 "include/SDL3/SDL_stdinc.h"
extern float SDL_logf(float x);
# 5336 "include/SDL3/SDL_stdinc.h"
extern double SDL_log10(double x);
# 5366 "include/SDL3/SDL_stdinc.h"
extern float SDL_log10f(float x);
# 5386 "include/SDL3/SDL_stdinc.h"
extern double SDL_modf(double x, double *y);
# 5406 "include/SDL3/SDL_stdinc.h"
extern float SDL_modff(float x, float *y);
# 5438 "include/SDL3/SDL_stdinc.h"
extern double SDL_pow(double x, double y);
# 5470 "include/SDL3/SDL_stdinc.h"
extern float SDL_powf(float x, float y);
# 5499 "include/SDL3/SDL_stdinc.h"
extern double SDL_round(double x);
# 5528 "include/SDL3/SDL_stdinc.h"
extern float SDL_roundf(float x);
# 5557 "include/SDL3/SDL_stdinc.h"
extern long SDL_lround(double x);
# 5586 "include/SDL3/SDL_stdinc.h"
extern long SDL_lroundf(float x);
# 5611 "include/SDL3/SDL_stdinc.h"
extern double SDL_scalbn(double x, int n);
# 5636 "include/SDL3/SDL_stdinc.h"
extern float SDL_scalbnf(float x, int n);
# 5664 "include/SDL3/SDL_stdinc.h"
extern double SDL_sin(double x);
# 5692 "include/SDL3/SDL_stdinc.h"
extern float SDL_sinf(float x);
# 5718 "include/SDL3/SDL_stdinc.h"
extern double SDL_sqrt(double x);
# 5744 "include/SDL3/SDL_stdinc.h"
extern float SDL_sqrtf(float x);
# 5774 "include/SDL3/SDL_stdinc.h"
extern double SDL_tan(double x);
# 5804 "include/SDL3/SDL_stdinc.h"
extern float SDL_tanf(float x);
# 5813 "include/SDL3/SDL_stdinc.h"
typedef struct SDL_iconv_data_t *SDL_iconv_t;
# 5830 "include/SDL3/SDL_stdinc.h"
extern SDL_iconv_t SDL_iconv_open(const char *tocode,
                                                   const char *fromcode);
# 5845 "include/SDL3/SDL_stdinc.h"
extern int SDL_iconv_close(SDL_iconv_t cd);
# 5883 "include/SDL3/SDL_stdinc.h"
extern size_t SDL_iconv(SDL_iconv_t cd, const char **inbuf,
                                         size_t *inbytesleft, char **outbuf,
                                         size_t *outbytesleft);
# 5918 "include/SDL3/SDL_stdinc.h"
extern char * SDL_iconv_string(const char *tocode,
                                               const char *fromcode,
                                               const char *inbuf,
                                               size_t inbytesleft);
# 6077 "include/SDL3/SDL_stdinc.h"
__attribute__((always_inline)) static __inline__ bool SDL_size_mul_check_overflow(size_t a, size_t b, size_t *ret)
{
    if (a != 0 && b > 
# 6079 "include/SDL3/SDL_stdinc.h" 3 4
                     0xffffffffffffffffULL 
# 6079 "include/SDL3/SDL_stdinc.h"
                                  / a) {
        return false;
    }
    *ret = a * b;
    return true;
}






__attribute__((always_inline)) static __inline__ bool SDL_size_mul_check_overflow_builtin(size_t a, size_t b, size_t *ret)
{
    return (__builtin_mul_overflow(a, b, ret) == 0);
}
# 6116 "include/SDL3/SDL_stdinc.h"
__attribute__((always_inline)) static __inline__ bool SDL_size_add_check_overflow(size_t a, size_t b, size_t *ret)
{
    if (b > 
# 6118 "include/SDL3/SDL_stdinc.h" 3 4
           0xffffffffffffffffULL 
# 6118 "include/SDL3/SDL_stdinc.h"
                        - a) {
        return false;
    }
    *ret = a + b;
    return true;
}





__attribute__((always_inline)) static __inline__ bool SDL_size_add_check_overflow_builtin(size_t a, size_t b, size_t *ret)
{
    return (__builtin_add_overflow(a, b, ret) == 0);
}
# 6159 "include/SDL3/SDL_stdinc.h"
typedef void (*SDL_FunctionPointer)(void);






# 1 "include/SDL3/SDL_close_code.h" 1
# 6167 "include/SDL3/SDL_stdinc.h" 2
# 35 "include/SDL3/SDL.h" 2
# 1 "include/SDL3/SDL_assert.h" 1
# 69 "include/SDL3/SDL_assert.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 70 "include/SDL3/SDL_assert.h" 2
# 131 "include/SDL3/SDL_assert.h"
    extern void __attribute__((__cdecl__)) __debugbreak(void);
# 304 "include/SDL3/SDL_assert.h"
typedef enum SDL_AssertState
{
    SDL_ASSERTION_RETRY,
    SDL_ASSERTION_BREAK,
    SDL_ASSERTION_ABORT,
    SDL_ASSERTION_IGNORE,
    SDL_ASSERTION_ALWAYS_IGNORE
} SDL_AssertState;
# 322 "include/SDL3/SDL_assert.h"
typedef struct SDL_AssertData
{
    bool always_ignore;
    unsigned int trigger_count;
    const char *condition;
    const char *filename;
    int linenum;
    const char *function;
    const struct SDL_AssertData *next;
} SDL_AssertData;
# 348 "include/SDL3/SDL_assert.h"
extern SDL_AssertState SDL_ReportAssertion(SDL_AssertData *data,
                                                            const char *func,
                                                            const char *file, int line) ;
# 563 "include/SDL3/SDL_assert.h"
typedef SDL_AssertState ( *SDL_AssertionHandler)(
                                 const SDL_AssertData *data, void *userdata);
# 589 "include/SDL3/SDL_assert.h"
extern void SDL_SetAssertionHandler(
                                            SDL_AssertionHandler handler,
                                            void *userdata);
# 610 "include/SDL3/SDL_assert.h"
extern SDL_AssertionHandler SDL_GetDefaultAssertionHandler(void);
# 635 "include/SDL3/SDL_assert.h"
extern SDL_AssertionHandler SDL_GetAssertionHandler(void **puserdata);
# 669 "include/SDL3/SDL_assert.h"
extern const SDL_AssertData * SDL_GetAssertionReport(void);
# 687 "include/SDL3/SDL_assert.h"
extern void SDL_ResetAssertionReport(void);





# 1 "include/SDL3/SDL_close_code.h" 1
# 694 "include/SDL3/SDL_assert.h" 2
# 36 "include/SDL3/SDL.h" 2
# 1 "include/SDL3/SDL_asyncio.h" 1
# 108 "include/SDL3/SDL_asyncio.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 109 "include/SDL3/SDL_asyncio.h" 2
# 124 "include/SDL3/SDL_asyncio.h"
typedef struct SDL_AsyncIO SDL_AsyncIO;






typedef enum SDL_AsyncIOTaskType
{
    SDL_ASYNCIO_TASK_READ,
    SDL_ASYNCIO_TASK_WRITE,
    SDL_ASYNCIO_TASK_CLOSE
} SDL_AsyncIOTaskType;






typedef enum SDL_AsyncIOResult
{
    SDL_ASYNCIO_COMPLETE,
    SDL_ASYNCIO_FAILURE,
    SDL_ASYNCIO_CANCELED
} SDL_AsyncIOResult;






typedef struct SDL_AsyncIOOutcome
{
    SDL_AsyncIO *asyncio;
    SDL_AsyncIOTaskType type;
    SDL_AsyncIOResult result;
    void *buffer;
    Uint64 offset;
    Uint64 bytes_requested;
    Uint64 bytes_transferred;
    void *userdata;
} SDL_AsyncIOOutcome;
# 183 "include/SDL3/SDL_asyncio.h"
typedef struct SDL_AsyncIOQueue SDL_AsyncIOQueue;
# 222 "include/SDL3/SDL_asyncio.h"
extern SDL_AsyncIO * SDL_AsyncIOFromFile(const char *file, const char *mode);
# 239 "include/SDL3/SDL_asyncio.h"
extern Sint64 SDL_GetAsyncIOSize(SDL_AsyncIO *asyncio);
# 277 "include/SDL3/SDL_asyncio.h"
extern bool SDL_ReadAsyncIO(SDL_AsyncIO *asyncio, void *ptr, Uint64 offset, Uint64 size, SDL_AsyncIOQueue *queue, void *userdata);
# 314 "include/SDL3/SDL_asyncio.h"
extern bool SDL_WriteAsyncIO(SDL_AsyncIO *asyncio, void *ptr, Uint64 offset, Uint64 size, SDL_AsyncIOQueue *queue, void *userdata);
# 363 "include/SDL3/SDL_asyncio.h"
extern bool SDL_CloseAsyncIO(SDL_AsyncIO *asyncio, bool flush, SDL_AsyncIOQueue *queue, void *userdata);
# 382 "include/SDL3/SDL_asyncio.h"
extern SDL_AsyncIOQueue * SDL_CreateAsyncIOQueue(void);
# 412 "include/SDL3/SDL_asyncio.h"
extern void SDL_DestroyAsyncIOQueue(SDL_AsyncIOQueue *queue);
# 438 "include/SDL3/SDL_asyncio.h"
extern bool SDL_GetAsyncIOResult(SDL_AsyncIOQueue *queue, SDL_AsyncIOOutcome *outcome);
# 482 "include/SDL3/SDL_asyncio.h"
extern bool SDL_WaitAsyncIOResult(SDL_AsyncIOQueue *queue, SDL_AsyncIOOutcome *outcome, Sint32 timeoutMS);
# 506 "include/SDL3/SDL_asyncio.h"
extern void SDL_SignalAsyncIOQueue(SDL_AsyncIOQueue *queue);
# 538 "include/SDL3/SDL_asyncio.h"
extern bool SDL_LoadFileAsync(const char *file, SDL_AsyncIOQueue *queue, void *userdata);





# 1 "include/SDL3/SDL_close_code.h" 1
# 545 "include/SDL3/SDL_asyncio.h" 2
# 37 "include/SDL3/SDL.h" 2
# 1 "include/SDL3/SDL_atomic.h" 1
# 56 "include/SDL3/SDL_atomic.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 57 "include/SDL3/SDL_atomic.h" 2
# 82 "include/SDL3/SDL_atomic.h"
typedef int SDL_SpinLock;
# 100 "include/SDL3/SDL_atomic.h"
extern bool SDL_TryLockSpinlock(SDL_SpinLock *lock);
# 117 "include/SDL3/SDL_atomic.h"
extern void SDL_LockSpinlock(SDL_SpinLock *lock);
# 136 "include/SDL3/SDL_atomic.h"
extern void SDL_UnlockSpinlock(SDL_SpinLock *lock);
# 192 "include/SDL3/SDL_atomic.h"
extern void SDL_MemoryBarrierReleaseFunction(void);
# 212 "include/SDL3/SDL_atomic.h"
extern void SDL_MemoryBarrierAcquireFunction(void);
# 395 "include/SDL3/SDL_atomic.h"
typedef struct SDL_AtomicInt { int value; } SDL_AtomicInt;
# 415 "include/SDL3/SDL_atomic.h"
extern bool SDL_CompareAndSwapAtomicInt(SDL_AtomicInt *a, int oldval, int newval);
# 435 "include/SDL3/SDL_atomic.h"
extern int SDL_SetAtomicInt(SDL_AtomicInt *a, int v);
# 452 "include/SDL3/SDL_atomic.h"
extern int SDL_GetAtomicInt(SDL_AtomicInt *a);
# 473 "include/SDL3/SDL_atomic.h"
extern int SDL_AddAtomicInt(SDL_AtomicInt *a, int v);
# 540 "include/SDL3/SDL_atomic.h"
typedef struct SDL_AtomicU32 { Uint32 value; } SDL_AtomicU32;
# 560 "include/SDL3/SDL_atomic.h"
extern bool SDL_CompareAndSwapAtomicU32(SDL_AtomicU32 *a, Uint32 oldval, Uint32 newval);
# 580 "include/SDL3/SDL_atomic.h"
extern Uint32 SDL_SetAtomicU32(SDL_AtomicU32 *a, Uint32 v);
# 597 "include/SDL3/SDL_atomic.h"
extern Uint32 SDL_GetAtomicU32(SDL_AtomicU32 *a);
# 615 "include/SDL3/SDL_atomic.h"
extern Uint32 SDL_AddAtomicU32(SDL_AtomicU32 *a, int v);
# 636 "include/SDL3/SDL_atomic.h"
extern bool SDL_CompareAndSwapAtomicPointer(void **a, void *oldval, void *newval);
# 655 "include/SDL3/SDL_atomic.h"
extern void * SDL_SetAtomicPointer(void **a, void *v);
# 673 "include/SDL3/SDL_atomic.h"
extern void * SDL_GetAtomicPointer(void **a);






# 1 "include/SDL3/SDL_close_code.h" 1
# 681 "include/SDL3/SDL_atomic.h" 2
# 38 "include/SDL3/SDL.h" 2
# 1 "include/SDL3/SDL_audio.h" 1
# 132 "include/SDL3/SDL_audio.h"
# 1 "include/SDL3/SDL_endian.h" 1
# 215 "include/SDL3/SDL_endian.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 216 "include/SDL3/SDL_endian.h" 2
# 408 "include/SDL3/SDL_endian.h"
__attribute__((always_inline)) static __inline__ float SDL_SwapFloat(float x)
{
    union {
        float f;
        Uint32 ui32;
    } swapper;
    swapper.f = x;
    swapper.ui32 = __builtin_bswap32(swapper.ui32);
    return swapper.f;
}
# 643 "include/SDL3/SDL_endian.h"
# 1 "include/SDL3/SDL_close_code.h" 1
# 644 "include/SDL3/SDL_endian.h" 2
# 133 "include/SDL3/SDL_audio.h" 2
# 1 "include/SDL3/SDL_error.h" 1
# 53 "include/SDL3/SDL_error.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 54 "include/SDL3/SDL_error.h" 2
# 89 "include/SDL3/SDL_error.h"
extern bool SDL_SetError( const char *fmt, ...) __attribute__ (( format( __printf__, 1, 1 +1 )));
# 108 "include/SDL3/SDL_error.h"
extern bool SDL_SetErrorV( const char *fmt, va_list ap) __attribute__(( format( __printf__, 1, 0 )));
# 121 "include/SDL3/SDL_error.h"
extern bool SDL_OutOfMemory(void);
# 158 "include/SDL3/SDL_error.h"
extern const char * SDL_GetError(void);
# 172 "include/SDL3/SDL_error.h"
extern bool SDL_ClearError(void);
# 224 "include/SDL3/SDL_error.h"
# 1 "include/SDL3/SDL_close_code.h" 1
# 225 "include/SDL3/SDL_error.h" 2
# 134 "include/SDL3/SDL_audio.h" 2
# 1 "include/SDL3/SDL_mutex.h" 1
# 46 "include/SDL3/SDL_mutex.h"
# 1 "include/SDL3/SDL_thread.h" 1
# 46 "include/SDL3/SDL_thread.h"
# 1 "include/SDL3/SDL_properties.h" 1
# 55 "include/SDL3/SDL_properties.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 56 "include/SDL3/SDL_properties.h" 2
# 66 "include/SDL3/SDL_properties.h"
typedef Uint32 SDL_PropertiesID;






typedef enum SDL_PropertyType
{
    SDL_PROPERTY_TYPE_INVALID,
    SDL_PROPERTY_TYPE_POINTER,
    SDL_PROPERTY_TYPE_STRING,
    SDL_PROPERTY_TYPE_NUMBER,
    SDL_PROPERTY_TYPE_FLOAT,
    SDL_PROPERTY_TYPE_BOOLEAN
} SDL_PropertyType;
# 116 "include/SDL3/SDL_properties.h"
extern SDL_PropertiesID SDL_GetGlobalProperties(void);
# 132 "include/SDL3/SDL_properties.h"
extern SDL_PropertiesID SDL_CreateProperties(void);
# 153 "include/SDL3/SDL_properties.h"
extern bool SDL_CopyProperties(SDL_PropertiesID src, SDL_PropertiesID dst);
# 177 "include/SDL3/SDL_properties.h"
extern bool SDL_LockProperties(SDL_PropertiesID props);
# 190 "include/SDL3/SDL_properties.h"
extern void SDL_UnlockProperties(SDL_PropertiesID props);
# 214 "include/SDL3/SDL_properties.h"
typedef void ( *SDL_CleanupPropertyCallback)(void *userdata, void *value);
# 245 "include/SDL3/SDL_properties.h"
extern bool SDL_SetPointerPropertyWithCleanup(SDL_PropertiesID props, const char *name, void *value, SDL_CleanupPropertyCallback cleanup, void *userdata);
# 268 "include/SDL3/SDL_properties.h"
extern bool SDL_SetPointerProperty(SDL_PropertiesID props, const char *name, void *value);
# 288 "include/SDL3/SDL_properties.h"
extern bool SDL_SetStringProperty(SDL_PropertiesID props, const char *name, const char *value);
# 305 "include/SDL3/SDL_properties.h"
extern bool SDL_SetNumberProperty(SDL_PropertiesID props, const char *name, Sint64 value);
# 322 "include/SDL3/SDL_properties.h"
extern bool SDL_SetFloatProperty(SDL_PropertiesID props, const char *name, float value);
# 339 "include/SDL3/SDL_properties.h"
extern bool SDL_SetBooleanProperty(SDL_PropertiesID props, const char *name, bool value);
# 354 "include/SDL3/SDL_properties.h"
extern bool SDL_HasProperty(SDL_PropertiesID props, const char *name);
# 370 "include/SDL3/SDL_properties.h"
extern SDL_PropertyType SDL_GetPropertyType(SDL_PropertiesID props, const char *name);
# 403 "include/SDL3/SDL_properties.h"
extern void * SDL_GetPointerProperty(SDL_PropertiesID props, const char *name, void *default_value);
# 427 "include/SDL3/SDL_properties.h"
extern const char * SDL_GetStringProperty(SDL_PropertiesID props, const char *name, const char *default_value);
# 449 "include/SDL3/SDL_properties.h"
extern Sint64 SDL_GetNumberProperty(SDL_PropertiesID props, const char *name, Sint64 default_value);
# 471 "include/SDL3/SDL_properties.h"
extern float SDL_GetFloatProperty(SDL_PropertiesID props, const char *name, float default_value);
# 493 "include/SDL3/SDL_properties.h"
extern bool SDL_GetBooleanProperty(SDL_PropertiesID props, const char *name, bool default_value);
# 507 "include/SDL3/SDL_properties.h"
extern bool SDL_ClearProperty(SDL_PropertiesID props, const char *name);
# 526 "include/SDL3/SDL_properties.h"
typedef void ( *SDL_EnumeratePropertiesCallback)(void *userdata, SDL_PropertiesID props, const char *name);
# 544 "include/SDL3/SDL_properties.h"
extern bool SDL_EnumerateProperties(SDL_PropertiesID props, SDL_EnumeratePropertiesCallback callback, void *userdata);
# 562 "include/SDL3/SDL_properties.h"
extern void SDL_DestroyProperties(SDL_PropertiesID props);





# 1 "include/SDL3/SDL_close_code.h" 1
# 569 "include/SDL3/SDL_properties.h" 2
# 47 "include/SDL3/SDL_thread.h" 2





# 1 "C:/msys64/mingw64/include/process.h" 1 3
# 10 "C:/msys64/mingw64/include/process.h" 3
# 1 "C:/msys64/mingw64/include/corecrt_startup.h" 1 3
# 16 "C:/msys64/mingw64/include/corecrt_startup.h" 3

# 16 "C:/msys64/mingw64/include/corecrt_startup.h" 3
typedef enum _crt_app_type {
    _crt_unknown_app,
    _crt_console_app,
    _crt_gui_app
} _crt_app_type;

__attribute__ ((__dllimport__)) _crt_app_type __attribute__((__cdecl__)) _query_app_type(void);
__attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _set_app_type(_crt_app_type _Type);

typedef enum _crt_argv_mode {
    _crt_argv_no_arguments,
    _crt_argv_unexpanded_arguments,
    _crt_argv_expanded_arguments
} _crt_argv_mode;

__attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _configure_narrow_argv(_crt_argv_mode mode);
__attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _configure_wide_argv(_crt_argv_mode mode);

__attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _initialize_narrow_environment(void);
__attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _initialize_wide_environment(void);

__attribute__ ((__dllimport__)) char** __attribute__((__cdecl__)) _get_initial_narrow_environment(void);
__attribute__ ((__dllimport__)) wchar_t** __attribute__((__cdecl__)) _get_initial_wide_environment(void);

__attribute__ ((__dllimport__)) char* __attribute__((__cdecl__)) _get_narrow_winmain_command_line(void);
__attribute__ ((__dllimport__)) wchar_t* __attribute__((__cdecl__)) _get_wide_winmain_command_line(void);

__attribute__ ((__dllimport__)) char **__attribute__((__cdecl__)) __p__acmdln(void);


__attribute__ ((__dllimport__)) wchar_t **__attribute__((__cdecl__)) __p__wcmdln(void);


typedef void (__attribute__((__cdecl__)) *_PVFV)(void);
typedef int (__attribute__((__cdecl__)) *_PIFV)(void);
typedef void (__attribute__((__cdecl__)) *_PVFI)(int);

__attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _initterm(_PVFV* _First, _PVFV* _Last);
__attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _initterm_e(_PIFV* _First, _PIFV* _Last);

typedef struct _onexit_table_t {
    _PVFV* _first;
    _PVFV* _last;
    _PVFV* _end;
} _onexit_table_t;

typedef int (__attribute__((__cdecl__)) *_onexit_t)(void);

__attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _initialize_onexit_table(_onexit_table_t*);
__attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _register_onexit_function(_onexit_table_t*,_onexit_t);
__attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _execute_onexit_table(_onexit_table_t*);
__attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _crt_atexit(_PVFV func);
__attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _crt_at_quick_exit(_PVFV func);
# 11 "C:/msys64/mingw64/include/process.h" 2 3


# 1 "C:/msys64/mingw64/include/sys/types.h" 1 3
# 62 "C:/msys64/mingw64/include/sys/types.h" 3
__extension__
typedef long long _pid_t;




typedef _pid_t pid_t;





typedef unsigned short _mode_t;


typedef _mode_t mode_t;






typedef unsigned int useconds_t;




struct timespec {
  time_t tv_sec;
  long tv_nsec;
};

struct itimerspec {
  struct timespec it_interval;
  struct timespec it_value;
};





__extension__
typedef unsigned long long _sigset_t;
# 14 "C:/msys64/mingw64/include/process.h" 2 3
# 32 "C:/msys64/mingw64/include/process.h" 3
  typedef void (__attribute__((__cdecl__)) *_beginthread_proc_type)(void *);
  typedef unsigned (__attribute__((__stdcall__)) *_beginthreadex_proc_type)(void *);

  __attribute__ ((__dllimport__)) uintptr_t __attribute__((__cdecl__)) _beginthread(_beginthread_proc_type _StartAddress,unsigned _StackSize,void *_ArgList);
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _endthread(void) __attribute__ ((__noreturn__));
  __attribute__ ((__dllimport__)) uintptr_t __attribute__((__cdecl__)) _beginthreadex(void *_Security,unsigned _StackSize,_beginthreadex_proc_type _StartAddress,void *_ArgList,unsigned _InitFlag,unsigned *_ThrdAddr);
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _endthreadex(unsigned _Retval) __attribute__ ((__noreturn__));



  void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) exit(int _Code) __attribute__ ((__noreturn__));
  void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _exit(int _Code) __attribute__ ((__noreturn__));

  void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) quick_exit(int _Code) __attribute__ ((__noreturn__));




  void __attribute__((__cdecl__)) _Exit(int) __attribute__ ((__noreturn__));






       

  void __attribute__((__cdecl__)) __attribute__ ((__noreturn__)) abort(void);
       



  typedef void (__attribute__((__stdcall__)) *_tls_callback_type)(void*,unsigned long,void*);
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _register_thread_local_exe_atexit_callback(_tls_callback_type callback);

  void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _cexit(void);
  void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _c_exit(void);

  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _getpid(void);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _cwait(int *_TermStat,intptr_t _ProcHandle,int _Action);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _execl(const char *_Filename,const char *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _execle(const char *_Filename,const char *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _execlp(const char *_Filename,const char *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _execlpe(const char *_Filename,const char *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _execv(const char *_Filename,const char *const *_ArgList);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _execve(const char *_Filename,const char *const *_ArgList,const char *const *_Env);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _execvp(const char *_Filename,const char *const *_ArgList);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _execvpe(const char *_Filename,const char *const *_ArgList,const char *const *_Env);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _spawnl(int _Mode,const char *_Filename,const char *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _spawnle(int _Mode,const char *_Filename,const char *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _spawnlp(int _Mode,const char *_Filename,const char *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _spawnlpe(int _Mode,const char *_Filename,const char *_ArgList,...);



  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _spawnv(int _Mode,const char *_Filename,const char *const *_ArgList);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _spawnve(int _Mode,const char *_Filename,const char *const *_ArgList,const char *const *_Env);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _spawnvp(int _Mode,const char *_Filename,const char *const *_ArgList);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _spawnvpe(int _Mode,const char *_Filename,const char *const *_ArgList,const char *const *_Env);




  int __attribute__((__cdecl__)) system(const char *_Command);
# 129 "C:/msys64/mingw64/include/process.h" 3
  intptr_t __attribute__((__cdecl__)) _loaddll(char *_Filename);
  int __attribute__((__cdecl__)) _unloaddll(intptr_t _Handle);
  int (__attribute__((__cdecl__)) *__attribute__((__cdecl__)) _getdllprocaddr(intptr_t _Handle,char *_ProcedureName,intptr_t _Ordinal))(void);
# 161 "C:/msys64/mingw64/include/process.h" 3
  int __attribute__((__cdecl__)) getpid(void) ;



  intptr_t __attribute__((__cdecl__)) cwait(int *_TermStat,intptr_t _ProcHandle,int _Action) ;

  int __attribute__((__cdecl__)) execl(const char *_Filename,const char *_ArgList,...) ;
  int __attribute__((__cdecl__)) execle(const char *_Filename,const char *_ArgList,...) ;
  int __attribute__((__cdecl__)) execlp(const char *_Filename,const char *_ArgList,...) ;
  int __attribute__((__cdecl__)) execlpe(const char *_Filename,const char *_ArgList,...) ;






  intptr_t __attribute__((__cdecl__)) spawnl(int,const char *_Filename,const char *_ArgList,...) ;
  intptr_t __attribute__((__cdecl__)) spawnle(int,const char *_Filename,const char *_ArgList,...) ;
  intptr_t __attribute__((__cdecl__)) spawnlp(int,const char *_Filename,const char *_ArgList,...) ;
  intptr_t __attribute__((__cdecl__)) spawnlpe(int,const char *_Filename,const char *_ArgList,...) ;





  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) execv(const char *_Filename,char *const _ArgList[]) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) execve(const char *_Filename,char *const _ArgList[],char *const _Env[]) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) execvp(const char *_Filename,char *const _ArgList[]) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) execvpe(const char *_Filename,char *const _ArgList[],char *const _Env[]) ;






  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) spawnv(int,const char *_Filename,char *const _ArgList[]) ;
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) spawnve(int,const char *_Filename,char *const _ArgList[],char *const _Env[]) ;
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) spawnvp(int,const char *_Filename,char *const _ArgList[]) ;
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) spawnvpe(int,const char *_Filename,char *const _ArgList[],char *const _Env[]) ;
# 53 "include/SDL3/SDL_thread.h" 2


# 1 "include/SDL3/SDL_begin_code.h" 1
# 56 "include/SDL3/SDL_thread.h" 2
# 71 "include/SDL3/SDL_thread.h"

# 71 "include/SDL3/SDL_thread.h"
typedef struct SDL_Thread SDL_Thread;
# 85 "include/SDL3/SDL_thread.h"
typedef Uint64 SDL_ThreadID;
# 98 "include/SDL3/SDL_thread.h"
typedef SDL_AtomicInt SDL_TLSID;
# 111 "include/SDL3/SDL_thread.h"
typedef enum SDL_ThreadPriority {
    SDL_THREAD_PRIORITY_LOW,
    SDL_THREAD_PRIORITY_NORMAL,
    SDL_THREAD_PRIORITY_HIGH,
    SDL_THREAD_PRIORITY_TIME_CRITICAL
} SDL_ThreadPriority;
# 127 "include/SDL3/SDL_thread.h"
typedef enum SDL_ThreadState
{
    SDL_THREAD_UNKNOWN,
    SDL_THREAD_ALIVE,
    SDL_THREAD_DETACHED,
    SDL_THREAD_COMPLETE
} SDL_ThreadState;
# 143 "include/SDL3/SDL_thread.h"
typedef int ( *SDL_ThreadFunction) (void *data);
# 334 "include/SDL3/SDL_thread.h"
extern SDL_Thread * SDL_CreateThreadRuntime(SDL_ThreadFunction fn, const char *name, void *data, SDL_FunctionPointer pfnBeginThread, SDL_FunctionPointer pfnEndThread);
# 348 "include/SDL3/SDL_thread.h"
extern SDL_Thread * SDL_CreateThreadWithPropertiesRuntime(SDL_PropertiesID props, SDL_FunctionPointer pfnBeginThread, SDL_FunctionPointer pfnEndThread);
# 368 "include/SDL3/SDL_thread.h"
extern const char * SDL_GetThreadName(SDL_Thread *thread);
# 386 "include/SDL3/SDL_thread.h"
extern SDL_ThreadID SDL_GetCurrentThreadID(void);
# 403 "include/SDL3/SDL_thread.h"
extern SDL_ThreadID SDL_GetThreadID(SDL_Thread *thread);
# 418 "include/SDL3/SDL_thread.h"
extern bool SDL_SetCurrentThreadPriority(SDL_ThreadPriority priority);
# 453 "include/SDL3/SDL_thread.h"
extern void SDL_WaitThread(SDL_Thread *thread, int *status);
# 466 "include/SDL3/SDL_thread.h"
extern SDL_ThreadState SDL_GetThreadState(SDL_Thread *thread);
# 502 "include/SDL3/SDL_thread.h"
extern void SDL_DetachThread(SDL_Thread *thread);
# 517 "include/SDL3/SDL_thread.h"
extern void * SDL_GetTLS(SDL_TLSID *id);
# 530 "include/SDL3/SDL_thread.h"
typedef void ( *SDL_TLSDestructorCallback)(void *value);
# 558 "include/SDL3/SDL_thread.h"
extern bool SDL_SetTLS(SDL_TLSID *id, const void *value, SDL_TLSDestructorCallback destructor);
# 571 "include/SDL3/SDL_thread.h"
extern void SDL_CleanupTLS(void);





# 1 "include/SDL3/SDL_close_code.h" 1
# 578 "include/SDL3/SDL_thread.h" 2
# 47 "include/SDL3/SDL_mutex.h" 2
# 273 "include/SDL3/SDL_mutex.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 274 "include/SDL3/SDL_mutex.h" 2
# 296 "include/SDL3/SDL_mutex.h"
typedef struct SDL_Mutex SDL_Mutex;
# 318 "include/SDL3/SDL_mutex.h"
extern SDL_Mutex * SDL_CreateMutex(void);
# 342 "include/SDL3/SDL_mutex.h"
extern void SDL_LockMutex(SDL_Mutex *mutex) ;
# 363 "include/SDL3/SDL_mutex.h"
extern bool SDL_TryLockMutex(SDL_Mutex *mutex) ;
# 382 "include/SDL3/SDL_mutex.h"
extern void SDL_UnlockMutex(SDL_Mutex *mutex) ;
# 399 "include/SDL3/SDL_mutex.h"
extern void SDL_DestroyMutex(SDL_Mutex *mutex);
# 427 "include/SDL3/SDL_mutex.h"
typedef struct SDL_RWLock SDL_RWLock;
# 469 "include/SDL3/SDL_mutex.h"
extern SDL_RWLock * SDL_CreateRWLock(void);
# 506 "include/SDL3/SDL_mutex.h"
extern void SDL_LockRWLockForReading(SDL_RWLock *rwlock) ;
# 537 "include/SDL3/SDL_mutex.h"
extern void SDL_LockRWLockForWriting(SDL_RWLock *rwlock) ;
# 562 "include/SDL3/SDL_mutex.h"
extern bool SDL_TryLockRWLockForReading(SDL_RWLock *rwlock) ;
# 592 "include/SDL3/SDL_mutex.h"
extern bool SDL_TryLockRWLockForWriting(SDL_RWLock *rwlock) ;
# 617 "include/SDL3/SDL_mutex.h"
extern void SDL_UnlockRWLock(SDL_RWLock *rwlock) ;
# 634 "include/SDL3/SDL_mutex.h"
extern void SDL_DestroyRWLock(SDL_RWLock *rwlock);
# 658 "include/SDL3/SDL_mutex.h"
typedef struct SDL_Semaphore SDL_Semaphore;
# 682 "include/SDL3/SDL_mutex.h"
extern SDL_Semaphore * SDL_CreateSemaphore(Uint32 initial_value);
# 696 "include/SDL3/SDL_mutex.h"
extern void SDL_DestroySemaphore(SDL_Semaphore *sem);
# 716 "include/SDL3/SDL_mutex.h"
extern void SDL_WaitSemaphore(SDL_Semaphore *sem);
# 735 "include/SDL3/SDL_mutex.h"
extern bool SDL_TryWaitSemaphore(SDL_Semaphore *sem);
# 755 "include/SDL3/SDL_mutex.h"
extern bool SDL_WaitSemaphoreTimeout(SDL_Semaphore *sem, Sint32 timeoutMS);
# 768 "include/SDL3/SDL_mutex.h"
extern void SDL_SignalSemaphore(SDL_Semaphore *sem);
# 778 "include/SDL3/SDL_mutex.h"
extern Uint32 SDL_GetSemaphoreValue(SDL_Semaphore *sem);
# 801 "include/SDL3/SDL_mutex.h"
typedef struct SDL_Condition SDL_Condition;
# 817 "include/SDL3/SDL_mutex.h"
extern SDL_Condition * SDL_CreateCondition(void);
# 828 "include/SDL3/SDL_mutex.h"
extern void SDL_DestroyCondition(SDL_Condition *cond);
# 843 "include/SDL3/SDL_mutex.h"
extern void SDL_SignalCondition(SDL_Condition *cond);
# 858 "include/SDL3/SDL_mutex.h"
extern void SDL_BroadcastCondition(SDL_Condition *cond);
# 886 "include/SDL3/SDL_mutex.h"
extern void SDL_WaitCondition(SDL_Condition *cond, SDL_Mutex *mutex);
# 916 "include/SDL3/SDL_mutex.h"
extern bool SDL_WaitConditionTimeout(SDL_Condition *cond,
                                                SDL_Mutex *mutex, Sint32 timeoutMS);
# 931 "include/SDL3/SDL_mutex.h"
typedef enum SDL_InitStatus
{
    SDL_INIT_STATUS_UNINITIALIZED,
    SDL_INIT_STATUS_INITIALIZING,
    SDL_INIT_STATUS_INITIALIZED,
    SDL_INIT_STATUS_UNINITIALIZING
} SDL_InitStatus;
# 995 "include/SDL3/SDL_mutex.h"
typedef struct SDL_InitState
{
    SDL_AtomicInt status;
    SDL_ThreadID thread;
    void *reserved;
} SDL_InitState;
# 1023 "include/SDL3/SDL_mutex.h"
extern bool SDL_ShouldInit(SDL_InitState *state);
# 1044 "include/SDL3/SDL_mutex.h"
extern bool SDL_ShouldQuit(SDL_InitState *state);
# 1063 "include/SDL3/SDL_mutex.h"
extern void SDL_SetInitialized(SDL_InitState *state, bool initialized);







# 1 "include/SDL3/SDL_close_code.h" 1
# 1072 "include/SDL3/SDL_mutex.h" 2
# 135 "include/SDL3/SDL_audio.h" 2

# 1 "include/SDL3/SDL_iostream.h" 1
# 42 "include/SDL3/SDL_iostream.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 43 "include/SDL3/SDL_iostream.h" 2
# 53 "include/SDL3/SDL_iostream.h"
typedef enum SDL_IOStatus
{
    SDL_IO_STATUS_READY,
    SDL_IO_STATUS_ERROR,
    SDL_IO_STATUS_EOF,
    SDL_IO_STATUS_NOT_READY,
    SDL_IO_STATUS_READONLY,
    SDL_IO_STATUS_WRITEONLY
} SDL_IOStatus;
# 71 "include/SDL3/SDL_iostream.h"
typedef enum SDL_IOWhence
{
    SDL_IO_SEEK_SET,
    SDL_IO_SEEK_CUR,
    SDL_IO_SEEK_END
} SDL_IOWhence;
# 92 "include/SDL3/SDL_iostream.h"
typedef struct SDL_IOStreamInterface
{

    Uint32 version;






    Sint64 ( *size)(void *userdata);







    Sint64 ( *seek)(void *userdata, Sint64 offset, SDL_IOWhence whence);
# 122 "include/SDL3/SDL_iostream.h"
    size_t ( *read)(void *userdata, void *ptr, size_t size, SDL_IOStatus *status);
# 134 "include/SDL3/SDL_iostream.h"
    size_t ( *write)(void *userdata, const void *ptr, size_t size, SDL_IOStatus *status);
# 145 "include/SDL3/SDL_iostream.h"
    bool ( *flush)(void *userdata, SDL_IOStatus *status);
# 158 "include/SDL3/SDL_iostream.h"
    bool ( *close)(void *userdata);

} SDL_IOStreamInterface;







static_assert((sizeof(void *) == 4 && sizeof(SDL_IOStreamInterface) == 28) || (sizeof(void *) == 8 && sizeof(SDL_IOStreamInterface) == 56), "(sizeof(void *) == 4 && sizeof(SDL_IOStreamInterface) == 28) || (sizeof(void *) == 8 && sizeof(SDL_IOStreamInterface) == 56)")

                                                                 ;
# 182 "include/SDL3/SDL_iostream.h"
typedef struct SDL_IOStream SDL_IOStream;
# 278 "include/SDL3/SDL_iostream.h"
extern SDL_IOStream * SDL_IOFromFile(const char *file, const char *mode);
# 330 "include/SDL3/SDL_iostream.h"
extern SDL_IOStream * SDL_IOFromMem(void *mem, size_t size);
# 381 "include/SDL3/SDL_iostream.h"
extern SDL_IOStream * SDL_IOFromConstMem(const void *mem, size_t size);
# 411 "include/SDL3/SDL_iostream.h"
extern SDL_IOStream * SDL_IOFromDynamicMem(void);
# 446 "include/SDL3/SDL_iostream.h"
extern SDL_IOStream * SDL_OpenIO(const SDL_IOStreamInterface *iface, void *userdata);
# 478 "include/SDL3/SDL_iostream.h"
extern bool SDL_CloseIO(SDL_IOStream *context);
# 491 "include/SDL3/SDL_iostream.h"
extern SDL_PropertiesID SDL_GetIOProperties(SDL_IOStream *context);
# 511 "include/SDL3/SDL_iostream.h"
extern SDL_IOStatus SDL_GetIOStatus(SDL_IOStream *context);
# 525 "include/SDL3/SDL_iostream.h"
extern Sint64 SDL_GetIOSize(SDL_IOStream *context);
# 554 "include/SDL3/SDL_iostream.h"
extern Sint64 SDL_SeekIO(SDL_IOStream *context, Sint64 offset, SDL_IOWhence whence);
# 574 "include/SDL3/SDL_iostream.h"
extern Sint64 SDL_TellIO(SDL_IOStream *context);
# 604 "include/SDL3/SDL_iostream.h"
extern size_t SDL_ReadIO(SDL_IOStream *context, void *ptr, size_t size);
# 640 "include/SDL3/SDL_iostream.h"
extern size_t SDL_WriteIO(SDL_IOStream *context, const void *ptr, size_t size);
# 661 "include/SDL3/SDL_iostream.h"
extern size_t SDL_IOprintf(SDL_IOStream *context, const char *fmt, ...) __attribute__ (( format( __printf__, 2, 2 +1 )));
# 681 "include/SDL3/SDL_iostream.h"
extern size_t SDL_IOvprintf(SDL_IOStream *context, const char *fmt, va_list ap) __attribute__(( format( __printf__, 2, 0 )));
# 701 "include/SDL3/SDL_iostream.h"
extern bool SDL_FlushIO(SDL_IOStream *context);
# 727 "include/SDL3/SDL_iostream.h"
extern void * SDL_LoadFile_IO(SDL_IOStream *src, size_t *datasize, bool closeio);
# 750 "include/SDL3/SDL_iostream.h"
extern void * SDL_LoadFile(const char *file, size_t *datasize);
# 771 "include/SDL3/SDL_iostream.h"
extern bool SDL_SaveFile_IO(SDL_IOStream *src, const void *data, size_t datasize, bool closeio);
# 790 "include/SDL3/SDL_iostream.h"
extern bool SDL_SaveFile(const char *file, const void *data, size_t datasize);
# 816 "include/SDL3/SDL_iostream.h"
extern bool SDL_ReadU8(SDL_IOStream *src, Uint8 *value);
# 835 "include/SDL3/SDL_iostream.h"
extern bool SDL_ReadS8(SDL_IOStream *src, Sint8 *value);
# 858 "include/SDL3/SDL_iostream.h"
extern bool SDL_ReadU16LE(SDL_IOStream *src, Uint16 *value);
# 881 "include/SDL3/SDL_iostream.h"
extern bool SDL_ReadS16LE(SDL_IOStream *src, Sint16 *value);
# 904 "include/SDL3/SDL_iostream.h"
extern bool SDL_ReadU16BE(SDL_IOStream *src, Uint16 *value);
# 927 "include/SDL3/SDL_iostream.h"
extern bool SDL_ReadS16BE(SDL_IOStream *src, Sint16 *value);
# 950 "include/SDL3/SDL_iostream.h"
extern bool SDL_ReadU32LE(SDL_IOStream *src, Uint32 *value);
# 973 "include/SDL3/SDL_iostream.h"
extern bool SDL_ReadS32LE(SDL_IOStream *src, Sint32 *value);
# 996 "include/SDL3/SDL_iostream.h"
extern bool SDL_ReadU32BE(SDL_IOStream *src, Uint32 *value);
# 1019 "include/SDL3/SDL_iostream.h"
extern bool SDL_ReadS32BE(SDL_IOStream *src, Sint32 *value);
# 1042 "include/SDL3/SDL_iostream.h"
extern bool SDL_ReadU64LE(SDL_IOStream *src, Uint64 *value);
# 1065 "include/SDL3/SDL_iostream.h"
extern bool SDL_ReadS64LE(SDL_IOStream *src, Sint64 *value);
# 1088 "include/SDL3/SDL_iostream.h"
extern bool SDL_ReadU64BE(SDL_IOStream *src, Uint64 *value);
# 1111 "include/SDL3/SDL_iostream.h"
extern bool SDL_ReadS64BE(SDL_IOStream *src, Sint64 *value);
# 1133 "include/SDL3/SDL_iostream.h"
extern bool SDL_WriteU8(SDL_IOStream *dst, Uint8 value);
# 1147 "include/SDL3/SDL_iostream.h"
extern bool SDL_WriteS8(SDL_IOStream *dst, Sint8 value);
# 1166 "include/SDL3/SDL_iostream.h"
extern bool SDL_WriteU16LE(SDL_IOStream *dst, Uint16 value);
# 1185 "include/SDL3/SDL_iostream.h"
extern bool SDL_WriteS16LE(SDL_IOStream *dst, Sint16 value);
# 1203 "include/SDL3/SDL_iostream.h"
extern bool SDL_WriteU16BE(SDL_IOStream *dst, Uint16 value);
# 1221 "include/SDL3/SDL_iostream.h"
extern bool SDL_WriteS16BE(SDL_IOStream *dst, Sint16 value);
# 1240 "include/SDL3/SDL_iostream.h"
extern bool SDL_WriteU32LE(SDL_IOStream *dst, Uint32 value);
# 1259 "include/SDL3/SDL_iostream.h"
extern bool SDL_WriteS32LE(SDL_IOStream *dst, Sint32 value);
# 1277 "include/SDL3/SDL_iostream.h"
extern bool SDL_WriteU32BE(SDL_IOStream *dst, Uint32 value);
# 1295 "include/SDL3/SDL_iostream.h"
extern bool SDL_WriteS32BE(SDL_IOStream *dst, Sint32 value);
# 1314 "include/SDL3/SDL_iostream.h"
extern bool SDL_WriteU64LE(SDL_IOStream *dst, Uint64 value);
# 1333 "include/SDL3/SDL_iostream.h"
extern bool SDL_WriteS64LE(SDL_IOStream *dst, Sint64 value);
# 1351 "include/SDL3/SDL_iostream.h"
extern bool SDL_WriteU64BE(SDL_IOStream *dst, Uint64 value);
# 1369 "include/SDL3/SDL_iostream.h"
extern bool SDL_WriteS64BE(SDL_IOStream *dst, Sint64 value);







# 1 "include/SDL3/SDL_close_code.h" 1
# 1378 "include/SDL3/SDL_iostream.h" 2
# 137 "include/SDL3/SDL_audio.h" 2

# 1 "include/SDL3/SDL_begin_code.h" 1
# 139 "include/SDL3/SDL_audio.h" 2
# 221 "include/SDL3/SDL_audio.h"
typedef enum SDL_AudioFormat
{
    SDL_AUDIO_UNKNOWN = 0x0000u,
    SDL_AUDIO_U8 = 0x0008u,

    SDL_AUDIO_S8 = 0x8008u,

    SDL_AUDIO_S16LE = 0x8010u,

    SDL_AUDIO_S16BE = 0x9010u,

    SDL_AUDIO_S32LE = 0x8020u,

    SDL_AUDIO_S32BE = 0x9020u,

    SDL_AUDIO_F32LE = 0x8120u,

    SDL_AUDIO_F32BE = 0x9120u,




    SDL_AUDIO_S16 = SDL_AUDIO_S16LE,
    SDL_AUDIO_S32 = SDL_AUDIO_S32LE,
    SDL_AUDIO_F32 = SDL_AUDIO_F32LE





} SDL_AudioFormat;
# 374 "include/SDL3/SDL_audio.h"
typedef Uint32 SDL_AudioDeviceID;
# 405 "include/SDL3/SDL_audio.h"
typedef struct SDL_AudioSpec
{
    SDL_AudioFormat format;
    int channels;
    int freq;
} SDL_AudioSpec;
# 451 "include/SDL3/SDL_audio.h"
typedef struct SDL_AudioStream SDL_AudioStream;
# 477 "include/SDL3/SDL_audio.h"
extern int SDL_GetNumAudioDrivers(void);
# 501 "include/SDL3/SDL_audio.h"
extern const char * SDL_GetAudioDriver(int index);
# 517 "include/SDL3/SDL_audio.h"
extern const char * SDL_GetCurrentAudioDriver(void);
# 546 "include/SDL3/SDL_audio.h"
extern SDL_AudioDeviceID * SDL_GetAudioPlaybackDevices(int *count);
# 575 "include/SDL3/SDL_audio.h"
extern SDL_AudioDeviceID * SDL_GetAudioRecordingDevices(int *count);
# 600 "include/SDL3/SDL_audio.h"
extern const char * SDL_GetAudioDeviceName(SDL_AudioDeviceID devid);
# 635 "include/SDL3/SDL_audio.h"
extern bool SDL_GetAudioDeviceFormat(SDL_AudioDeviceID devid, SDL_AudioSpec *spec, int *sample_frames);
# 658 "include/SDL3/SDL_audio.h"
extern int * SDL_GetAudioDeviceChannelMap(SDL_AudioDeviceID devid, int *count);
# 734 "include/SDL3/SDL_audio.h"
extern SDL_AudioDeviceID SDL_OpenAudioDevice(SDL_AudioDeviceID devid, const SDL_AudioSpec *spec);
# 759 "include/SDL3/SDL_audio.h"
extern bool SDL_IsAudioDevicePhysical(SDL_AudioDeviceID devid);
# 773 "include/SDL3/SDL_audio.h"
extern bool SDL_IsAudioDevicePlayback(SDL_AudioDeviceID devid);
# 804 "include/SDL3/SDL_audio.h"
extern bool SDL_PauseAudioDevice(SDL_AudioDeviceID devid);
# 832 "include/SDL3/SDL_audio.h"
extern bool SDL_ResumeAudioDevice(SDL_AudioDeviceID devid);
# 854 "include/SDL3/SDL_audio.h"
extern bool SDL_AudioDevicePaused(SDL_AudioDeviceID devid);
# 877 "include/SDL3/SDL_audio.h"
extern float SDL_GetAudioDeviceGain(SDL_AudioDeviceID devid);
# 912 "include/SDL3/SDL_audio.h"
extern bool SDL_SetAudioDeviceGain(SDL_AudioDeviceID devid, float gain);
# 933 "include/SDL3/SDL_audio.h"
extern void SDL_CloseAudioDevice(SDL_AudioDeviceID devid);
# 973 "include/SDL3/SDL_audio.h"
extern bool SDL_BindAudioStreams(SDL_AudioDeviceID devid, SDL_AudioStream * const *streams, int num_streams);
# 994 "include/SDL3/SDL_audio.h"
extern bool SDL_BindAudioStream(SDL_AudioDeviceID devid, SDL_AudioStream *stream);
# 1015 "include/SDL3/SDL_audio.h"
extern void SDL_UnbindAudioStreams(SDL_AudioStream * const *streams, int num_streams);
# 1031 "include/SDL3/SDL_audio.h"
extern void SDL_UnbindAudioStream(SDL_AudioStream *stream);
# 1052 "include/SDL3/SDL_audio.h"
extern SDL_AudioDeviceID SDL_GetAudioStreamDevice(SDL_AudioStream *stream);
# 1074 "include/SDL3/SDL_audio.h"
extern SDL_AudioStream * SDL_CreateAudioStream(const SDL_AudioSpec *src_spec, const SDL_AudioSpec *dst_spec);
# 1098 "include/SDL3/SDL_audio.h"
extern SDL_PropertiesID SDL_GetAudioStreamProperties(SDL_AudioStream *stream);
# 1119 "include/SDL3/SDL_audio.h"
extern bool SDL_GetAudioStreamFormat(SDL_AudioStream *stream, SDL_AudioSpec *src_spec, SDL_AudioSpec *dst_spec);
# 1156 "include/SDL3/SDL_audio.h"
extern bool SDL_SetAudioStreamFormat(SDL_AudioStream *stream, const SDL_AudioSpec *src_spec, const SDL_AudioSpec *dst_spec);
# 1172 "include/SDL3/SDL_audio.h"
extern float SDL_GetAudioStreamFrequencyRatio(SDL_AudioStream *stream);
# 1200 "include/SDL3/SDL_audio.h"
extern bool SDL_SetAudioStreamFrequencyRatio(SDL_AudioStream *stream, float ratio);
# 1221 "include/SDL3/SDL_audio.h"
extern float SDL_GetAudioStreamGain(SDL_AudioStream *stream);
# 1246 "include/SDL3/SDL_audio.h"
extern bool SDL_SetAudioStreamGain(SDL_AudioStream *stream, float gain);
# 1270 "include/SDL3/SDL_audio.h"
extern int * SDL_GetAudioStreamInputChannelMap(SDL_AudioStream *stream, int *count);
# 1294 "include/SDL3/SDL_audio.h"
extern int * SDL_GetAudioStreamOutputChannelMap(SDL_AudioStream *stream, int *count);
# 1354 "include/SDL3/SDL_audio.h"
extern bool SDL_SetAudioStreamInputChannelMap(SDL_AudioStream *stream, const int *chmap, int count);
# 1412 "include/SDL3/SDL_audio.h"
extern bool SDL_SetAudioStreamOutputChannelMap(SDL_AudioStream *stream, const int *chmap, int count);
# 1442 "include/SDL3/SDL_audio.h"
extern bool SDL_PutAudioStreamData(SDL_AudioStream *stream, const void *buf, int len);
# 1472 "include/SDL3/SDL_audio.h"
typedef void ( *SDL_AudioStreamDataCompleteCallback)(void *userdata, const void *buf, int buflen);
# 1519 "include/SDL3/SDL_audio.h"
extern bool SDL_PutAudioStreamDataNoCopy(SDL_AudioStream *stream, const void *buf, int len, SDL_AudioStreamDataCompleteCallback callback, void *userdata);
# 1572 "include/SDL3/SDL_audio.h"
extern bool SDL_PutAudioStreamPlanarData(SDL_AudioStream *stream, const void * const *channel_buffers, int num_channels, int num_samples);
# 1602 "include/SDL3/SDL_audio.h"
extern int SDL_GetAudioStreamData(SDL_AudioStream *stream, void *buf, int len);
# 1628 "include/SDL3/SDL_audio.h"
extern int SDL_GetAudioStreamAvailable(SDL_AudioStream *stream);
# 1667 "include/SDL3/SDL_audio.h"
extern int SDL_GetAudioStreamQueued(SDL_AudioStream *stream);
# 1688 "include/SDL3/SDL_audio.h"
extern bool SDL_FlushAudioStream(SDL_AudioStream *stream);
# 1709 "include/SDL3/SDL_audio.h"
extern bool SDL_ClearAudioStream(SDL_AudioStream *stream);
# 1733 "include/SDL3/SDL_audio.h"
extern bool SDL_PauseAudioStreamDevice(SDL_AudioStream *stream);
# 1756 "include/SDL3/SDL_audio.h"
extern bool SDL_ResumeAudioStreamDevice(SDL_AudioStream *stream);
# 1775 "include/SDL3/SDL_audio.h"
extern bool SDL_AudioStreamDevicePaused(SDL_AudioStream *stream);
# 1804 "include/SDL3/SDL_audio.h"
extern bool SDL_LockAudioStream(SDL_AudioStream *stream);
# 1823 "include/SDL3/SDL_audio.h"
extern bool SDL_UnlockAudioStream(SDL_AudioStream *stream);
# 1865 "include/SDL3/SDL_audio.h"
typedef void ( *SDL_AudioStreamCallback)(void *userdata, SDL_AudioStream *stream, int additional_amount, int total_amount);
# 1911 "include/SDL3/SDL_audio.h"
extern bool SDL_SetAudioStreamGetCallback(SDL_AudioStream *stream, SDL_AudioStreamCallback callback, void *userdata);
# 1960 "include/SDL3/SDL_audio.h"
extern bool SDL_SetAudioStreamPutCallback(SDL_AudioStream *stream, SDL_AudioStreamCallback callback, void *userdata);
# 1982 "include/SDL3/SDL_audio.h"
extern void SDL_DestroyAudioStream(SDL_AudioStream *stream);
# 2045 "include/SDL3/SDL_audio.h"
extern SDL_AudioStream * SDL_OpenAudioDeviceStream(SDL_AudioDeviceID devid, const SDL_AudioSpec *spec, SDL_AudioStreamCallback callback, void *userdata);
# 2082 "include/SDL3/SDL_audio.h"
typedef void ( *SDL_AudioPostmixCallback)(void *userdata, const SDL_AudioSpec *spec, float *buffer, int buflen);
# 2136 "include/SDL3/SDL_audio.h"
extern bool SDL_SetAudioPostmixCallback(SDL_AudioDeviceID devid, SDL_AudioPostmixCallback callback, void *userdata);
# 2217 "include/SDL3/SDL_audio.h"
extern bool SDL_LoadWAV_IO(SDL_IOStream *src, bool closeio, SDL_AudioSpec *spec, Uint8 **audio_buf, Uint32 *audio_len);
# 2253 "include/SDL3/SDL_audio.h"
extern bool SDL_LoadWAV(const char *path, SDL_AudioSpec *spec, Uint8 **audio_buf, Uint32 *audio_len);
# 2289 "include/SDL3/SDL_audio.h"
extern bool SDL_MixAudio(Uint8 *dst, const Uint8 *src, SDL_AudioFormat format, Uint32 len, float volume);
# 2319 "include/SDL3/SDL_audio.h"
extern bool SDL_ConvertAudioSamples(const SDL_AudioSpec *src_spec, const Uint8 *src_data, int src_len, const SDL_AudioSpec *dst_spec, Uint8 **dst_data, int *dst_len);
# 2332 "include/SDL3/SDL_audio.h"
extern const char * SDL_GetAudioFormatName(SDL_AudioFormat format);
# 2348 "include/SDL3/SDL_audio.h"
extern int SDL_GetSilenceValueForFormat(SDL_AudioFormat format);






# 1 "include/SDL3/SDL_close_code.h" 1
# 2356 "include/SDL3/SDL_audio.h" 2
# 39 "include/SDL3/SDL.h" 2
# 1 "include/SDL3/SDL_bits.h" 1
# 33 "include/SDL3/SDL_bits.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 34 "include/SDL3/SDL_bits.h" 2
# 66 "include/SDL3/SDL_bits.h"
__attribute__((always_inline)) static __inline__ int SDL_MostSignificantBitIndex32(Uint32 x)
{




    if (x == 0) {
        return -1;
    }
    return 31 - __builtin_clz(x);
# 113 "include/SDL3/SDL_bits.h"
}
# 133 "include/SDL3/SDL_bits.h"
__attribute__((always_inline)) static __inline__ bool SDL_HasExactlyOneBitSet32(Uint32 x)
{
    if (x && !(x & (x - 1))) {
        return true;
    }
    return false;
}





# 1 "include/SDL3/SDL_close_code.h" 1
# 146 "include/SDL3/SDL_bits.h" 2
# 40 "include/SDL3/SDL.h" 2
# 1 "include/SDL3/SDL_blendmode.h" 1
# 35 "include/SDL3/SDL_blendmode.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 36 "include/SDL3/SDL_blendmode.h" 2
# 52 "include/SDL3/SDL_blendmode.h"
typedef Uint32 SDL_BlendMode;
# 69 "include/SDL3/SDL_blendmode.h"
typedef enum SDL_BlendOperation
{
    SDL_BLENDOPERATION_ADD = 0x1,
    SDL_BLENDOPERATION_SUBTRACT = 0x2,
    SDL_BLENDOPERATION_REV_SUBTRACT = 0x3,
    SDL_BLENDOPERATION_MINIMUM = 0x4,
    SDL_BLENDOPERATION_MAXIMUM = 0x5
} SDL_BlendOperation;
# 88 "include/SDL3/SDL_blendmode.h"
typedef enum SDL_BlendFactor
{
    SDL_BLENDFACTOR_ZERO = 0x1,
    SDL_BLENDFACTOR_ONE = 0x2,
    SDL_BLENDFACTOR_SRC_COLOR = 0x3,
    SDL_BLENDFACTOR_ONE_MINUS_SRC_COLOR = 0x4,
    SDL_BLENDFACTOR_SRC_ALPHA = 0x5,
    SDL_BLENDFACTOR_ONE_MINUS_SRC_ALPHA = 0x6,
    SDL_BLENDFACTOR_DST_COLOR = 0x7,
    SDL_BLENDFACTOR_ONE_MINUS_DST_COLOR = 0x8,
    SDL_BLENDFACTOR_DST_ALPHA = 0x9,
    SDL_BLENDFACTOR_ONE_MINUS_DST_ALPHA = 0xA
} SDL_BlendFactor;
# 189 "include/SDL3/SDL_blendmode.h"
extern SDL_BlendMode SDL_ComposeCustomBlendMode(SDL_BlendFactor srcColorFactor,
                                                                 SDL_BlendFactor dstColorFactor,
                                                                 SDL_BlendOperation colorOperation,
                                                                 SDL_BlendFactor srcAlphaFactor,
                                                                 SDL_BlendFactor dstAlphaFactor,
                                                                 SDL_BlendOperation alphaOperation);





# 1 "include/SDL3/SDL_close_code.h" 1
# 201 "include/SDL3/SDL_blendmode.h" 2
# 41 "include/SDL3/SDL.h" 2
# 1 "include/SDL3/SDL_camera.h" 1
# 73 "include/SDL3/SDL_camera.h"
# 1 "include/SDL3/SDL_pixels.h" 1
# 87 "include/SDL3/SDL_pixels.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 88 "include/SDL3/SDL_pixels.h" 2
# 134 "include/SDL3/SDL_pixels.h"
typedef enum SDL_PixelType
{
    SDL_PIXELTYPE_UNKNOWN,
    SDL_PIXELTYPE_INDEX1,
    SDL_PIXELTYPE_INDEX4,
    SDL_PIXELTYPE_INDEX8,
    SDL_PIXELTYPE_PACKED8,
    SDL_PIXELTYPE_PACKED16,
    SDL_PIXELTYPE_PACKED32,
    SDL_PIXELTYPE_ARRAYU8,
    SDL_PIXELTYPE_ARRAYU16,
    SDL_PIXELTYPE_ARRAYU32,
    SDL_PIXELTYPE_ARRAYF16,
    SDL_PIXELTYPE_ARRAYF32,

    SDL_PIXELTYPE_INDEX2
} SDL_PixelType;






typedef enum SDL_BitmapOrder
{
    SDL_BITMAPORDER_NONE,
    SDL_BITMAPORDER_4321,
    SDL_BITMAPORDER_1234
} SDL_BitmapOrder;






typedef enum SDL_PackedOrder
{
    SDL_PACKEDORDER_NONE,
    SDL_PACKEDORDER_XRGB,
    SDL_PACKEDORDER_RGBX,
    SDL_PACKEDORDER_ARGB,
    SDL_PACKEDORDER_RGBA,
    SDL_PACKEDORDER_XBGR,
    SDL_PACKEDORDER_BGRX,
    SDL_PACKEDORDER_ABGR,
    SDL_PACKEDORDER_BGRA
} SDL_PackedOrder;






typedef enum SDL_ArrayOrder
{
    SDL_ARRAYORDER_NONE,
    SDL_ARRAYORDER_RGB,
    SDL_ARRAYORDER_RGBA,
    SDL_ARRAYORDER_ARGB,
    SDL_ARRAYORDER_BGR,
    SDL_ARRAYORDER_BGRA,
    SDL_ARRAYORDER_ABGR
} SDL_ArrayOrder;






typedef enum SDL_PackedLayout
{
    SDL_PACKEDLAYOUT_NONE,
    SDL_PACKEDLAYOUT_332,
    SDL_PACKEDLAYOUT_4444,
    SDL_PACKEDLAYOUT_1555,
    SDL_PACKEDLAYOUT_5551,
    SDL_PACKEDLAYOUT_565,
    SDL_PACKEDLAYOUT_8888,
    SDL_PACKEDLAYOUT_2101010,
    SDL_PACKEDLAYOUT_1010102
} SDL_PackedLayout;
# 548 "include/SDL3/SDL_pixels.h"
typedef enum SDL_PixelFormat
{
    SDL_PIXELFORMAT_UNKNOWN = 0,
    SDL_PIXELFORMAT_INDEX1LSB = 0x11100100u,

    SDL_PIXELFORMAT_INDEX1MSB = 0x11200100u,

    SDL_PIXELFORMAT_INDEX2LSB = 0x1c100200u,

    SDL_PIXELFORMAT_INDEX2MSB = 0x1c200200u,

    SDL_PIXELFORMAT_INDEX4LSB = 0x12100400u,

    SDL_PIXELFORMAT_INDEX4MSB = 0x12200400u,

    SDL_PIXELFORMAT_INDEX8 = 0x13000801u,

    SDL_PIXELFORMAT_RGB332 = 0x14110801u,

    SDL_PIXELFORMAT_XRGB4444 = 0x15120c02u,

    SDL_PIXELFORMAT_XBGR4444 = 0x15520c02u,

    SDL_PIXELFORMAT_XRGB1555 = 0x15130f02u,

    SDL_PIXELFORMAT_XBGR1555 = 0x15530f02u,

    SDL_PIXELFORMAT_ARGB4444 = 0x15321002u,

    SDL_PIXELFORMAT_RGBA4444 = 0x15421002u,

    SDL_PIXELFORMAT_ABGR4444 = 0x15721002u,

    SDL_PIXELFORMAT_BGRA4444 = 0x15821002u,

    SDL_PIXELFORMAT_ARGB1555 = 0x15331002u,

    SDL_PIXELFORMAT_RGBA5551 = 0x15441002u,

    SDL_PIXELFORMAT_ABGR1555 = 0x15731002u,

    SDL_PIXELFORMAT_BGRA5551 = 0x15841002u,

    SDL_PIXELFORMAT_RGB565 = 0x15151002u,

    SDL_PIXELFORMAT_BGR565 = 0x15551002u,

    SDL_PIXELFORMAT_RGB24 = 0x17101803u,

    SDL_PIXELFORMAT_BGR24 = 0x17401803u,

    SDL_PIXELFORMAT_XRGB8888 = 0x16161804u,

    SDL_PIXELFORMAT_RGBX8888 = 0x16261804u,

    SDL_PIXELFORMAT_XBGR8888 = 0x16561804u,

    SDL_PIXELFORMAT_BGRX8888 = 0x16661804u,

    SDL_PIXELFORMAT_ARGB8888 = 0x16362004u,

    SDL_PIXELFORMAT_RGBA8888 = 0x16462004u,

    SDL_PIXELFORMAT_ABGR8888 = 0x16762004u,

    SDL_PIXELFORMAT_BGRA8888 = 0x16862004u,

    SDL_PIXELFORMAT_XRGB2101010 = 0x16172004u,

    SDL_PIXELFORMAT_XBGR2101010 = 0x16572004u,

    SDL_PIXELFORMAT_ARGB2101010 = 0x16372004u,

    SDL_PIXELFORMAT_ABGR2101010 = 0x16772004u,

    SDL_PIXELFORMAT_RGB48 = 0x18103006u,

    SDL_PIXELFORMAT_BGR48 = 0x18403006u,

    SDL_PIXELFORMAT_RGBA64 = 0x18204008u,

    SDL_PIXELFORMAT_ARGB64 = 0x18304008u,

    SDL_PIXELFORMAT_BGRA64 = 0x18504008u,

    SDL_PIXELFORMAT_ABGR64 = 0x18604008u,

    SDL_PIXELFORMAT_RGB48_FLOAT = 0x1a103006u,

    SDL_PIXELFORMAT_BGR48_FLOAT = 0x1a403006u,

    SDL_PIXELFORMAT_RGBA64_FLOAT = 0x1a204008u,

    SDL_PIXELFORMAT_ARGB64_FLOAT = 0x1a304008u,

    SDL_PIXELFORMAT_BGRA64_FLOAT = 0x1a504008u,

    SDL_PIXELFORMAT_ABGR64_FLOAT = 0x1a604008u,

    SDL_PIXELFORMAT_RGB96_FLOAT = 0x1b10600cu,

    SDL_PIXELFORMAT_BGR96_FLOAT = 0x1b40600cu,

    SDL_PIXELFORMAT_RGBA128_FLOAT = 0x1b208010u,

    SDL_PIXELFORMAT_ARGB128_FLOAT = 0x1b308010u,

    SDL_PIXELFORMAT_BGRA128_FLOAT = 0x1b508010u,

    SDL_PIXELFORMAT_ABGR128_FLOAT = 0x1b608010u,


    SDL_PIXELFORMAT_YV12 = 0x32315659u,

    SDL_PIXELFORMAT_IYUV = 0x56555949u,

    SDL_PIXELFORMAT_YUY2 = 0x32595559u,

    SDL_PIXELFORMAT_UYVY = 0x59565955u,

    SDL_PIXELFORMAT_YVYU = 0x55595659u,

    SDL_PIXELFORMAT_NV12 = 0x3231564eu,

    SDL_PIXELFORMAT_NV21 = 0x3132564eu,

    SDL_PIXELFORMAT_P010 = 0x30313050u,

    SDL_PIXELFORMAT_EXTERNAL_OES = 0x2053454fu,


    SDL_PIXELFORMAT_MJPG = 0x47504a4du,
# 693 "include/SDL3/SDL_pixels.h"
    SDL_PIXELFORMAT_RGBA32 = SDL_PIXELFORMAT_ABGR8888,
    SDL_PIXELFORMAT_ARGB32 = SDL_PIXELFORMAT_BGRA8888,
    SDL_PIXELFORMAT_BGRA32 = SDL_PIXELFORMAT_ARGB8888,
    SDL_PIXELFORMAT_ABGR32 = SDL_PIXELFORMAT_RGBA8888,
    SDL_PIXELFORMAT_RGBX32 = SDL_PIXELFORMAT_XBGR8888,
    SDL_PIXELFORMAT_XRGB32 = SDL_PIXELFORMAT_BGRX8888,
    SDL_PIXELFORMAT_BGRX32 = SDL_PIXELFORMAT_XRGB8888,
    SDL_PIXELFORMAT_XBGR32 = SDL_PIXELFORMAT_RGBX8888

} SDL_PixelFormat;






typedef enum SDL_ColorType
{
    SDL_COLOR_TYPE_UNKNOWN = 0,
    SDL_COLOR_TYPE_RGB = 1,
    SDL_COLOR_TYPE_YCBCR = 2
} SDL_ColorType;







typedef enum SDL_ColorRange
{
    SDL_COLOR_RANGE_UNKNOWN = 0,
    SDL_COLOR_RANGE_LIMITED = 1,
    SDL_COLOR_RANGE_FULL = 2
} SDL_ColorRange;







typedef enum SDL_ColorPrimaries
{
    SDL_COLOR_PRIMARIES_UNKNOWN = 0,
    SDL_COLOR_PRIMARIES_BT709 = 1,
    SDL_COLOR_PRIMARIES_UNSPECIFIED = 2,
    SDL_COLOR_PRIMARIES_BT470M = 4,
    SDL_COLOR_PRIMARIES_BT470BG = 5,
    SDL_COLOR_PRIMARIES_BT601 = 6,
    SDL_COLOR_PRIMARIES_SMPTE240 = 7,
    SDL_COLOR_PRIMARIES_GENERIC_FILM = 8,
    SDL_COLOR_PRIMARIES_BT2020 = 9,
    SDL_COLOR_PRIMARIES_XYZ = 10,
    SDL_COLOR_PRIMARIES_SMPTE431 = 11,
    SDL_COLOR_PRIMARIES_SMPTE432 = 12,
    SDL_COLOR_PRIMARIES_EBU3213 = 22,
    SDL_COLOR_PRIMARIES_CUSTOM = 31
} SDL_ColorPrimaries;
# 760 "include/SDL3/SDL_pixels.h"
typedef enum SDL_TransferCharacteristics
{
    SDL_TRANSFER_CHARACTERISTICS_UNKNOWN = 0,
    SDL_TRANSFER_CHARACTERISTICS_BT709 = 1,
    SDL_TRANSFER_CHARACTERISTICS_UNSPECIFIED = 2,
    SDL_TRANSFER_CHARACTERISTICS_GAMMA22 = 4,
    SDL_TRANSFER_CHARACTERISTICS_GAMMA28 = 5,
    SDL_TRANSFER_CHARACTERISTICS_BT601 = 6,
    SDL_TRANSFER_CHARACTERISTICS_SMPTE240 = 7,
    SDL_TRANSFER_CHARACTERISTICS_LINEAR = 8,
    SDL_TRANSFER_CHARACTERISTICS_LOG100 = 9,
    SDL_TRANSFER_CHARACTERISTICS_LOG100_SQRT10 = 10,
    SDL_TRANSFER_CHARACTERISTICS_IEC61966 = 11,
    SDL_TRANSFER_CHARACTERISTICS_BT1361 = 12,
    SDL_TRANSFER_CHARACTERISTICS_SRGB = 13,
    SDL_TRANSFER_CHARACTERISTICS_BT2020_10BIT = 14,
    SDL_TRANSFER_CHARACTERISTICS_BT2020_12BIT = 15,
    SDL_TRANSFER_CHARACTERISTICS_PQ = 16,
    SDL_TRANSFER_CHARACTERISTICS_SMPTE428 = 17,
    SDL_TRANSFER_CHARACTERISTICS_HLG = 18,
    SDL_TRANSFER_CHARACTERISTICS_CUSTOM = 31
} SDL_TransferCharacteristics;
# 790 "include/SDL3/SDL_pixels.h"
typedef enum SDL_MatrixCoefficients
{
    SDL_MATRIX_COEFFICIENTS_IDENTITY = 0,
    SDL_MATRIX_COEFFICIENTS_BT709 = 1,
    SDL_MATRIX_COEFFICIENTS_UNSPECIFIED = 2,
    SDL_MATRIX_COEFFICIENTS_FCC = 4,
    SDL_MATRIX_COEFFICIENTS_BT470BG = 5,
    SDL_MATRIX_COEFFICIENTS_BT601 = 6,
    SDL_MATRIX_COEFFICIENTS_SMPTE240 = 7,
    SDL_MATRIX_COEFFICIENTS_YCGCO = 8,
    SDL_MATRIX_COEFFICIENTS_BT2020_NCL = 9,
    SDL_MATRIX_COEFFICIENTS_BT2020_CL = 10,
    SDL_MATRIX_COEFFICIENTS_SMPTE2085 = 11,
    SDL_MATRIX_COEFFICIENTS_CHROMA_DERIVED_NCL = 12,
    SDL_MATRIX_COEFFICIENTS_CHROMA_DERIVED_CL = 13,
    SDL_MATRIX_COEFFICIENTS_ICTCP = 14,
    SDL_MATRIX_COEFFICIENTS_CUSTOM = 31
} SDL_MatrixCoefficients;






typedef enum SDL_ChromaLocation
{
    SDL_CHROMA_LOCATION_NONE = 0,
    SDL_CHROMA_LOCATION_LEFT = 1,
    SDL_CHROMA_LOCATION_CENTER = 2,
    SDL_CHROMA_LOCATION_TOPLEFT = 3
} SDL_ChromaLocation;
# 1011 "include/SDL3/SDL_pixels.h"
typedef enum SDL_Colorspace
{
    SDL_COLORSPACE_UNKNOWN = 0,


    SDL_COLORSPACE_SRGB = 0x120005a0u,
# 1025 "include/SDL3/SDL_pixels.h"
    SDL_COLORSPACE_SRGB_LINEAR = 0x12000500u,
# 1034 "include/SDL3/SDL_pixels.h"
    SDL_COLORSPACE_HDR10 = 0x12002600u,







    SDL_COLORSPACE_JPEG = 0x220004c6u,







    SDL_COLORSPACE_BT601_LIMITED = 0x211018c6u,







    SDL_COLORSPACE_BT601_FULL = 0x221018c6u,







    SDL_COLORSPACE_BT709_LIMITED = 0x21100421u,







    SDL_COLORSPACE_BT709_FULL = 0x22100421u,







    SDL_COLORSPACE_BT2020_LIMITED = 0x21102609u,







    SDL_COLORSPACE_BT2020_FULL = 0x22102609u,







    SDL_COLORSPACE_RGB_DEFAULT = SDL_COLORSPACE_SRGB,
    SDL_COLORSPACE_YUV_DEFAULT = SDL_COLORSPACE_BT601_LIMITED
} SDL_Colorspace;
# 1112 "include/SDL3/SDL_pixels.h"
typedef struct SDL_Color
{
    Uint8 r;
    Uint8 g;
    Uint8 b;
    Uint8 a;
} SDL_Color;







typedef struct SDL_FColor
{
    float r;
    float g;
    float b;
    float a;
} SDL_FColor;
# 1141 "include/SDL3/SDL_pixels.h"
typedef struct SDL_Palette
{
    int ncolors;
    SDL_Color *colors;
    Uint32 version;
    int refcount;
} SDL_Palette;






typedef struct SDL_PixelFormatDetails
{
    SDL_PixelFormat format;
    Uint8 bits_per_pixel;
    Uint8 bytes_per_pixel;
    Uint8 padding[2];
    Uint32 Rmask;
    Uint32 Gmask;
    Uint32 Bmask;
    Uint32 Amask;
    Uint8 Rbits;
    Uint8 Gbits;
    Uint8 Bbits;
    Uint8 Abits;
    Uint8 Rshift;
    Uint8 Gshift;
    Uint8 Bshift;
    Uint8 Ashift;
} SDL_PixelFormatDetails;
# 1185 "include/SDL3/SDL_pixels.h"
extern const char * SDL_GetPixelFormatName(SDL_PixelFormat format);
# 1205 "include/SDL3/SDL_pixels.h"
extern bool SDL_GetMasksForPixelFormat(SDL_PixelFormat format, int *bpp, Uint32 *Rmask, Uint32 *Gmask, Uint32 *Bmask, Uint32 *Amask);
# 1227 "include/SDL3/SDL_pixels.h"
extern SDL_PixelFormat SDL_GetPixelFormatForMasks(int bpp, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask);
# 1244 "include/SDL3/SDL_pixels.h"
extern const SDL_PixelFormatDetails * SDL_GetPixelFormatDetails(SDL_PixelFormat format);
# 1264 "include/SDL3/SDL_pixels.h"
extern SDL_Palette * SDL_CreatePalette(int ncolors);
# 1281 "include/SDL3/SDL_pixels.h"
extern bool SDL_SetPaletteColors(SDL_Palette *palette, const SDL_Color *colors, int firstcolor, int ncolors);
# 1295 "include/SDL3/SDL_pixels.h"
extern void SDL_DestroyPalette(SDL_Palette *palette);
# 1333 "include/SDL3/SDL_pixels.h"
extern Uint32 SDL_MapRGB(const SDL_PixelFormatDetails *format, const SDL_Palette *palette, Uint8 r, Uint8 g, Uint8 b);
# 1372 "include/SDL3/SDL_pixels.h"
extern Uint32 SDL_MapRGBA(const SDL_PixelFormatDetails *format, const SDL_Palette *palette, Uint8 r, Uint8 g, Uint8 b, Uint8 a);
# 1400 "include/SDL3/SDL_pixels.h"
extern void SDL_GetRGB(Uint32 pixelvalue, const SDL_PixelFormatDetails *format, const SDL_Palette *palette, Uint8 *r, Uint8 *g, Uint8 *b);
# 1432 "include/SDL3/SDL_pixels.h"
extern void SDL_GetRGBA(Uint32 pixelvalue, const SDL_PixelFormatDetails *format, const SDL_Palette *palette, Uint8 *r, Uint8 *g, Uint8 *b, Uint8 *a);






# 1 "include/SDL3/SDL_close_code.h" 1
# 1440 "include/SDL3/SDL_pixels.h" 2
# 74 "include/SDL3/SDL_camera.h" 2

# 1 "include/SDL3/SDL_surface.h" 1
# 52 "include/SDL3/SDL_surface.h"
# 1 "include/SDL3/SDL_rect.h" 1
# 35 "include/SDL3/SDL_rect.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 36 "include/SDL3/SDL_rect.h" 2
# 49 "include/SDL3/SDL_rect.h"
typedef struct SDL_Point
{
    int x;
    int y;
} SDL_Point;
# 63 "include/SDL3/SDL_rect.h"
typedef struct SDL_FPoint
{
    float x;
    float y;
} SDL_FPoint;
# 83 "include/SDL3/SDL_rect.h"
typedef struct SDL_Rect
{
    int x, y;
    int w, h;
} SDL_Rect;
# 109 "include/SDL3/SDL_rect.h"
typedef struct SDL_FRect
{
    float x;
    float y;
    float w;
    float h;
} SDL_FRect;
# 129 "include/SDL3/SDL_rect.h"
__attribute__((always_inline)) static __inline__ void SDL_RectToFRect(const SDL_Rect *rect, SDL_FRect *frect)
{
    frect->x = ((float)(rect->x));
    frect->y = ((float)(rect->y));
    frect->w = ((float)(rect->w));
    frect->h = ((float)(rect->h));
}
# 158 "include/SDL3/SDL_rect.h"
__attribute__((always_inline)) static __inline__ bool SDL_PointInRect(const SDL_Point *p, const SDL_Rect *r)
{
    return ( p && r && (p->x >= r->x) && (p->x < (r->x + r->w)) &&
             (p->y >= r->y) && (p->y < (r->y + r->h)) ) ? true : false;
}
# 182 "include/SDL3/SDL_rect.h"
__attribute__((always_inline)) static __inline__ bool SDL_RectEmpty(const SDL_Rect *r)
{
    return ((!r) || (r->w <= 0) || (r->h <= 0)) ? true : false;
}
# 206 "include/SDL3/SDL_rect.h"
__attribute__((always_inline)) static __inline__ bool SDL_RectsEqual(const SDL_Rect *a, const SDL_Rect *b)
{
    return (a && b && (a->x == b->x) && (a->y == b->y) &&
            (a->w == b->w) && (a->h == b->h)) ? true : false;
}
# 227 "include/SDL3/SDL_rect.h"
extern bool SDL_HasRectIntersection(const SDL_Rect *A, const SDL_Rect *B);
# 244 "include/SDL3/SDL_rect.h"
extern bool SDL_GetRectIntersection(const SDL_Rect *A, const SDL_Rect *B, SDL_Rect *result);
# 258 "include/SDL3/SDL_rect.h"
extern bool SDL_GetRectUnion(const SDL_Rect *A, const SDL_Rect *B, SDL_Rect *result);
# 277 "include/SDL3/SDL_rect.h"
extern bool SDL_GetRectEnclosingPoints(const SDL_Point *points, int count, const SDL_Rect *clip, SDL_Rect *result);
# 297 "include/SDL3/SDL_rect.h"
extern bool SDL_GetRectAndLineIntersection(const SDL_Rect *rect, int *X1, int *Y1, int *X2, int *Y2);
# 323 "include/SDL3/SDL_rect.h"
__attribute__((always_inline)) static __inline__ bool SDL_PointInRectFloat(const SDL_FPoint *p, const SDL_FRect *r)
{
    return ( p && r && (p->x >= r->x) && (p->x <= (r->x + r->w)) &&
             (p->y >= r->y) && (p->y <= (r->y + r->h)) ) ? true : false;
}
# 347 "include/SDL3/SDL_rect.h"
__attribute__((always_inline)) static __inline__ bool SDL_RectEmptyFloat(const SDL_FRect *r)
{
    return ((!r) || (r->w < 0.0f) || (r->h < 0.0f)) ? true : false;
}
# 377 "include/SDL3/SDL_rect.h"
__attribute__((always_inline)) static __inline__ bool SDL_RectsEqualEpsilon(const SDL_FRect *a, const SDL_FRect *b, float epsilon)
{
    return (a && b && ((a == b) ||
            ((SDL_fabsf(a->x - b->x) <= epsilon) &&
            (SDL_fabsf(a->y - b->y) <= epsilon) &&
            (SDL_fabsf(a->w - b->w) <= epsilon) &&
            (SDL_fabsf(a->h - b->h) <= epsilon))))
            ? true : false;
}
# 412 "include/SDL3/SDL_rect.h"
__attribute__((always_inline)) static __inline__ bool SDL_RectsEqualFloat(const SDL_FRect *a, const SDL_FRect *b)
{
    return SDL_RectsEqualEpsilon(a, b, 1.1920928955078125e-07F);
}
# 430 "include/SDL3/SDL_rect.h"
extern bool SDL_HasRectIntersectionFloat(const SDL_FRect *A, const SDL_FRect *B);
# 447 "include/SDL3/SDL_rect.h"
extern bool SDL_GetRectIntersectionFloat(const SDL_FRect *A, const SDL_FRect *B, SDL_FRect *result);
# 461 "include/SDL3/SDL_rect.h"
extern bool SDL_GetRectUnionFloat(const SDL_FRect *A, const SDL_FRect *B, SDL_FRect *result);
# 481 "include/SDL3/SDL_rect.h"
extern bool SDL_GetRectEnclosingPointsFloat(const SDL_FPoint *points, int count, const SDL_FRect *clip, SDL_FRect *result);
# 502 "include/SDL3/SDL_rect.h"
extern bool SDL_GetRectAndLineIntersectionFloat(const SDL_FRect *rect, float *X1, float *Y1, float *X2, float *Y2);





# 1 "include/SDL3/SDL_close_code.h" 1
# 509 "include/SDL3/SDL_rect.h" 2
# 53 "include/SDL3/SDL_surface.h" 2


# 1 "include/SDL3/SDL_begin_code.h" 1
# 56 "include/SDL3/SDL_surface.h" 2
# 68 "include/SDL3/SDL_surface.h"
typedef Uint32 SDL_SurfaceFlags;
# 87 "include/SDL3/SDL_surface.h"
typedef enum SDL_ScaleMode
{
    SDL_SCALEMODE_INVALID = -1,
    SDL_SCALEMODE_NEAREST,
    SDL_SCALEMODE_LINEAR,
    SDL_SCALEMODE_PIXELART
} SDL_ScaleMode;






typedef enum SDL_FlipMode
{
    SDL_FLIP_NONE,
    SDL_FLIP_HORIZONTAL,
    SDL_FLIP_VERTICAL,
    SDL_FLIP_HORIZONTAL_AND_VERTICAL = (SDL_FLIP_HORIZONTAL | SDL_FLIP_VERTICAL)
} SDL_FlipMode;
# 138 "include/SDL3/SDL_surface.h"
struct SDL_Surface
{
    SDL_SurfaceFlags flags;
    SDL_PixelFormat format;
    int w;
    int h;
    int pitch;
    void *pixels;

    int refcount;

    void *reserved;
};


typedef struct SDL_Surface SDL_Surface;
# 173 "include/SDL3/SDL_surface.h"
extern SDL_Surface * SDL_CreateSurface(int width, int height, SDL_PixelFormat format);
# 203 "include/SDL3/SDL_surface.h"
extern SDL_Surface * SDL_CreateSurfaceFrom(int width, int height, SDL_PixelFormat format, void *pixels, int pitch);
# 219 "include/SDL3/SDL_surface.h"
extern void SDL_DestroySurface(SDL_Surface *surface);
# 259 "include/SDL3/SDL_surface.h"
extern SDL_PropertiesID SDL_GetSurfaceProperties(SDL_Surface *surface);
# 287 "include/SDL3/SDL_surface.h"
extern bool SDL_SetSurfaceColorspace(SDL_Surface *surface, SDL_Colorspace colorspace);
# 307 "include/SDL3/SDL_surface.h"
extern SDL_Colorspace SDL_GetSurfaceColorspace(SDL_Surface *surface);
# 338 "include/SDL3/SDL_surface.h"
extern SDL_Palette * SDL_CreateSurfacePalette(SDL_Surface *surface);
# 361 "include/SDL3/SDL_surface.h"
extern bool SDL_SetSurfacePalette(SDL_Surface *surface, SDL_Palette *palette);
# 376 "include/SDL3/SDL_surface.h"
extern SDL_Palette * SDL_GetSurfacePalette(SDL_Surface *surface);
# 404 "include/SDL3/SDL_surface.h"
extern bool SDL_AddSurfaceAlternateImage(SDL_Surface *surface, SDL_Surface *image);
# 420 "include/SDL3/SDL_surface.h"
extern bool SDL_SurfaceHasAlternateImages(SDL_Surface *surface);
# 448 "include/SDL3/SDL_surface.h"
extern SDL_Surface ** SDL_GetSurfaceImages(SDL_Surface *surface, int *count);
# 467 "include/SDL3/SDL_surface.h"
extern void SDL_RemoveSurfaceAlternateImages(SDL_Surface *surface);
# 495 "include/SDL3/SDL_surface.h"
extern bool SDL_LockSurface(SDL_Surface *surface);
# 510 "include/SDL3/SDL_surface.h"
extern void SDL_UnlockSurface(SDL_Surface *surface);
# 531 "include/SDL3/SDL_surface.h"
extern SDL_Surface * SDL_LoadSurface_IO(SDL_IOStream *src, bool closeio);
# 550 "include/SDL3/SDL_surface.h"
extern SDL_Surface * SDL_LoadSurface(const char *file);
# 572 "include/SDL3/SDL_surface.h"
extern SDL_Surface * SDL_LoadBMP_IO(SDL_IOStream *src, bool closeio);
# 592 "include/SDL3/SDL_surface.h"
extern SDL_Surface * SDL_LoadBMP(const char *file);
# 618 "include/SDL3/SDL_surface.h"
extern bool SDL_SaveBMP_IO(SDL_Surface *surface, SDL_IOStream *dst, bool closeio);
# 642 "include/SDL3/SDL_surface.h"
extern bool SDL_SaveBMP(SDL_Surface *surface, const char *file);
# 668 "include/SDL3/SDL_surface.h"
extern SDL_Surface * SDL_LoadPNG_IO(SDL_IOStream *src, bool closeio);
# 692 "include/SDL3/SDL_surface.h"
extern SDL_Surface * SDL_LoadPNG(const char *file);
# 712 "include/SDL3/SDL_surface.h"
extern bool SDL_SavePNG_IO(SDL_Surface *surface, SDL_IOStream *dst, bool closeio);
# 730 "include/SDL3/SDL_surface.h"
extern bool SDL_SavePNG(SDL_Surface *surface, const char *file);
# 752 "include/SDL3/SDL_surface.h"
extern bool SDL_SetSurfaceRLE(SDL_Surface *surface, bool enabled);
# 768 "include/SDL3/SDL_surface.h"
extern bool SDL_SurfaceHasRLE(SDL_Surface *surface);
# 795 "include/SDL3/SDL_surface.h"
extern bool SDL_SetSurfaceColorKey(SDL_Surface *surface, bool enabled, Uint32 key);
# 812 "include/SDL3/SDL_surface.h"
extern bool SDL_SurfaceHasColorKey(SDL_Surface *surface);
# 834 "include/SDL3/SDL_surface.h"
extern bool SDL_GetSurfaceColorKey(SDL_Surface *surface, Uint32 *key);
# 860 "include/SDL3/SDL_surface.h"
extern bool SDL_SetSurfaceColorMod(SDL_Surface *surface, Uint8 r, Uint8 g, Uint8 b);
# 881 "include/SDL3/SDL_surface.h"
extern bool SDL_GetSurfaceColorMod(SDL_Surface *surface, Uint8 *r, Uint8 *g, Uint8 *b);
# 904 "include/SDL3/SDL_surface.h"
extern bool SDL_SetSurfaceAlphaMod(SDL_Surface *surface, Uint8 alpha);
# 921 "include/SDL3/SDL_surface.h"
extern bool SDL_GetSurfaceAlphaMod(SDL_Surface *surface, Uint8 *alpha);
# 942 "include/SDL3/SDL_surface.h"
extern bool SDL_SetSurfaceBlendMode(SDL_Surface *surface, SDL_BlendMode blendMode);
# 958 "include/SDL3/SDL_surface.h"
extern bool SDL_GetSurfaceBlendMode(SDL_Surface *surface, SDL_BlendMode *blendMode);
# 982 "include/SDL3/SDL_surface.h"
extern bool SDL_SetSurfaceClipRect(SDL_Surface *surface, const SDL_Rect *rect);
# 1004 "include/SDL3/SDL_surface.h"
extern bool SDL_GetSurfaceClipRect(SDL_Surface *surface, SDL_Rect *rect);
# 1019 "include/SDL3/SDL_surface.h"
extern bool SDL_FlipSurface(SDL_Surface *surface, SDL_FlipMode flip);
# 1048 "include/SDL3/SDL_surface.h"
extern SDL_Surface * SDL_RotateSurface(SDL_Surface *surface, float angle);
# 1069 "include/SDL3/SDL_surface.h"
extern SDL_Surface * SDL_DuplicateSurface(SDL_Surface *surface);
# 1091 "include/SDL3/SDL_surface.h"
extern SDL_Surface * SDL_ScaleSurface(SDL_Surface *surface, int width, int height, SDL_ScaleMode scaleMode);
# 1120 "include/SDL3/SDL_surface.h"
extern SDL_Surface * SDL_ConvertSurface(SDL_Surface *surface, SDL_PixelFormat format);
# 1149 "include/SDL3/SDL_surface.h"
extern SDL_Surface * SDL_ConvertSurfaceAndColorspace(SDL_Surface *surface, SDL_PixelFormat format, SDL_Palette *palette, SDL_Colorspace colorspace, SDL_PropertiesID props);
# 1173 "include/SDL3/SDL_surface.h"
extern bool SDL_ConvertPixels(int width, int height, SDL_PixelFormat src_format, const void *src, int src_pitch, SDL_PixelFormat dst_format, void *dst, int dst_pitch);
# 1206 "include/SDL3/SDL_surface.h"
extern bool SDL_ConvertPixelsAndColorspace(int width, int height, SDL_PixelFormat src_format, SDL_Colorspace src_colorspace, SDL_PropertiesID src_properties, const void *src, int src_pitch, SDL_PixelFormat dst_format, SDL_Colorspace dst_colorspace, SDL_PropertiesID dst_properties, void *dst, int dst_pitch);
# 1232 "include/SDL3/SDL_surface.h"
extern bool SDL_PremultiplyAlpha(int width, int height, SDL_PixelFormat src_format, const void *src, int src_pitch, SDL_PixelFormat dst_format, void *dst, int dst_pitch, bool linear);
# 1250 "include/SDL3/SDL_surface.h"
extern bool SDL_PremultiplySurfaceAlpha(SDL_Surface *surface, bool linear);
# 1273 "include/SDL3/SDL_surface.h"
extern bool SDL_ClearSurface(SDL_Surface *surface, float r, float g, float b, float a);
# 1301 "include/SDL3/SDL_surface.h"
extern bool SDL_FillSurfaceRect(SDL_Surface *dst, const SDL_Rect *rect, Uint32 color);
# 1329 "include/SDL3/SDL_surface.h"
extern bool SDL_FillSurfaceRects(SDL_Surface *dst, const SDL_Rect *rects, int count, Uint32 color);
# 1402 "include/SDL3/SDL_surface.h"
extern bool SDL_BlitSurface(SDL_Surface *src, const SDL_Rect *srcrect, SDL_Surface *dst, const SDL_Rect *dstrect);
# 1426 "include/SDL3/SDL_surface.h"
extern bool SDL_BlitSurfaceUnchecked(SDL_Surface *src, const SDL_Rect *srcrect, SDL_Surface *dst, const SDL_Rect *dstrect);
# 1450 "include/SDL3/SDL_surface.h"
extern bool SDL_BlitSurfaceScaled(SDL_Surface *src, const SDL_Rect *srcrect, SDL_Surface *dst, const SDL_Rect *dstrect, SDL_ScaleMode scaleMode);
# 1475 "include/SDL3/SDL_surface.h"
extern bool SDL_BlitSurfaceUncheckedScaled(SDL_Surface *src, const SDL_Rect *srcrect, SDL_Surface *dst, const SDL_Rect *dstrect, SDL_ScaleMode scaleMode);
# 1498 "include/SDL3/SDL_surface.h"
extern bool SDL_StretchSurface(SDL_Surface *src, const SDL_Rect *srcrect, SDL_Surface *dst, const SDL_Rect *dstrect, SDL_ScaleMode scaleMode);
# 1523 "include/SDL3/SDL_surface.h"
extern bool SDL_BlitSurfaceTiled(SDL_Surface *src, const SDL_Rect *srcrect, SDL_Surface *dst, const SDL_Rect *dstrect);
# 1552 "include/SDL3/SDL_surface.h"
extern bool SDL_BlitSurfaceTiledWithScale(SDL_Surface *src, const SDL_Rect *srcrect, float scale, SDL_ScaleMode scaleMode, SDL_Surface *dst, const SDL_Rect *dstrect);
# 1588 "include/SDL3/SDL_surface.h"
extern bool SDL_BlitSurface9Grid(SDL_Surface *src, const SDL_Rect *srcrect, int left_width, int right_width, int top_height, int bottom_height, float scale, SDL_ScaleMode scaleMode, SDL_Surface *dst, const SDL_Rect *dstrect);
# 1621 "include/SDL3/SDL_surface.h"
extern Uint32 SDL_MapSurfaceRGB(SDL_Surface *surface, Uint8 r, Uint8 g, Uint8 b);
# 1655 "include/SDL3/SDL_surface.h"
extern Uint32 SDL_MapSurfaceRGBA(SDL_Surface *surface, Uint8 r, Uint8 g, Uint8 b, Uint8 a);
# 1685 "include/SDL3/SDL_surface.h"
extern bool SDL_ReadSurfacePixel(SDL_Surface *surface, int x, int y, Uint8 *r, Uint8 *g, Uint8 *b, Uint8 *a);
# 1712 "include/SDL3/SDL_surface.h"
extern bool SDL_ReadSurfacePixelFloat(SDL_Surface *surface, int x, int y, float *r, float *g, float *b, float *a);
# 1738 "include/SDL3/SDL_surface.h"
extern bool SDL_WriteSurfacePixel(SDL_Surface *surface, int x, int y, Uint8 r, Uint8 g, Uint8 b, Uint8 a);
# 1761 "include/SDL3/SDL_surface.h"
extern bool SDL_WriteSurfacePixelFloat(SDL_Surface *surface, int x, int y, float r, float g, float b, float a);





# 1 "include/SDL3/SDL_close_code.h" 1
# 1768 "include/SDL3/SDL_surface.h" 2
# 76 "include/SDL3/SDL_camera.h" 2

# 1 "include/SDL3/SDL_begin_code.h" 1
# 78 "include/SDL3/SDL_camera.h" 2
# 95 "include/SDL3/SDL_camera.h"
typedef Uint32 SDL_CameraID;






typedef struct SDL_Camera SDL_Camera;
# 115 "include/SDL3/SDL_camera.h"
typedef struct SDL_CameraSpec
{
    SDL_PixelFormat format;
    SDL_Colorspace colorspace;
    int width;
    int height;
    int framerate_numerator;
    int framerate_denominator;
} SDL_CameraSpec;
# 132 "include/SDL3/SDL_camera.h"
typedef enum SDL_CameraPosition
{
    SDL_CAMERA_POSITION_UNKNOWN,
    SDL_CAMERA_POSITION_FRONT_FACING,
    SDL_CAMERA_POSITION_BACK_FACING
} SDL_CameraPosition;
# 146 "include/SDL3/SDL_camera.h"
typedef enum SDL_CameraPermissionState
{
    SDL_CAMERA_PERMISSION_STATE_DENIED = -1,
    SDL_CAMERA_PERMISSION_STATE_PENDING,
    SDL_CAMERA_PERMISSION_STATE_APPROVED,
} SDL_CameraPermissionState;
# 175 "include/SDL3/SDL_camera.h"
extern int SDL_GetNumCameraDrivers(void);
# 199 "include/SDL3/SDL_camera.h"
extern const char * SDL_GetCameraDriver(int index);
# 215 "include/SDL3/SDL_camera.h"
extern const char * SDL_GetCurrentCameraDriver(void);
# 232 "include/SDL3/SDL_camera.h"
extern SDL_CameraID * SDL_GetCameras(int *count);
# 271 "include/SDL3/SDL_camera.h"
extern SDL_CameraSpec ** SDL_GetCameraSupportedFormats(SDL_CameraID instance_id, int *count);
# 286 "include/SDL3/SDL_camera.h"
extern const char * SDL_GetCameraName(SDL_CameraID instance_id);
# 305 "include/SDL3/SDL_camera.h"
extern SDL_CameraPosition SDL_GetCameraPosition(SDL_CameraID instance_id);
# 352 "include/SDL3/SDL_camera.h"
extern SDL_Camera * SDL_OpenCamera(SDL_CameraID instance_id, const SDL_CameraSpec *spec);
# 387 "include/SDL3/SDL_camera.h"
extern SDL_CameraPermissionState SDL_GetCameraPermissionState(SDL_Camera *camera);
# 402 "include/SDL3/SDL_camera.h"
extern SDL_CameraID SDL_GetCameraID(SDL_Camera *camera);
# 415 "include/SDL3/SDL_camera.h"
extern SDL_PropertiesID SDL_GetCameraProperties(SDL_Camera *camera);
# 441 "include/SDL3/SDL_camera.h"
extern bool SDL_GetCameraFormat(SDL_Camera *camera, SDL_CameraSpec *spec);
# 484 "include/SDL3/SDL_camera.h"
extern SDL_Surface * SDL_AcquireCameraFrame(SDL_Camera *camera, Uint64 *timestampNS);
# 512 "include/SDL3/SDL_camera.h"
extern void SDL_ReleaseCameraFrame(SDL_Camera *camera, SDL_Surface *frame);
# 527 "include/SDL3/SDL_camera.h"
extern void SDL_CloseCamera(SDL_Camera *camera);





# 1 "include/SDL3/SDL_close_code.h" 1
# 534 "include/SDL3/SDL_camera.h" 2
# 42 "include/SDL3/SDL.h" 2
# 1 "include/SDL3/SDL_clipboard.h" 1
# 82 "include/SDL3/SDL_clipboard.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 83 "include/SDL3/SDL_clipboard.h" 2
# 104 "include/SDL3/SDL_clipboard.h"
extern bool SDL_SetClipboardText(const char *text);
# 123 "include/SDL3/SDL_clipboard.h"
extern char * SDL_GetClipboardText(void);
# 137 "include/SDL3/SDL_clipboard.h"
extern bool SDL_HasClipboardText(void);
# 153 "include/SDL3/SDL_clipboard.h"
extern bool SDL_SetPrimarySelectionText(const char *text);
# 172 "include/SDL3/SDL_clipboard.h"
extern char * SDL_GetPrimarySelectionText(void);
# 187 "include/SDL3/SDL_clipboard.h"
extern bool SDL_HasPrimarySelectionText(void);
# 210 "include/SDL3/SDL_clipboard.h"
typedef const void *( *SDL_ClipboardDataCallback)(void *userdata, const char *mime_type, size_t *size);
# 222 "include/SDL3/SDL_clipboard.h"
typedef void ( *SDL_ClipboardCleanupCallback)(void *userdata);
# 255 "include/SDL3/SDL_clipboard.h"
extern bool SDL_SetClipboardData(SDL_ClipboardDataCallback callback, SDL_ClipboardCleanupCallback cleanup, void *userdata, const char **mime_types, size_t num_mime_types);
# 269 "include/SDL3/SDL_clipboard.h"
extern bool SDL_ClearClipboardData(void);
# 290 "include/SDL3/SDL_clipboard.h"
extern void * SDL_GetClipboardData(const char *mime_type, size_t *size);
# 306 "include/SDL3/SDL_clipboard.h"
extern bool SDL_HasClipboardData(const char *mime_type);
# 323 "include/SDL3/SDL_clipboard.h"
extern char ** SDL_GetClipboardMimeTypes(size_t *num_mime_types);





# 1 "include/SDL3/SDL_close_code.h" 1
# 330 "include/SDL3/SDL_clipboard.h" 2
# 43 "include/SDL3/SDL.h" 2
# 1 "include/SDL3/SDL_cpuinfo.h" 1
# 45 "include/SDL3/SDL_cpuinfo.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 46 "include/SDL3/SDL_cpuinfo.h" 2
# 73 "include/SDL3/SDL_cpuinfo.h"
extern int SDL_GetNumLogicalCPUCores(void);
# 87 "include/SDL3/SDL_cpuinfo.h"
extern int SDL_GetCPUCacheLineSize(void);
# 101 "include/SDL3/SDL_cpuinfo.h"
extern bool SDL_HasAltiVec(void);
# 114 "include/SDL3/SDL_cpuinfo.h"
extern bool SDL_HasMMX(void);
# 132 "include/SDL3/SDL_cpuinfo.h"
extern bool SDL_HasSSE(void);
# 150 "include/SDL3/SDL_cpuinfo.h"
extern bool SDL_HasSSE2(void);
# 168 "include/SDL3/SDL_cpuinfo.h"
extern bool SDL_HasSSE3(void);
# 186 "include/SDL3/SDL_cpuinfo.h"
extern bool SDL_HasSSE41(void);
# 204 "include/SDL3/SDL_cpuinfo.h"
extern bool SDL_HasSSE42(void);
# 220 "include/SDL3/SDL_cpuinfo.h"
extern bool SDL_HasAVX(void);
# 236 "include/SDL3/SDL_cpuinfo.h"
extern bool SDL_HasAVX2(void);
# 252 "include/SDL3/SDL_cpuinfo.h"
extern bool SDL_HasAVX512F(void);
# 269 "include/SDL3/SDL_cpuinfo.h"
extern bool SDL_HasARMSIMD(void);
# 282 "include/SDL3/SDL_cpuinfo.h"
extern bool SDL_HasNEON(void);
# 296 "include/SDL3/SDL_cpuinfo.h"
extern bool SDL_HasLSX(void);
# 310 "include/SDL3/SDL_cpuinfo.h"
extern bool SDL_HasLASX(void);
# 321 "include/SDL3/SDL_cpuinfo.h"
extern int SDL_GetSystemRAM(void);
# 345 "include/SDL3/SDL_cpuinfo.h"
extern size_t SDL_GetSIMDAlignment(void);
# 366 "include/SDL3/SDL_cpuinfo.h"
extern int SDL_GetSystemPageSize(void);





# 1 "include/SDL3/SDL_close_code.h" 1
# 373 "include/SDL3/SDL_cpuinfo.h" 2
# 44 "include/SDL3/SDL.h" 2
# 1 "include/SDL3/SDL_dialog.h" 1
# 43 "include/SDL3/SDL_dialog.h"
# 1 "include/SDL3/SDL_video.h" 1
# 59 "include/SDL3/SDL_video.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 60 "include/SDL3/SDL_video.h" 2
# 75 "include/SDL3/SDL_video.h"
typedef Uint32 SDL_DisplayID;
# 84 "include/SDL3/SDL_video.h"
typedef Uint32 SDL_WindowID;
# 110 "include/SDL3/SDL_video.h"
typedef enum SDL_SystemTheme
{
    SDL_SYSTEM_THEME_UNKNOWN,
    SDL_SYSTEM_THEME_LIGHT,
    SDL_SYSTEM_THEME_DARK
} SDL_SystemTheme;
# 126 "include/SDL3/SDL_video.h"
typedef struct SDL_DisplayModeData SDL_DisplayModeData;
# 139 "include/SDL3/SDL_video.h"
typedef struct SDL_DisplayMode
{
    SDL_DisplayID displayID;
    SDL_PixelFormat format;
    int w;
    int h;
    float pixel_density;
    float refresh_rate;
    int refresh_rate_numerator;
    int refresh_rate_denominator;

    SDL_DisplayModeData *internal;

} SDL_DisplayMode;






typedef enum SDL_DisplayOrientation
{
    SDL_ORIENTATION_UNKNOWN,
    SDL_ORIENTATION_LANDSCAPE,
    SDL_ORIENTATION_LANDSCAPE_FLIPPED,
    SDL_ORIENTATION_PORTRAIT,
    SDL_ORIENTATION_PORTRAIT_FLIPPED
} SDL_DisplayOrientation;
# 175 "include/SDL3/SDL_video.h"
typedef struct SDL_Window SDL_Window;
# 195 "include/SDL3/SDL_video.h"
typedef Uint64 SDL_WindowFlags;
# 328 "include/SDL3/SDL_video.h"
typedef enum SDL_FlashOperation
{
    SDL_FLASH_CANCEL,
    SDL_FLASH_BRIEFLY,
    SDL_FLASH_UNTIL_FOCUSED
} SDL_FlashOperation;






typedef enum SDL_ProgressState
{
    SDL_PROGRESS_STATE_INVALID = -1,
    SDL_PROGRESS_STATE_NONE,
    SDL_PROGRESS_STATE_INDETERMINATE,
    SDL_PROGRESS_STATE_NORMAL,
    SDL_PROGRESS_STATE_PAUSED,
    SDL_PROGRESS_STATE_ERROR
} SDL_ProgressState;
# 360 "include/SDL3/SDL_video.h"
typedef struct SDL_GLContextState *SDL_GLContext;






typedef void *SDL_EGLDisplay;






typedef void *SDL_EGLConfig;






typedef void *SDL_EGLSurface;






typedef intptr_t SDL_EGLAttrib;






typedef int SDL_EGLint;
# 420 "include/SDL3/SDL_video.h"
typedef SDL_EGLAttrib *( *SDL_EGLAttribArrayCallback)(void *userdata);
# 451 "include/SDL3/SDL_video.h"
typedef SDL_EGLint *( *SDL_EGLIntArrayCallback)(void *userdata, SDL_EGLDisplay display, SDL_EGLConfig config);
# 470 "include/SDL3/SDL_video.h"
typedef enum SDL_GLAttr
{
    SDL_GL_RED_SIZE,
    SDL_GL_GREEN_SIZE,
    SDL_GL_BLUE_SIZE,
    SDL_GL_ALPHA_SIZE,
    SDL_GL_BUFFER_SIZE,
    SDL_GL_DOUBLEBUFFER,
    SDL_GL_DEPTH_SIZE,
    SDL_GL_STENCIL_SIZE,
    SDL_GL_ACCUM_RED_SIZE,
    SDL_GL_ACCUM_GREEN_SIZE,
    SDL_GL_ACCUM_BLUE_SIZE,
    SDL_GL_ACCUM_ALPHA_SIZE,
    SDL_GL_STEREO,
    SDL_GL_MULTISAMPLEBUFFERS,
    SDL_GL_MULTISAMPLESAMPLES,
    SDL_GL_ACCELERATED_VISUAL,
    SDL_GL_RETAINED_BACKING,
    SDL_GL_CONTEXT_MAJOR_VERSION,
    SDL_GL_CONTEXT_MINOR_VERSION,
    SDL_GL_CONTEXT_FLAGS,
    SDL_GL_CONTEXT_PROFILE_MASK,
    SDL_GL_SHARE_WITH_CURRENT_CONTEXT,
    SDL_GL_FRAMEBUFFER_SRGB_CAPABLE,
    SDL_GL_CONTEXT_RELEASE_BEHAVIOR,
    SDL_GL_CONTEXT_RESET_NOTIFICATION,
    SDL_GL_CONTEXT_NO_ERROR,
    SDL_GL_FLOATBUFFERS,
    SDL_GL_EGL_PLATFORM
} SDL_GLAttr;






typedef Uint32 SDL_GLProfile;
# 519 "include/SDL3/SDL_video.h"
typedef Uint32 SDL_GLContextFlag;
# 533 "include/SDL3/SDL_video.h"
typedef Uint32 SDL_GLContextReleaseFlag;
# 544 "include/SDL3/SDL_video.h"
typedef Uint32 SDL_GLContextResetNotification;
# 563 "include/SDL3/SDL_video.h"
extern int SDL_GetNumVideoDrivers(void);
# 585 "include/SDL3/SDL_video.h"
extern const char * SDL_GetVideoDriver(int index);
# 604 "include/SDL3/SDL_video.h"
extern const char * SDL_GetCurrentVideoDriver(void);
# 615 "include/SDL3/SDL_video.h"
extern SDL_SystemTheme SDL_GetSystemTheme(void);
# 630 "include/SDL3/SDL_video.h"
extern SDL_DisplayID * SDL_GetDisplays(int *count);
# 644 "include/SDL3/SDL_video.h"
extern SDL_DisplayID SDL_GetPrimaryDisplay(void);
# 682 "include/SDL3/SDL_video.h"
extern SDL_PropertiesID SDL_GetDisplayProperties(SDL_DisplayID displayID);
# 702 "include/SDL3/SDL_video.h"
extern const char * SDL_GetDisplayName(SDL_DisplayID displayID);
# 722 "include/SDL3/SDL_video.h"
extern bool SDL_GetDisplayBounds(SDL_DisplayID displayID, SDL_Rect *rect);
# 748 "include/SDL3/SDL_video.h"
extern bool SDL_GetDisplayUsableBounds(SDL_DisplayID displayID, SDL_Rect *rect);
# 763 "include/SDL3/SDL_video.h"
extern SDL_DisplayOrientation SDL_GetNaturalDisplayOrientation(SDL_DisplayID displayID);
# 778 "include/SDL3/SDL_video.h"
extern SDL_DisplayOrientation SDL_GetCurrentDisplayOrientation(SDL_DisplayID displayID);
# 805 "include/SDL3/SDL_video.h"
extern float SDL_GetDisplayContentScale(SDL_DisplayID displayID);
# 833 "include/SDL3/SDL_video.h"
extern SDL_DisplayMode ** SDL_GetFullscreenDisplayModes(SDL_DisplayID displayID, int *count);
# 864 "include/SDL3/SDL_video.h"
extern bool SDL_GetClosestFullscreenDisplayMode(SDL_DisplayID displayID, int w, int h, float refresh_rate, bool include_high_density_modes, SDL_DisplayMode *closest);
# 885 "include/SDL3/SDL_video.h"
extern const SDL_DisplayMode * SDL_GetDesktopDisplayMode(SDL_DisplayID displayID);
# 906 "include/SDL3/SDL_video.h"
extern const SDL_DisplayMode * SDL_GetCurrentDisplayMode(SDL_DisplayID displayID);
# 922 "include/SDL3/SDL_video.h"
extern SDL_DisplayID SDL_GetDisplayForPoint(const SDL_Point *point);
# 939 "include/SDL3/SDL_video.h"
extern SDL_DisplayID SDL_GetDisplayForRect(const SDL_Rect *rect);
# 956 "include/SDL3/SDL_video.h"
extern SDL_DisplayID SDL_GetDisplayForWindow(SDL_Window *window);
# 975 "include/SDL3/SDL_video.h"
extern float SDL_GetWindowPixelDensity(SDL_Window *window);
# 999 "include/SDL3/SDL_video.h"
extern float SDL_GetWindowDisplayScale(SDL_Window *window);
# 1034 "include/SDL3/SDL_video.h"
extern bool SDL_SetWindowFullscreenMode(SDL_Window *window, const SDL_DisplayMode *mode);
# 1050 "include/SDL3/SDL_video.h"
extern const SDL_DisplayMode * SDL_GetWindowFullscreenMode(SDL_Window *window);
# 1065 "include/SDL3/SDL_video.h"
extern void * SDL_GetWindowICCProfile(SDL_Window *window, size_t *size);
# 1079 "include/SDL3/SDL_video.h"
extern SDL_PixelFormat SDL_GetWindowPixelFormat(SDL_Window *window);
# 1095 "include/SDL3/SDL_video.h"
extern SDL_Window ** SDL_GetWindows(int *count);
# 1184 "include/SDL3/SDL_video.h"
extern SDL_Window * SDL_CreateWindow(const char *title, int w, int h, SDL_WindowFlags flags);
# 1260 "include/SDL3/SDL_video.h"
extern SDL_Window * SDL_CreatePopupWindow(SDL_Window *parent, int offset_x, int offset_y, int w, int h, SDL_WindowFlags flags);
# 1409 "include/SDL3/SDL_video.h"
extern SDL_Window * SDL_CreateWindowWithProperties(SDL_PropertiesID props);
# 1466 "include/SDL3/SDL_video.h"
extern SDL_WindowID SDL_GetWindowID(SDL_Window *window);
# 1484 "include/SDL3/SDL_video.h"
extern SDL_Window * SDL_GetWindowFromID(SDL_WindowID id);
# 1499 "include/SDL3/SDL_video.h"
extern SDL_Window * SDL_GetWindowParent(SDL_Window *window);
# 1628 "include/SDL3/SDL_video.h"
extern SDL_PropertiesID SDL_GetWindowProperties(SDL_Window *window);
# 1687 "include/SDL3/SDL_video.h"
extern SDL_WindowFlags SDL_GetWindowFlags(SDL_Window *window);
# 1705 "include/SDL3/SDL_video.h"
extern bool SDL_SetWindowTitle(SDL_Window *window, const char *title);
# 1720 "include/SDL3/SDL_video.h"
extern const char * SDL_GetWindowTitle(SDL_Window *window);
# 1747 "include/SDL3/SDL_video.h"
extern bool SDL_SetWindowIcon(SDL_Window *window, SDL_Surface *icon);
# 1788 "include/SDL3/SDL_video.h"
extern bool SDL_SetWindowPosition(SDL_Window *window, int x, int y);
# 1813 "include/SDL3/SDL_video.h"
extern bool SDL_GetWindowPosition(SDL_Window *window, int *x, int *y);
# 1850 "include/SDL3/SDL_video.h"
extern bool SDL_SetWindowSize(SDL_Window *window, int w, int h);
# 1874 "include/SDL3/SDL_video.h"
extern bool SDL_GetWindowSize(SDL_Window *window, int *w, int *h);
# 1896 "include/SDL3/SDL_video.h"
extern bool SDL_GetWindowSafeArea(SDL_Window *window, SDL_Rect *rect);
# 1937 "include/SDL3/SDL_video.h"
extern bool SDL_SetWindowAspectRatio(SDL_Window *window, float min_aspect, float max_aspect);
# 1956 "include/SDL3/SDL_video.h"
extern bool SDL_GetWindowAspectRatio(SDL_Window *window, float *min_aspect, float *max_aspect);
# 1993 "include/SDL3/SDL_video.h"
extern bool SDL_GetWindowBordersSize(SDL_Window *window, int *top, int *left, int *bottom, int *right);
# 2013 "include/SDL3/SDL_video.h"
extern bool SDL_GetWindowSizeInPixels(SDL_Window *window, int *w, int *h);
# 2031 "include/SDL3/SDL_video.h"
extern bool SDL_SetWindowMinimumSize(SDL_Window *window, int min_w, int min_h);
# 2051 "include/SDL3/SDL_video.h"
extern bool SDL_GetWindowMinimumSize(SDL_Window *window, int *w, int *h);
# 2069 "include/SDL3/SDL_video.h"
extern bool SDL_SetWindowMaximumSize(SDL_Window *window, int max_w, int max_h);
# 2089 "include/SDL3/SDL_video.h"
extern bool SDL_GetWindowMaximumSize(SDL_Window *window, int *w, int *h);
# 2111 "include/SDL3/SDL_video.h"
extern bool SDL_SetWindowBordered(SDL_Window *window, bool bordered);
# 2133 "include/SDL3/SDL_video.h"
extern bool SDL_SetWindowResizable(SDL_Window *window, bool resizable);
# 2152 "include/SDL3/SDL_video.h"
extern bool SDL_SetWindowAlwaysOnTop(SDL_Window *window, bool on_top);
# 2183 "include/SDL3/SDL_video.h"
extern bool SDL_SetWindowFillDocument(SDL_Window *window, bool fill);
# 2199 "include/SDL3/SDL_video.h"
extern bool SDL_ShowWindow(SDL_Window *window);
# 2215 "include/SDL3/SDL_video.h"
extern bool SDL_HideWindow(SDL_Window *window);
# 2235 "include/SDL3/SDL_video.h"
extern bool SDL_RaiseWindow(SDL_Window *window);
# 2269 "include/SDL3/SDL_video.h"
extern bool SDL_MaximizeWindow(SDL_Window *window);
# 2298 "include/SDL3/SDL_video.h"
extern bool SDL_MinimizeWindow(SDL_Window *window);
# 2328 "include/SDL3/SDL_video.h"
extern bool SDL_RestoreWindow(SDL_Window *window);
# 2360 "include/SDL3/SDL_video.h"
extern bool SDL_SetWindowFullscreen(SDL_Window *window, bool fullscreen);
# 2391 "include/SDL3/SDL_video.h"
extern bool SDL_SyncWindow(SDL_Window *window);
# 2406 "include/SDL3/SDL_video.h"
extern bool SDL_WindowHasSurface(SDL_Window *window);
# 2435 "include/SDL3/SDL_video.h"
extern SDL_Surface * SDL_GetWindowSurface(SDL_Window *window);
# 2461 "include/SDL3/SDL_video.h"
extern bool SDL_SetWindowSurfaceVSync(SDL_Window *window, int vsync);
# 2481 "include/SDL3/SDL_video.h"
extern bool SDL_GetWindowSurfaceVSync(SDL_Window *window, int *vsync);
# 2502 "include/SDL3/SDL_video.h"
extern bool SDL_UpdateWindowSurface(SDL_Window *window);
# 2531 "include/SDL3/SDL_video.h"
extern bool SDL_UpdateWindowSurfaceRects(SDL_Window *window, const SDL_Rect *rects, int numrects);
# 2547 "include/SDL3/SDL_video.h"
extern bool SDL_DestroyWindowSurface(SDL_Window *window);
# 2580 "include/SDL3/SDL_video.h"
extern bool SDL_SetWindowKeyboardGrab(SDL_Window *window, bool grabbed);
# 2600 "include/SDL3/SDL_video.h"
extern bool SDL_SetWindowMouseGrab(SDL_Window *window, bool grabbed);
# 2614 "include/SDL3/SDL_video.h"
extern bool SDL_GetWindowKeyboardGrab(SDL_Window *window);
# 2631 "include/SDL3/SDL_video.h"
extern bool SDL_GetWindowMouseGrab(SDL_Window *window);
# 2645 "include/SDL3/SDL_video.h"
extern SDL_Window * SDL_GetGrabbedWindow(void);
# 2667 "include/SDL3/SDL_video.h"
extern bool SDL_SetWindowMouseRect(SDL_Window *window, const SDL_Rect *rect);
# 2684 "include/SDL3/SDL_video.h"
extern const SDL_Rect * SDL_GetWindowMouseRect(SDL_Window *window);
# 2705 "include/SDL3/SDL_video.h"
extern bool SDL_SetWindowOpacity(SDL_Window *window, float opacity);
# 2723 "include/SDL3/SDL_video.h"
extern float SDL_GetWindowOpacity(SDL_Window *window);
# 2757 "include/SDL3/SDL_video.h"
extern bool SDL_SetWindowParent(SDL_Window *window, SDL_Window *parent);
# 2777 "include/SDL3/SDL_video.h"
extern bool SDL_SetWindowModal(SDL_Window *window, bool modal);
# 2791 "include/SDL3/SDL_video.h"
extern bool SDL_SetWindowFocusable(SDL_Window *window, bool focusable);
# 2817 "include/SDL3/SDL_video.h"
extern bool SDL_ShowWindowSystemMenu(SDL_Window *window, int x, int y);
# 2828 "include/SDL3/SDL_video.h"
typedef enum SDL_HitTestResult
{
    SDL_HITTEST_NORMAL,
    SDL_HITTEST_DRAGGABLE,
    SDL_HITTEST_RESIZE_TOPLEFT,
    SDL_HITTEST_RESIZE_TOP,
    SDL_HITTEST_RESIZE_TOPRIGHT,
    SDL_HITTEST_RESIZE_RIGHT,
    SDL_HITTEST_RESIZE_BOTTOMRIGHT,
    SDL_HITTEST_RESIZE_BOTTOM,
    SDL_HITTEST_RESIZE_BOTTOMLEFT,
    SDL_HITTEST_RESIZE_LEFT
} SDL_HitTestResult;
# 2852 "include/SDL3/SDL_video.h"
typedef SDL_HitTestResult ( *SDL_HitTest)(SDL_Window *win,
                                                 const SDL_Point *area,
                                                 void *data);
# 2898 "include/SDL3/SDL_video.h"
extern bool SDL_SetWindowHitTest(SDL_Window *window, SDL_HitTest callback, void *callback_data);
# 2926 "include/SDL3/SDL_video.h"
extern bool SDL_SetWindowShape(SDL_Window *window, SDL_Surface *shape);
# 2940 "include/SDL3/SDL_video.h"
extern bool SDL_FlashWindow(SDL_Window *window, SDL_FlashOperation operation);
# 2955 "include/SDL3/SDL_video.h"
extern bool SDL_SetWindowProgressState(SDL_Window *window, SDL_ProgressState state);
# 2968 "include/SDL3/SDL_video.h"
extern SDL_ProgressState SDL_GetWindowProgressState(SDL_Window *window);
# 2983 "include/SDL3/SDL_video.h"
extern bool SDL_SetWindowProgressValue(SDL_Window *window, float value);
# 2996 "include/SDL3/SDL_video.h"
extern float SDL_GetWindowProgressValue(SDL_Window *window);
# 3018 "include/SDL3/SDL_video.h"
extern void SDL_DestroyWindow(SDL_Window *window);
# 3037 "include/SDL3/SDL_video.h"
extern bool SDL_ScreenSaverEnabled(void);
# 3052 "include/SDL3/SDL_video.h"
extern bool SDL_EnableScreenSaver(void);
# 3073 "include/SDL3/SDL_video.h"
extern bool SDL_DisableScreenSaver(void);
# 3103 "include/SDL3/SDL_video.h"
extern bool SDL_GL_LoadLibrary(const char *path);
# 3158 "include/SDL3/SDL_video.h"
extern SDL_FunctionPointer SDL_GL_GetProcAddress(const char *proc);
# 3177 "include/SDL3/SDL_video.h"
extern SDL_FunctionPointer SDL_EGL_GetProcAddress(const char *proc);
# 3188 "include/SDL3/SDL_video.h"
extern void SDL_GL_UnloadLibrary(void);
# 3211 "include/SDL3/SDL_video.h"
extern bool SDL_GL_ExtensionSupported(const char *extension);
# 3223 "include/SDL3/SDL_video.h"
extern void SDL_GL_ResetAttributes(void);
# 3246 "include/SDL3/SDL_video.h"
extern bool SDL_GL_SetAttribute(SDL_GLAttr attr, int value);
# 3264 "include/SDL3/SDL_video.h"
extern bool SDL_GL_GetAttribute(SDL_GLAttr attr, int *value);
# 3294 "include/SDL3/SDL_video.h"
extern SDL_GLContext SDL_GL_CreateContext(SDL_Window *window);
# 3312 "include/SDL3/SDL_video.h"
extern bool SDL_GL_MakeCurrent(SDL_Window *window, SDL_GLContext context);
# 3324 "include/SDL3/SDL_video.h"
extern SDL_Window * SDL_GL_GetCurrentWindow(void);
# 3338 "include/SDL3/SDL_video.h"
extern SDL_GLContext SDL_GL_GetCurrentContext(void);
# 3350 "include/SDL3/SDL_video.h"
extern SDL_EGLDisplay SDL_EGL_GetCurrentDisplay(void);
# 3362 "include/SDL3/SDL_video.h"
extern SDL_EGLConfig SDL_EGL_GetCurrentConfig(void);
# 3375 "include/SDL3/SDL_video.h"
extern SDL_EGLSurface SDL_EGL_GetWindowSurface(SDL_Window *window);
# 3397 "include/SDL3/SDL_video.h"
extern void SDL_EGL_SetAttributeCallbacks(SDL_EGLAttribArrayCallback platformAttribCallback,
                                                               SDL_EGLIntArrayCallback surfaceAttribCallback,
                                                               SDL_EGLIntArrayCallback contextAttribCallback, void *userdata);
# 3430 "include/SDL3/SDL_video.h"
extern bool SDL_GL_SetSwapInterval(int interval);
# 3451 "include/SDL3/SDL_video.h"
extern bool SDL_GL_GetSwapInterval(int *interval);
# 3471 "include/SDL3/SDL_video.h"
extern bool SDL_GL_SwapWindow(SDL_Window *window);
# 3486 "include/SDL3/SDL_video.h"
extern bool SDL_GL_DestroyContext(SDL_GLContext context);
# 3495 "include/SDL3/SDL_video.h"
# 1 "include/SDL3/SDL_close_code.h" 1
# 3496 "include/SDL3/SDL_video.h" 2
# 44 "include/SDL3/SDL_dialog.h" 2

# 1 "include/SDL3/SDL_begin_code.h" 1
# 46 "include/SDL3/SDL_dialog.h" 2
# 70 "include/SDL3/SDL_dialog.h"
typedef struct SDL_DialogFileFilter
{
    const char *name;
    const char *pattern;
} SDL_DialogFileFilter;
# 113 "include/SDL3/SDL_dialog.h"
typedef void ( *SDL_DialogFileCallback)(void *userdata, const char * const *filelist, int filter);
# 166 "include/SDL3/SDL_dialog.h"
extern void SDL_ShowOpenFileDialog(SDL_DialogFileCallback callback, void *userdata, SDL_Window *window, const SDL_DialogFileFilter *filters, int nfilters, const char *default_location, bool allow_many);
# 215 "include/SDL3/SDL_dialog.h"
extern void SDL_ShowSaveFileDialog(SDL_DialogFileCallback callback, void *userdata, SDL_Window *window, const SDL_DialogFileFilter *filters, int nfilters, const char *default_location);
# 260 "include/SDL3/SDL_dialog.h"
extern void SDL_ShowOpenFolderDialog(SDL_DialogFileCallback callback, void *userdata, SDL_Window *window, const char *default_location, bool allow_many);
# 272 "include/SDL3/SDL_dialog.h"
typedef enum SDL_FileDialogType
{
    SDL_FILEDIALOG_OPENFILE,
    SDL_FILEDIALOG_SAVEFILE,
    SDL_FILEDIALOG_OPENFOLDER
} SDL_FileDialogType;
# 326 "include/SDL3/SDL_dialog.h"
extern void SDL_ShowFileDialogWithProperties(SDL_FileDialogType type, SDL_DialogFileCallback callback, void *userdata, SDL_PropertiesID props);
# 341 "include/SDL3/SDL_dialog.h"
# 1 "include/SDL3/SDL_close_code.h" 1
# 342 "include/SDL3/SDL_dialog.h" 2
# 45 "include/SDL3/SDL.h" 2
# 1 "include/SDL3/SDL_dlopennote.h" 1
# 46 "include/SDL3/SDL.h" 2


# 1 "include/SDL3/SDL_events.h" 1
# 59 "include/SDL3/SDL_events.h"
# 1 "include/SDL3/SDL_gamepad.h" 1
# 82 "include/SDL3/SDL_gamepad.h"
# 1 "include/SDL3/SDL_guid.h" 1
# 38 "include/SDL3/SDL_guid.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 39 "include/SDL3/SDL_guid.h" 2
# 61 "include/SDL3/SDL_guid.h"
typedef struct SDL_GUID {
    Uint8 data[16];
} SDL_GUID;
# 80 "include/SDL3/SDL_guid.h"
extern void SDL_GUIDToString(SDL_GUID guid, char *pszGUID, int cbGUID);
# 98 "include/SDL3/SDL_guid.h"
extern SDL_GUID SDL_StringToGUID(const char *pchGUID);





# 1 "include/SDL3/SDL_close_code.h" 1
# 105 "include/SDL3/SDL_guid.h" 2
# 83 "include/SDL3/SDL_gamepad.h" 2

# 1 "include/SDL3/SDL_joystick.h" 1
# 68 "include/SDL3/SDL_joystick.h"
# 1 "include/SDL3/SDL_power.h" 1
# 43 "include/SDL3/SDL_power.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 44 "include/SDL3/SDL_power.h" 2
# 56 "include/SDL3/SDL_power.h"
typedef enum SDL_PowerState
{
    SDL_POWERSTATE_ERROR = -1,
    SDL_POWERSTATE_UNKNOWN,
    SDL_POWERSTATE_ON_BATTERY,
    SDL_POWERSTATE_NO_BATTERY,
    SDL_POWERSTATE_CHARGING,
    SDL_POWERSTATE_CHARGED
} SDL_PowerState;
# 98 "include/SDL3/SDL_power.h"
extern SDL_PowerState SDL_GetPowerInfo(int *seconds, int *percent);





# 1 "include/SDL3/SDL_close_code.h" 1
# 105 "include/SDL3/SDL_power.h" 2
# 69 "include/SDL3/SDL_joystick.h" 2

# 1 "include/SDL3/SDL_sensor.h" 1
# 41 "include/SDL3/SDL_sensor.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 42 "include/SDL3/SDL_sensor.h" 2
# 54 "include/SDL3/SDL_sensor.h"
typedef struct SDL_Sensor SDL_Sensor;
# 64 "include/SDL3/SDL_sensor.h"
typedef Uint32 SDL_SensorID;
# 132 "include/SDL3/SDL_sensor.h"
typedef enum SDL_SensorType
{
    SDL_SENSOR_INVALID = -1,
    SDL_SENSOR_UNKNOWN,
    SDL_SENSOR_ACCEL,
    SDL_SENSOR_GYRO,
    SDL_SENSOR_ACCEL_L,
    SDL_SENSOR_GYRO_L,
    SDL_SENSOR_ACCEL_R,
    SDL_SENSOR_GYRO_R,
    SDL_SENSOR_COUNT
} SDL_SensorType;
# 159 "include/SDL3/SDL_sensor.h"
extern SDL_SensorID * SDL_GetSensors(int *count);
# 171 "include/SDL3/SDL_sensor.h"
extern const char * SDL_GetSensorNameForID(SDL_SensorID instance_id);
# 184 "include/SDL3/SDL_sensor.h"
extern SDL_SensorType SDL_GetSensorTypeForID(SDL_SensorID instance_id);
# 197 "include/SDL3/SDL_sensor.h"
extern int SDL_GetSensorNonPortableTypeForID(SDL_SensorID instance_id);
# 208 "include/SDL3/SDL_sensor.h"
extern SDL_Sensor * SDL_OpenSensor(SDL_SensorID instance_id);
# 219 "include/SDL3/SDL_sensor.h"
extern SDL_Sensor * SDL_GetSensorFromID(SDL_SensorID instance_id);
# 230 "include/SDL3/SDL_sensor.h"
extern SDL_PropertiesID SDL_GetSensorProperties(SDL_Sensor *sensor);
# 241 "include/SDL3/SDL_sensor.h"
extern const char * SDL_GetSensorName(SDL_Sensor *sensor);
# 252 "include/SDL3/SDL_sensor.h"
extern SDL_SensorType SDL_GetSensorType(SDL_Sensor *sensor);
# 262 "include/SDL3/SDL_sensor.h"
extern int SDL_GetSensorNonPortableType(SDL_Sensor *sensor);
# 273 "include/SDL3/SDL_sensor.h"
extern SDL_SensorID SDL_GetSensorID(SDL_Sensor *sensor);
# 288 "include/SDL3/SDL_sensor.h"
extern bool SDL_GetSensorData(SDL_Sensor *sensor, float *data, int num_values);
# 297 "include/SDL3/SDL_sensor.h"
extern void SDL_CloseSensor(SDL_Sensor *sensor);
# 310 "include/SDL3/SDL_sensor.h"
extern void SDL_UpdateSensors(void);
# 319 "include/SDL3/SDL_sensor.h"
# 1 "include/SDL3/SDL_close_code.h" 1
# 320 "include/SDL3/SDL_sensor.h" 2
# 71 "include/SDL3/SDL_joystick.h" 2

# 1 "include/SDL3/SDL_begin_code.h" 1
# 73 "include/SDL3/SDL_joystick.h" 2
# 94 "include/SDL3/SDL_joystick.h"
typedef struct SDL_Joystick SDL_Joystick;
# 106 "include/SDL3/SDL_joystick.h"
typedef Uint32 SDL_JoystickID;
# 124 "include/SDL3/SDL_joystick.h"
typedef enum SDL_JoystickType
{
    SDL_JOYSTICK_TYPE_UNKNOWN,
    SDL_JOYSTICK_TYPE_GAMEPAD,
    SDL_JOYSTICK_TYPE_WHEEL,
    SDL_JOYSTICK_TYPE_ARCADE_STICK,
    SDL_JOYSTICK_TYPE_FLIGHT_STICK,
    SDL_JOYSTICK_TYPE_DANCE_PAD,
    SDL_JOYSTICK_TYPE_GUITAR,
    SDL_JOYSTICK_TYPE_DRUM_KIT,
    SDL_JOYSTICK_TYPE_ARCADE_PAD,
    SDL_JOYSTICK_TYPE_THROTTLE,
    SDL_JOYSTICK_TYPE_COUNT
} SDL_JoystickType;
# 147 "include/SDL3/SDL_joystick.h"
typedef enum SDL_JoystickConnectionState
{
    SDL_JOYSTICK_CONNECTION_INVALID = -1,
    SDL_JOYSTICK_CONNECTION_UNKNOWN,
    SDL_JOYSTICK_CONNECTION_WIRED,
    SDL_JOYSTICK_CONNECTION_WIRELESS
} SDL_JoystickConnectionState;
# 189 "include/SDL3/SDL_joystick.h"
extern void SDL_LockJoysticks(void) ;
# 199 "include/SDL3/SDL_joystick.h"
extern void SDL_UnlockJoysticks(void) ;
# 212 "include/SDL3/SDL_joystick.h"
extern bool SDL_HasJoystick(void);
# 230 "include/SDL3/SDL_joystick.h"
extern SDL_JoystickID * SDL_GetJoysticks(int *count);
# 248 "include/SDL3/SDL_joystick.h"
extern const char * SDL_GetJoystickNameForID(SDL_JoystickID instance_id);
# 266 "include/SDL3/SDL_joystick.h"
extern const char * SDL_GetJoystickPathForID(SDL_JoystickID instance_id);
# 283 "include/SDL3/SDL_joystick.h"
extern int SDL_GetJoystickPlayerIndexForID(SDL_JoystickID instance_id);
# 301 "include/SDL3/SDL_joystick.h"
extern SDL_GUID SDL_GetJoystickGUIDForID(SDL_JoystickID instance_id);
# 320 "include/SDL3/SDL_joystick.h"
extern Uint16 SDL_GetJoystickVendorForID(SDL_JoystickID instance_id);
# 339 "include/SDL3/SDL_joystick.h"
extern Uint16 SDL_GetJoystickProductForID(SDL_JoystickID instance_id);
# 358 "include/SDL3/SDL_joystick.h"
extern Uint16 SDL_GetJoystickProductVersionForID(SDL_JoystickID instance_id);
# 377 "include/SDL3/SDL_joystick.h"
extern SDL_JoystickType SDL_GetJoystickTypeForID(SDL_JoystickID instance_id);
# 395 "include/SDL3/SDL_joystick.h"
extern SDL_Joystick * SDL_OpenJoystick(SDL_JoystickID instance_id);
# 408 "include/SDL3/SDL_joystick.h"
extern SDL_Joystick * SDL_GetJoystickFromID(SDL_JoystickID instance_id);
# 424 "include/SDL3/SDL_joystick.h"
extern SDL_Joystick * SDL_GetJoystickFromPlayerIndex(int player_index);
# 433 "include/SDL3/SDL_joystick.h"
typedef struct SDL_VirtualJoystickTouchpadDesc
{
    Uint16 nfingers;
    Uint16 padding[3];
} SDL_VirtualJoystickTouchpadDesc;
# 446 "include/SDL3/SDL_joystick.h"
typedef struct SDL_VirtualJoystickSensorDesc
{
    SDL_SensorType type;
    float rate;
} SDL_VirtualJoystickSensorDesc;
# 465 "include/SDL3/SDL_joystick.h"
typedef struct SDL_VirtualJoystickDesc
{
    Uint32 version;
    Uint16 type;
    Uint16 padding;
    Uint16 vendor_id;
    Uint16 product_id;
    Uint16 naxes;
    Uint16 nbuttons;
    Uint16 nballs;
    Uint16 nhats;
    Uint16 ntouchpads;
    Uint16 nsensors;
    Uint16 padding2[2];
    Uint32 button_mask;

    Uint32 axis_mask;

    const char *name;
    const SDL_VirtualJoystickTouchpadDesc *touchpads;
    const SDL_VirtualJoystickSensorDesc *sensors;

    void *userdata;
    void ( *Update)(void *userdata);
    void ( *SetPlayerIndex)(void *userdata, int player_index);
    bool ( *Rumble)(void *userdata, Uint16 low_frequency_rumble, Uint16 high_frequency_rumble);
    bool ( *RumbleTriggers)(void *userdata, Uint16 left_rumble, Uint16 right_rumble);
    bool ( *SetLED)(void *userdata, Uint8 red, Uint8 green, Uint8 blue);
    bool ( *SendEffect)(void *userdata, const void *data, int size);
    bool ( *SetSensorsEnabled)(void *userdata, bool enabled);
    void ( *Cleanup)(void *userdata);
} SDL_VirtualJoystickDesc;







static_assert((sizeof(void *) == 4 && sizeof(SDL_VirtualJoystickDesc) == 84) || (sizeof(void *) == 8 && sizeof(SDL_VirtualJoystickDesc) == 136), "(sizeof(void *) == 4 && sizeof(SDL_VirtualJoystickDesc) == 84) || (sizeof(void *) == 8 && sizeof(SDL_VirtualJoystickDesc) == 136)")

                                                                    ;
# 539 "include/SDL3/SDL_joystick.h"
extern SDL_JoystickID SDL_AttachVirtualJoystick(const SDL_VirtualJoystickDesc *desc);
# 555 "include/SDL3/SDL_joystick.h"
extern bool SDL_DetachVirtualJoystick(SDL_JoystickID instance_id);
# 567 "include/SDL3/SDL_joystick.h"
extern bool SDL_IsJoystickVirtual(SDL_JoystickID instance_id);
# 598 "include/SDL3/SDL_joystick.h"
extern bool SDL_SetJoystickVirtualAxis(SDL_Joystick *joystick, int axis, Sint16 value);
# 626 "include/SDL3/SDL_joystick.h"
extern bool SDL_SetJoystickVirtualBall(SDL_Joystick *joystick, int ball, Sint16 xrel, Sint16 yrel);
# 653 "include/SDL3/SDL_joystick.h"
extern bool SDL_SetJoystickVirtualButton(SDL_Joystick *joystick, int button, bool down);
# 680 "include/SDL3/SDL_joystick.h"
extern bool SDL_SetJoystickVirtualHat(SDL_Joystick *joystick, int hat, Uint8 value);
# 714 "include/SDL3/SDL_joystick.h"
extern bool SDL_SetJoystickVirtualTouchpad(SDL_Joystick *joystick, int touchpad, int finger, bool down, float x, float y, float pressure);
# 744 "include/SDL3/SDL_joystick.h"
extern bool SDL_SendJoystickVirtualSensorData(SDL_Joystick *joystick, SDL_SensorType type, Uint64 sensor_timestamp, const float *data, int num_values);
# 770 "include/SDL3/SDL_joystick.h"
extern SDL_PropertiesID SDL_GetJoystickProperties(SDL_Joystick *joystick);
# 791 "include/SDL3/SDL_joystick.h"
extern const char * SDL_GetJoystickName(SDL_Joystick *joystick);
# 806 "include/SDL3/SDL_joystick.h"
extern const char * SDL_GetJoystickPath(SDL_Joystick *joystick);
# 823 "include/SDL3/SDL_joystick.h"
extern int SDL_GetJoystickPlayerIndex(SDL_Joystick *joystick);
# 840 "include/SDL3/SDL_joystick.h"
extern bool SDL_SetJoystickPlayerIndex(SDL_Joystick *joystick, int player_index);
# 859 "include/SDL3/SDL_joystick.h"
extern SDL_GUID SDL_GetJoystickGUID(SDL_Joystick *joystick);
# 875 "include/SDL3/SDL_joystick.h"
extern Uint16 SDL_GetJoystickVendor(SDL_Joystick *joystick);
# 891 "include/SDL3/SDL_joystick.h"
extern Uint16 SDL_GetJoystickProduct(SDL_Joystick *joystick);
# 907 "include/SDL3/SDL_joystick.h"
extern Uint16 SDL_GetJoystickProductVersion(SDL_Joystick *joystick);
# 922 "include/SDL3/SDL_joystick.h"
extern Uint16 SDL_GetJoystickFirmwareVersion(SDL_Joystick *joystick);
# 937 "include/SDL3/SDL_joystick.h"
extern const char * SDL_GetJoystickSerial(SDL_Joystick *joystick);
# 951 "include/SDL3/SDL_joystick.h"
extern SDL_JoystickType SDL_GetJoystickType(SDL_Joystick *joystick);
# 972 "include/SDL3/SDL_joystick.h"
extern void SDL_GetJoystickGUIDInfo(SDL_GUID guid, Uint16 *vendor, Uint16 *product, Uint16 *version, Uint16 *crc16);
# 985 "include/SDL3/SDL_joystick.h"
extern bool SDL_JoystickConnected(SDL_Joystick *joystick);
# 998 "include/SDL3/SDL_joystick.h"
extern SDL_JoystickID SDL_GetJoystickID(SDL_Joystick *joystick);
# 1020 "include/SDL3/SDL_joystick.h"
extern int SDL_GetNumJoystickAxes(SDL_Joystick *joystick);
# 1043 "include/SDL3/SDL_joystick.h"
extern int SDL_GetNumJoystickBalls(SDL_Joystick *joystick);
# 1061 "include/SDL3/SDL_joystick.h"
extern int SDL_GetNumJoystickHats(SDL_Joystick *joystick);
# 1079 "include/SDL3/SDL_joystick.h"
extern int SDL_GetNumJoystickButtons(SDL_Joystick *joystick);
# 1097 "include/SDL3/SDL_joystick.h"
extern void SDL_SetJoystickEventsEnabled(bool enabled);
# 1114 "include/SDL3/SDL_joystick.h"
extern bool SDL_JoystickEventsEnabled(void);
# 1126 "include/SDL3/SDL_joystick.h"
extern void SDL_UpdateJoysticks(void);
# 1152 "include/SDL3/SDL_joystick.h"
extern Sint16 SDL_GetJoystickAxis(SDL_Joystick *joystick, int axis);
# 1170 "include/SDL3/SDL_joystick.h"
extern bool SDL_GetJoystickAxisInitialState(SDL_Joystick *joystick, int axis, Sint16 *state);
# 1193 "include/SDL3/SDL_joystick.h"
extern bool SDL_GetJoystickBall(SDL_Joystick *joystick, int ball, int *dx, int *dy);
# 1210 "include/SDL3/SDL_joystick.h"
extern Uint8 SDL_GetJoystickHat(SDL_Joystick *joystick, int hat);
# 1236 "include/SDL3/SDL_joystick.h"
extern bool SDL_GetJoystickButton(SDL_Joystick *joystick, int button);
# 1259 "include/SDL3/SDL_joystick.h"
extern bool SDL_RumbleJoystick(SDL_Joystick *joystick, Uint16 low_frequency_rumble, Uint16 high_frequency_rumble, Uint32 duration_ms);
# 1290 "include/SDL3/SDL_joystick.h"
extern bool SDL_RumbleJoystickTriggers(SDL_Joystick *joystick, Uint16 left_rumble, Uint16 right_rumble, Uint32 duration_ms);
# 1312 "include/SDL3/SDL_joystick.h"
extern bool SDL_SetJoystickLED(SDL_Joystick *joystick, Uint8 red, Uint8 green, Uint8 blue);
# 1327 "include/SDL3/SDL_joystick.h"
extern bool SDL_SendJoystickEffect(SDL_Joystick *joystick, const void *data, int size);
# 1340 "include/SDL3/SDL_joystick.h"
extern void SDL_CloseJoystick(SDL_Joystick *joystick);
# 1354 "include/SDL3/SDL_joystick.h"
extern SDL_JoystickConnectionState SDL_GetJoystickConnectionState(SDL_Joystick *joystick);
# 1377 "include/SDL3/SDL_joystick.h"
extern SDL_PowerState SDL_GetJoystickPowerInfo(SDL_Joystick *joystick, int *percent);





# 1 "include/SDL3/SDL_close_code.h" 1
# 1384 "include/SDL3/SDL_joystick.h" 2
# 85 "include/SDL3/SDL_gamepad.h" 2




# 1 "include/SDL3/SDL_begin_code.h" 1
# 90 "include/SDL3/SDL_gamepad.h" 2
# 100 "include/SDL3/SDL_gamepad.h"
typedef struct SDL_Gamepad SDL_Gamepad;
# 111 "include/SDL3/SDL_gamepad.h"
typedef enum SDL_GamepadType
{
    SDL_GAMEPAD_TYPE_UNKNOWN = 0,
    SDL_GAMEPAD_TYPE_STANDARD,
    SDL_GAMEPAD_TYPE_XBOX360,
    SDL_GAMEPAD_TYPE_XBOXONE,
    SDL_GAMEPAD_TYPE_PS3,
    SDL_GAMEPAD_TYPE_PS4,
    SDL_GAMEPAD_TYPE_PS5,
    SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_PRO,
    SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_LEFT,
    SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_RIGHT,
    SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_PAIR,
    SDL_GAMEPAD_TYPE_GAMECUBE,
    SDL_GAMEPAD_TYPE_COUNT
} SDL_GamepadType;
# 152 "include/SDL3/SDL_gamepad.h"
typedef enum SDL_GamepadButton
{
    SDL_GAMEPAD_BUTTON_INVALID = -1,
    SDL_GAMEPAD_BUTTON_SOUTH,
    SDL_GAMEPAD_BUTTON_EAST,
    SDL_GAMEPAD_BUTTON_WEST,
    SDL_GAMEPAD_BUTTON_NORTH,
    SDL_GAMEPAD_BUTTON_BACK,
    SDL_GAMEPAD_BUTTON_GUIDE,
    SDL_GAMEPAD_BUTTON_START,
    SDL_GAMEPAD_BUTTON_LEFT_STICK,
    SDL_GAMEPAD_BUTTON_RIGHT_STICK,
    SDL_GAMEPAD_BUTTON_LEFT_SHOULDER,
    SDL_GAMEPAD_BUTTON_RIGHT_SHOULDER,
    SDL_GAMEPAD_BUTTON_DPAD_UP,
    SDL_GAMEPAD_BUTTON_DPAD_DOWN,
    SDL_GAMEPAD_BUTTON_DPAD_LEFT,
    SDL_GAMEPAD_BUTTON_DPAD_RIGHT,
    SDL_GAMEPAD_BUTTON_MISC1,
    SDL_GAMEPAD_BUTTON_RIGHT_PADDLE1,
    SDL_GAMEPAD_BUTTON_LEFT_PADDLE1,
    SDL_GAMEPAD_BUTTON_RIGHT_PADDLE2,
    SDL_GAMEPAD_BUTTON_LEFT_PADDLE2,
    SDL_GAMEPAD_BUTTON_TOUCHPAD,
    SDL_GAMEPAD_BUTTON_MISC2,
    SDL_GAMEPAD_BUTTON_MISC3,
    SDL_GAMEPAD_BUTTON_MISC4,
    SDL_GAMEPAD_BUTTON_MISC5,
    SDL_GAMEPAD_BUTTON_MISC6,
    SDL_GAMEPAD_BUTTON_COUNT
} SDL_GamepadButton;
# 195 "include/SDL3/SDL_gamepad.h"
typedef enum SDL_GamepadButtonLabel
{
    SDL_GAMEPAD_BUTTON_LABEL_UNKNOWN,
    SDL_GAMEPAD_BUTTON_LABEL_A,
    SDL_GAMEPAD_BUTTON_LABEL_B,
    SDL_GAMEPAD_BUTTON_LABEL_X,
    SDL_GAMEPAD_BUTTON_LABEL_Y,
    SDL_GAMEPAD_BUTTON_LABEL_CROSS,
    SDL_GAMEPAD_BUTTON_LABEL_CIRCLE,
    SDL_GAMEPAD_BUTTON_LABEL_SQUARE,
    SDL_GAMEPAD_BUTTON_LABEL_TRIANGLE
} SDL_GamepadButtonLabel;
# 222 "include/SDL3/SDL_gamepad.h"
typedef enum SDL_GamepadAxis
{
    SDL_GAMEPAD_AXIS_INVALID = -1,
    SDL_GAMEPAD_AXIS_LEFTX,
    SDL_GAMEPAD_AXIS_LEFTY,
    SDL_GAMEPAD_AXIS_RIGHTX,
    SDL_GAMEPAD_AXIS_RIGHTY,
    SDL_GAMEPAD_AXIS_LEFT_TRIGGER,
    SDL_GAMEPAD_AXIS_RIGHT_TRIGGER,
    SDL_GAMEPAD_AXIS_COUNT
} SDL_GamepadAxis;
# 244 "include/SDL3/SDL_gamepad.h"
typedef enum SDL_GamepadBindingType
{
    SDL_GAMEPAD_BINDTYPE_NONE = 0,
    SDL_GAMEPAD_BINDTYPE_BUTTON,
    SDL_GAMEPAD_BINDTYPE_AXIS,
    SDL_GAMEPAD_BINDTYPE_HAT
} SDL_GamepadBindingType;
# 267 "include/SDL3/SDL_gamepad.h"
typedef struct SDL_GamepadBinding
{
    SDL_GamepadBindingType input_type;
    union
    {
        int button;

        struct
        {
            int axis;
            int axis_min;
            int axis_max;
        } axis;

        struct
        {
            int hat;
            int hat_mask;
        } hat;

    } input;

    SDL_GamepadBindingType output_type;
    union
    {
        SDL_GamepadButton button;

        struct
        {
            SDL_GamepadAxis axis;
            int axis_min;
            int axis_max;
        } axis;

    } output;
} SDL_GamepadBinding;
# 346 "include/SDL3/SDL_gamepad.h"
extern int SDL_AddGamepadMapping(const char *mapping);
# 386 "include/SDL3/SDL_gamepad.h"
extern int SDL_AddGamepadMappingsFromIO(SDL_IOStream *src, bool closeio);
# 420 "include/SDL3/SDL_gamepad.h"
extern int SDL_AddGamepadMappingsFromFile(const char *file);
# 434 "include/SDL3/SDL_gamepad.h"
extern bool SDL_ReloadGamepadMappings(void);
# 450 "include/SDL3/SDL_gamepad.h"
extern char ** SDL_GetGamepadMappings(int *count);
# 467 "include/SDL3/SDL_gamepad.h"
extern char * SDL_GetGamepadMappingForGUID(SDL_GUID guid);
# 488 "include/SDL3/SDL_gamepad.h"
extern char * SDL_GetGamepadMapping(SDL_Gamepad *gamepad);
# 508 "include/SDL3/SDL_gamepad.h"
extern bool SDL_SetGamepadMapping(SDL_JoystickID instance_id, const char *mapping);
# 521 "include/SDL3/SDL_gamepad.h"
extern bool SDL_HasGamepad(void);
# 539 "include/SDL3/SDL_gamepad.h"
extern SDL_JoystickID * SDL_GetGamepads(int *count);
# 555 "include/SDL3/SDL_gamepad.h"
extern bool SDL_IsGamepad(SDL_JoystickID instance_id);
# 573 "include/SDL3/SDL_gamepad.h"
extern const char * SDL_GetGamepadNameForID(SDL_JoystickID instance_id);
# 591 "include/SDL3/SDL_gamepad.h"
extern const char * SDL_GetGamepadPathForID(SDL_JoystickID instance_id);
# 608 "include/SDL3/SDL_gamepad.h"
extern int SDL_GetGamepadPlayerIndexForID(SDL_JoystickID instance_id);
# 626 "include/SDL3/SDL_gamepad.h"
extern SDL_GUID SDL_GetGamepadGUIDForID(SDL_JoystickID instance_id);
# 645 "include/SDL3/SDL_gamepad.h"
extern Uint16 SDL_GetGamepadVendorForID(SDL_JoystickID instance_id);
# 664 "include/SDL3/SDL_gamepad.h"
extern Uint16 SDL_GetGamepadProductForID(SDL_JoystickID instance_id);
# 683 "include/SDL3/SDL_gamepad.h"
extern Uint16 SDL_GetGamepadProductVersionForID(SDL_JoystickID instance_id);
# 701 "include/SDL3/SDL_gamepad.h"
extern SDL_GamepadType SDL_GetGamepadTypeForID(SDL_JoystickID instance_id);
# 719 "include/SDL3/SDL_gamepad.h"
extern SDL_GamepadType SDL_GetRealGamepadTypeForID(SDL_JoystickID instance_id);
# 737 "include/SDL3/SDL_gamepad.h"
extern char * SDL_GetGamepadMappingForID(SDL_JoystickID instance_id);
# 753 "include/SDL3/SDL_gamepad.h"
extern SDL_Gamepad * SDL_OpenGamepad(SDL_JoystickID instance_id);
# 767 "include/SDL3/SDL_gamepad.h"
extern SDL_Gamepad * SDL_GetGamepadFromID(SDL_JoystickID instance_id);
# 782 "include/SDL3/SDL_gamepad.h"
extern SDL_Gamepad * SDL_GetGamepadFromPlayerIndex(int player_index);
# 811 "include/SDL3/SDL_gamepad.h"
extern SDL_PropertiesID SDL_GetGamepadProperties(SDL_Gamepad *gamepad);
# 831 "include/SDL3/SDL_gamepad.h"
extern SDL_JoystickID SDL_GetGamepadID(SDL_Gamepad *gamepad);
# 847 "include/SDL3/SDL_gamepad.h"
extern const char * SDL_GetGamepadName(SDL_Gamepad *gamepad);
# 863 "include/SDL3/SDL_gamepad.h"
extern const char * SDL_GetGamepadPath(SDL_Gamepad *gamepad);
# 878 "include/SDL3/SDL_gamepad.h"
extern SDL_GamepadType SDL_GetGamepadType(SDL_Gamepad *gamepad);
# 893 "include/SDL3/SDL_gamepad.h"
extern SDL_GamepadType SDL_GetRealGamepadType(SDL_Gamepad *gamepad);
# 909 "include/SDL3/SDL_gamepad.h"
extern int SDL_GetGamepadPlayerIndex(SDL_Gamepad *gamepad);
# 926 "include/SDL3/SDL_gamepad.h"
extern bool SDL_SetGamepadPlayerIndex(SDL_Gamepad *gamepad, int player_index);
# 942 "include/SDL3/SDL_gamepad.h"
extern Uint16 SDL_GetGamepadVendor(SDL_Gamepad *gamepad);
# 958 "include/SDL3/SDL_gamepad.h"
extern Uint16 SDL_GetGamepadProduct(SDL_Gamepad *gamepad);
# 974 "include/SDL3/SDL_gamepad.h"
extern Uint16 SDL_GetGamepadProductVersion(SDL_Gamepad *gamepad);
# 988 "include/SDL3/SDL_gamepad.h"
extern Uint16 SDL_GetGamepadFirmwareVersion(SDL_Gamepad *gamepad);
# 1002 "include/SDL3/SDL_gamepad.h"
extern const char * SDL_GetGamepadSerial(SDL_Gamepad *gamepad);
# 1017 "include/SDL3/SDL_gamepad.h"
extern Uint64 SDL_GetGamepadSteamHandle(SDL_Gamepad *gamepad);
# 1031 "include/SDL3/SDL_gamepad.h"
extern SDL_JoystickConnectionState SDL_GetGamepadConnectionState(SDL_Gamepad *gamepad);
# 1053 "include/SDL3/SDL_gamepad.h"
extern SDL_PowerState SDL_GetGamepadPowerInfo(SDL_Gamepad *gamepad, int *percent);
# 1067 "include/SDL3/SDL_gamepad.h"
extern bool SDL_GamepadConnected(SDL_Gamepad *gamepad);
# 1089 "include/SDL3/SDL_gamepad.h"
extern SDL_Joystick * SDL_GetGamepadJoystick(SDL_Gamepad *gamepad);
# 1106 "include/SDL3/SDL_gamepad.h"
extern void SDL_SetGamepadEventsEnabled(bool enabled);
# 1122 "include/SDL3/SDL_gamepad.h"
extern bool SDL_GamepadEventsEnabled(void);
# 1138 "include/SDL3/SDL_gamepad.h"
extern SDL_GamepadBinding ** SDL_GetGamepadBindings(SDL_Gamepad *gamepad, int *count);
# 1151 "include/SDL3/SDL_gamepad.h"
extern void SDL_UpdateGamepads(void);
# 1171 "include/SDL3/SDL_gamepad.h"
extern SDL_GamepadType SDL_GetGamepadTypeFromString(const char *str);
# 1187 "include/SDL3/SDL_gamepad.h"
extern const char * SDL_GetGamepadStringForType(SDL_GamepadType type);
# 1211 "include/SDL3/SDL_gamepad.h"
extern SDL_GamepadAxis SDL_GetGamepadAxisFromString(const char *str);
# 1227 "include/SDL3/SDL_gamepad.h"
extern const char * SDL_GetGamepadStringForAxis(SDL_GamepadAxis axis);
# 1246 "include/SDL3/SDL_gamepad.h"
extern bool SDL_GamepadHasAxis(SDL_Gamepad *gamepad, SDL_GamepadAxis axis);
# 1274 "include/SDL3/SDL_gamepad.h"
extern Sint16 SDL_GetGamepadAxis(SDL_Gamepad *gamepad, SDL_GamepadAxis axis);
# 1294 "include/SDL3/SDL_gamepad.h"
extern SDL_GamepadButton SDL_GetGamepadButtonFromString(const char *str);
# 1310 "include/SDL3/SDL_gamepad.h"
extern const char * SDL_GetGamepadStringForButton(SDL_GamepadButton button);
# 1328 "include/SDL3/SDL_gamepad.h"
extern bool SDL_GamepadHasButton(SDL_Gamepad *gamepad, SDL_GamepadButton button);
# 1344 "include/SDL3/SDL_gamepad.h"
extern bool SDL_GetGamepadButton(SDL_Gamepad *gamepad, SDL_GamepadButton button);
# 1359 "include/SDL3/SDL_gamepad.h"
extern SDL_GamepadButtonLabel SDL_GetGamepadButtonLabelForType(SDL_GamepadType type, SDL_GamepadButton button);
# 1374 "include/SDL3/SDL_gamepad.h"
extern SDL_GamepadButtonLabel SDL_GetGamepadButtonLabel(SDL_Gamepad *gamepad, SDL_GamepadButton button);
# 1388 "include/SDL3/SDL_gamepad.h"
extern int SDL_GetNumGamepadTouchpads(SDL_Gamepad *gamepad);
# 1405 "include/SDL3/SDL_gamepad.h"
extern int SDL_GetNumGamepadTouchpadFingers(SDL_Gamepad *gamepad, int touchpad);
# 1429 "include/SDL3/SDL_gamepad.h"
extern bool SDL_GetGamepadTouchpadFinger(SDL_Gamepad *gamepad, int touchpad, int finger, bool *down, float *x, float *y, float *pressure);
# 1446 "include/SDL3/SDL_gamepad.h"
extern bool SDL_GamepadHasSensor(SDL_Gamepad *gamepad, SDL_SensorType type);
# 1464 "include/SDL3/SDL_gamepad.h"
extern bool SDL_SetGamepadSensorEnabled(SDL_Gamepad *gamepad, SDL_SensorType type, bool enabled);
# 1479 "include/SDL3/SDL_gamepad.h"
extern bool SDL_GamepadSensorEnabled(SDL_Gamepad *gamepad, SDL_SensorType type);
# 1492 "include/SDL3/SDL_gamepad.h"
extern float SDL_GetGamepadSensorDataRate(SDL_Gamepad *gamepad, SDL_SensorType type);
# 1511 "include/SDL3/SDL_gamepad.h"
extern bool SDL_GetGamepadSensorData(SDL_Gamepad *gamepad, SDL_SensorType type, float *data, int num_values);
# 1535 "include/SDL3/SDL_gamepad.h"
extern bool SDL_RumbleGamepad(SDL_Gamepad *gamepad, Uint16 low_frequency_rumble, Uint16 high_frequency_rumble, Uint32 duration_ms);
# 1565 "include/SDL3/SDL_gamepad.h"
extern bool SDL_RumbleGamepadTriggers(SDL_Gamepad *gamepad, Uint16 left_rumble, Uint16 right_rumble, Uint32 duration_ms);
# 1587 "include/SDL3/SDL_gamepad.h"
extern bool SDL_SetGamepadLED(SDL_Gamepad *gamepad, Uint8 red, Uint8 green, Uint8 blue);
# 1602 "include/SDL3/SDL_gamepad.h"
extern bool SDL_SendGamepadEffect(SDL_Gamepad *gamepad, const void *data, int size);
# 1616 "include/SDL3/SDL_gamepad.h"
extern void SDL_CloseGamepad(SDL_Gamepad *gamepad);
# 1632 "include/SDL3/SDL_gamepad.h"
extern const char * SDL_GetGamepadAppleSFSymbolsNameForButton(SDL_Gamepad *gamepad, SDL_GamepadButton button);
# 1647 "include/SDL3/SDL_gamepad.h"
extern const char * SDL_GetGamepadAppleSFSymbolsNameForAxis(SDL_Gamepad *gamepad, SDL_GamepadAxis axis);






# 1 "include/SDL3/SDL_close_code.h" 1
# 1655 "include/SDL3/SDL_gamepad.h" 2
# 60 "include/SDL3/SDL_events.h" 2

# 1 "include/SDL3/SDL_keyboard.h" 1
# 38 "include/SDL3/SDL_keyboard.h"
# 1 "include/SDL3/SDL_keycode.h" 1
# 37 "include/SDL3/SDL_keycode.h"
# 1 "include/SDL3/SDL_scancode.h" 1
# 52 "include/SDL3/SDL_scancode.h"
typedef enum SDL_Scancode
{
    SDL_SCANCODE_UNKNOWN = 0,
# 63 "include/SDL3/SDL_scancode.h"
    SDL_SCANCODE_A = 4,
    SDL_SCANCODE_B = 5,
    SDL_SCANCODE_C = 6,
    SDL_SCANCODE_D = 7,
    SDL_SCANCODE_E = 8,
    SDL_SCANCODE_F = 9,
    SDL_SCANCODE_G = 10,
    SDL_SCANCODE_H = 11,
    SDL_SCANCODE_I = 12,
    SDL_SCANCODE_J = 13,
    SDL_SCANCODE_K = 14,
    SDL_SCANCODE_L = 15,
    SDL_SCANCODE_M = 16,
    SDL_SCANCODE_N = 17,
    SDL_SCANCODE_O = 18,
    SDL_SCANCODE_P = 19,
    SDL_SCANCODE_Q = 20,
    SDL_SCANCODE_R = 21,
    SDL_SCANCODE_S = 22,
    SDL_SCANCODE_T = 23,
    SDL_SCANCODE_U = 24,
    SDL_SCANCODE_V = 25,
    SDL_SCANCODE_W = 26,
    SDL_SCANCODE_X = 27,
    SDL_SCANCODE_Y = 28,
    SDL_SCANCODE_Z = 29,

    SDL_SCANCODE_1 = 30,
    SDL_SCANCODE_2 = 31,
    SDL_SCANCODE_3 = 32,
    SDL_SCANCODE_4 = 33,
    SDL_SCANCODE_5 = 34,
    SDL_SCANCODE_6 = 35,
    SDL_SCANCODE_7 = 36,
    SDL_SCANCODE_8 = 37,
    SDL_SCANCODE_9 = 38,
    SDL_SCANCODE_0 = 39,

    SDL_SCANCODE_RETURN = 40,
    SDL_SCANCODE_ESCAPE = 41,
    SDL_SCANCODE_BACKSPACE = 42,
    SDL_SCANCODE_TAB = 43,
    SDL_SCANCODE_SPACE = 44,

    SDL_SCANCODE_MINUS = 45,
    SDL_SCANCODE_EQUALS = 46,
    SDL_SCANCODE_LEFTBRACKET = 47,
    SDL_SCANCODE_RIGHTBRACKET = 48,
    SDL_SCANCODE_BACKSLASH = 49,
# 125 "include/SDL3/SDL_scancode.h"
    SDL_SCANCODE_NONUSHASH = 50,
# 137 "include/SDL3/SDL_scancode.h"
    SDL_SCANCODE_SEMICOLON = 51,
    SDL_SCANCODE_APOSTROPHE = 52,
    SDL_SCANCODE_GRAVE = 53,
# 156 "include/SDL3/SDL_scancode.h"
    SDL_SCANCODE_COMMA = 54,
    SDL_SCANCODE_PERIOD = 55,
    SDL_SCANCODE_SLASH = 56,

    SDL_SCANCODE_CAPSLOCK = 57,

    SDL_SCANCODE_F1 = 58,
    SDL_SCANCODE_F2 = 59,
    SDL_SCANCODE_F3 = 60,
    SDL_SCANCODE_F4 = 61,
    SDL_SCANCODE_F5 = 62,
    SDL_SCANCODE_F6 = 63,
    SDL_SCANCODE_F7 = 64,
    SDL_SCANCODE_F8 = 65,
    SDL_SCANCODE_F9 = 66,
    SDL_SCANCODE_F10 = 67,
    SDL_SCANCODE_F11 = 68,
    SDL_SCANCODE_F12 = 69,

    SDL_SCANCODE_PRINTSCREEN = 70,
    SDL_SCANCODE_SCROLLLOCK = 71,
    SDL_SCANCODE_PAUSE = 72,
    SDL_SCANCODE_INSERT = 73,

    SDL_SCANCODE_HOME = 74,
    SDL_SCANCODE_PAGEUP = 75,
    SDL_SCANCODE_DELETE = 76,
    SDL_SCANCODE_END = 77,
    SDL_SCANCODE_PAGEDOWN = 78,
    SDL_SCANCODE_RIGHT = 79,
    SDL_SCANCODE_LEFT = 80,
    SDL_SCANCODE_DOWN = 81,
    SDL_SCANCODE_UP = 82,

    SDL_SCANCODE_NUMLOCKCLEAR = 83,

    SDL_SCANCODE_KP_DIVIDE = 84,
    SDL_SCANCODE_KP_MULTIPLY = 85,
    SDL_SCANCODE_KP_MINUS = 86,
    SDL_SCANCODE_KP_PLUS = 87,
    SDL_SCANCODE_KP_ENTER = 88,
    SDL_SCANCODE_KP_1 = 89,
    SDL_SCANCODE_KP_2 = 90,
    SDL_SCANCODE_KP_3 = 91,
    SDL_SCANCODE_KP_4 = 92,
    SDL_SCANCODE_KP_5 = 93,
    SDL_SCANCODE_KP_6 = 94,
    SDL_SCANCODE_KP_7 = 95,
    SDL_SCANCODE_KP_8 = 96,
    SDL_SCANCODE_KP_9 = 97,
    SDL_SCANCODE_KP_0 = 98,
    SDL_SCANCODE_KP_PERIOD = 99,

    SDL_SCANCODE_NONUSBACKSLASH = 100,
# 219 "include/SDL3/SDL_scancode.h"
    SDL_SCANCODE_APPLICATION = 101,
    SDL_SCANCODE_POWER = 102,


    SDL_SCANCODE_KP_EQUALS = 103,
    SDL_SCANCODE_F13 = 104,
    SDL_SCANCODE_F14 = 105,
    SDL_SCANCODE_F15 = 106,
    SDL_SCANCODE_F16 = 107,
    SDL_SCANCODE_F17 = 108,
    SDL_SCANCODE_F18 = 109,
    SDL_SCANCODE_F19 = 110,
    SDL_SCANCODE_F20 = 111,
    SDL_SCANCODE_F21 = 112,
    SDL_SCANCODE_F22 = 113,
    SDL_SCANCODE_F23 = 114,
    SDL_SCANCODE_F24 = 115,
    SDL_SCANCODE_EXECUTE = 116,
    SDL_SCANCODE_HELP = 117,
    SDL_SCANCODE_MENU = 118,
    SDL_SCANCODE_SELECT = 119,
    SDL_SCANCODE_STOP = 120,
    SDL_SCANCODE_AGAIN = 121,
    SDL_SCANCODE_UNDO = 122,
    SDL_SCANCODE_CUT = 123,
    SDL_SCANCODE_COPY = 124,
    SDL_SCANCODE_PASTE = 125,
    SDL_SCANCODE_FIND = 126,
    SDL_SCANCODE_MUTE = 127,
    SDL_SCANCODE_VOLUMEUP = 128,
    SDL_SCANCODE_VOLUMEDOWN = 129,




    SDL_SCANCODE_KP_COMMA = 133,
    SDL_SCANCODE_KP_EQUALSAS400 = 134,

    SDL_SCANCODE_INTERNATIONAL1 = 135,

    SDL_SCANCODE_INTERNATIONAL2 = 136,
    SDL_SCANCODE_INTERNATIONAL3 = 137,
    SDL_SCANCODE_INTERNATIONAL4 = 138,
    SDL_SCANCODE_INTERNATIONAL5 = 139,
    SDL_SCANCODE_INTERNATIONAL6 = 140,
    SDL_SCANCODE_INTERNATIONAL7 = 141,
    SDL_SCANCODE_INTERNATIONAL8 = 142,
    SDL_SCANCODE_INTERNATIONAL9 = 143,
    SDL_SCANCODE_LANG1 = 144,
    SDL_SCANCODE_LANG2 = 145,
    SDL_SCANCODE_LANG3 = 146,
    SDL_SCANCODE_LANG4 = 147,
    SDL_SCANCODE_LANG5 = 148,
    SDL_SCANCODE_LANG6 = 149,
    SDL_SCANCODE_LANG7 = 150,
    SDL_SCANCODE_LANG8 = 151,
    SDL_SCANCODE_LANG9 = 152,

    SDL_SCANCODE_ALTERASE = 153,
    SDL_SCANCODE_SYSREQ = 154,
    SDL_SCANCODE_CANCEL = 155,
    SDL_SCANCODE_CLEAR = 156,
    SDL_SCANCODE_PRIOR = 157,
    SDL_SCANCODE_RETURN2 = 158,
    SDL_SCANCODE_SEPARATOR = 159,
    SDL_SCANCODE_OUT = 160,
    SDL_SCANCODE_OPER = 161,
    SDL_SCANCODE_CLEARAGAIN = 162,
    SDL_SCANCODE_CRSEL = 163,
    SDL_SCANCODE_EXSEL = 164,

    SDL_SCANCODE_KP_00 = 176,
    SDL_SCANCODE_KP_000 = 177,
    SDL_SCANCODE_THOUSANDSSEPARATOR = 178,
    SDL_SCANCODE_DECIMALSEPARATOR = 179,
    SDL_SCANCODE_CURRENCYUNIT = 180,
    SDL_SCANCODE_CURRENCYSUBUNIT = 181,
    SDL_SCANCODE_KP_LEFTPAREN = 182,
    SDL_SCANCODE_KP_RIGHTPAREN = 183,
    SDL_SCANCODE_KP_LEFTBRACE = 184,
    SDL_SCANCODE_KP_RIGHTBRACE = 185,
    SDL_SCANCODE_KP_TAB = 186,
    SDL_SCANCODE_KP_BACKSPACE = 187,
    SDL_SCANCODE_KP_A = 188,
    SDL_SCANCODE_KP_B = 189,
    SDL_SCANCODE_KP_C = 190,
    SDL_SCANCODE_KP_D = 191,
    SDL_SCANCODE_KP_E = 192,
    SDL_SCANCODE_KP_F = 193,
    SDL_SCANCODE_KP_XOR = 194,
    SDL_SCANCODE_KP_POWER = 195,
    SDL_SCANCODE_KP_PERCENT = 196,
    SDL_SCANCODE_KP_LESS = 197,
    SDL_SCANCODE_KP_GREATER = 198,
    SDL_SCANCODE_KP_AMPERSAND = 199,
    SDL_SCANCODE_KP_DBLAMPERSAND = 200,
    SDL_SCANCODE_KP_VERTICALBAR = 201,
    SDL_SCANCODE_KP_DBLVERTICALBAR = 202,
    SDL_SCANCODE_KP_COLON = 203,
    SDL_SCANCODE_KP_HASH = 204,
    SDL_SCANCODE_KP_SPACE = 205,
    SDL_SCANCODE_KP_AT = 206,
    SDL_SCANCODE_KP_EXCLAM = 207,
    SDL_SCANCODE_KP_MEMSTORE = 208,
    SDL_SCANCODE_KP_MEMRECALL = 209,
    SDL_SCANCODE_KP_MEMCLEAR = 210,
    SDL_SCANCODE_KP_MEMADD = 211,
    SDL_SCANCODE_KP_MEMSUBTRACT = 212,
    SDL_SCANCODE_KP_MEMMULTIPLY = 213,
    SDL_SCANCODE_KP_MEMDIVIDE = 214,
    SDL_SCANCODE_KP_PLUSMINUS = 215,
    SDL_SCANCODE_KP_CLEAR = 216,
    SDL_SCANCODE_KP_CLEARENTRY = 217,
    SDL_SCANCODE_KP_BINARY = 218,
    SDL_SCANCODE_KP_OCTAL = 219,
    SDL_SCANCODE_KP_DECIMAL = 220,
    SDL_SCANCODE_KP_HEXADECIMAL = 221,

    SDL_SCANCODE_LCTRL = 224,
    SDL_SCANCODE_LSHIFT = 225,
    SDL_SCANCODE_LALT = 226,
    SDL_SCANCODE_LGUI = 227,
    SDL_SCANCODE_RCTRL = 228,
    SDL_SCANCODE_RSHIFT = 229,
    SDL_SCANCODE_RALT = 230,
    SDL_SCANCODE_RGUI = 231,

    SDL_SCANCODE_MODE = 257,
# 364 "include/SDL3/SDL_scancode.h"
    SDL_SCANCODE_SLEEP = 258,
    SDL_SCANCODE_WAKE = 259,

    SDL_SCANCODE_CHANNEL_INCREMENT = 260,
    SDL_SCANCODE_CHANNEL_DECREMENT = 261,

    SDL_SCANCODE_MEDIA_PLAY = 262,
    SDL_SCANCODE_MEDIA_PAUSE = 263,
    SDL_SCANCODE_MEDIA_RECORD = 264,
    SDL_SCANCODE_MEDIA_FAST_FORWARD = 265,
    SDL_SCANCODE_MEDIA_REWIND = 266,
    SDL_SCANCODE_MEDIA_NEXT_TRACK = 267,
    SDL_SCANCODE_MEDIA_PREVIOUS_TRACK = 268,
    SDL_SCANCODE_MEDIA_STOP = 269,
    SDL_SCANCODE_MEDIA_EJECT = 270,
    SDL_SCANCODE_MEDIA_PLAY_PAUSE = 271,
    SDL_SCANCODE_MEDIA_SELECT = 272,

    SDL_SCANCODE_AC_NEW = 273,
    SDL_SCANCODE_AC_OPEN = 274,
    SDL_SCANCODE_AC_CLOSE = 275,
    SDL_SCANCODE_AC_EXIT = 276,
    SDL_SCANCODE_AC_SAVE = 277,
    SDL_SCANCODE_AC_PRINT = 278,
    SDL_SCANCODE_AC_PROPERTIES = 279,

    SDL_SCANCODE_AC_SEARCH = 280,
    SDL_SCANCODE_AC_HOME = 281,
    SDL_SCANCODE_AC_BACK = 282,
    SDL_SCANCODE_AC_FORWARD = 283,
    SDL_SCANCODE_AC_STOP = 284,
    SDL_SCANCODE_AC_REFRESH = 285,
    SDL_SCANCODE_AC_BOOKMARKS = 286,
# 408 "include/SDL3/SDL_scancode.h"
    SDL_SCANCODE_SOFTLEFT = 287,



    SDL_SCANCODE_SOFTRIGHT = 288,



    SDL_SCANCODE_CALL = 289,
    SDL_SCANCODE_ENDCALL = 290,





    SDL_SCANCODE_RESERVED = 400,

    SDL_SCANCODE_COUNT = 512

} SDL_Scancode;
# 38 "include/SDL3/SDL_keycode.h" 2
# 59 "include/SDL3/SDL_keycode.h"
typedef Uint32 SDL_Keycode;
# 326 "include/SDL3/SDL_keycode.h"
typedef Uint16 SDL_Keymod;
# 39 "include/SDL3/SDL_keyboard.h" 2





# 1 "include/SDL3/SDL_begin_code.h" 1
# 45 "include/SDL3/SDL_keyboard.h" 2
# 60 "include/SDL3/SDL_keyboard.h"
typedef Uint32 SDL_KeyboardID;
# 75 "include/SDL3/SDL_keyboard.h"
extern bool SDL_HasKeyboard(void);
# 98 "include/SDL3/SDL_keyboard.h"
extern SDL_KeyboardID * SDL_GetKeyboards(int *count);
# 115 "include/SDL3/SDL_keyboard.h"
extern const char * SDL_GetKeyboardNameForID(SDL_KeyboardID instance_id);
# 126 "include/SDL3/SDL_keyboard.h"
extern SDL_Window * SDL_GetKeyboardFocus(void);
# 159 "include/SDL3/SDL_keyboard.h"
extern const bool * SDL_GetKeyboardState(int *numkeys);
# 172 "include/SDL3/SDL_keyboard.h"
extern void SDL_ResetKeyboard(void);
# 186 "include/SDL3/SDL_keyboard.h"
extern SDL_Keymod SDL_GetModState(void);
# 207 "include/SDL3/SDL_keyboard.h"
extern void SDL_SetModState(SDL_Keymod modstate);
# 231 "include/SDL3/SDL_keyboard.h"
extern SDL_Keycode SDL_GetKeyFromScancode(SDL_Scancode scancode, SDL_Keymod modstate, bool key_event);
# 252 "include/SDL3/SDL_keyboard.h"
extern SDL_Scancode SDL_GetScancodeFromKey(SDL_Keycode key, SDL_Keymod *modstate);
# 270 "include/SDL3/SDL_keyboard.h"
extern bool SDL_SetScancodeName(SDL_Scancode scancode, const char *name);
# 296 "include/SDL3/SDL_keyboard.h"
extern const char * SDL_GetScancodeName(SDL_Scancode scancode);
# 313 "include/SDL3/SDL_keyboard.h"
extern SDL_Scancode SDL_GetScancodeFromName(const char *name);
# 333 "include/SDL3/SDL_keyboard.h"
extern const char * SDL_GetKeyName(SDL_Keycode key);
# 350 "include/SDL3/SDL_keyboard.h"
extern SDL_Keycode SDL_GetKeyFromName(const char *name);
# 378 "include/SDL3/SDL_keyboard.h"
extern bool SDL_StartTextInput(SDL_Window *window);
# 391 "include/SDL3/SDL_keyboard.h"
typedef enum SDL_TextInputType
{
    SDL_TEXTINPUT_TYPE_TEXT,
    SDL_TEXTINPUT_TYPE_TEXT_NAME,
    SDL_TEXTINPUT_TYPE_TEXT_EMAIL,
    SDL_TEXTINPUT_TYPE_TEXT_USERNAME,
    SDL_TEXTINPUT_TYPE_TEXT_PASSWORD_HIDDEN,
    SDL_TEXTINPUT_TYPE_TEXT_PASSWORD_VISIBLE,
    SDL_TEXTINPUT_TYPE_NUMBER,
    SDL_TEXTINPUT_TYPE_NUMBER_PASSWORD_HIDDEN,
    SDL_TEXTINPUT_TYPE_NUMBER_PASSWORD_VISIBLE
} SDL_TextInputType;
# 415 "include/SDL3/SDL_keyboard.h"
typedef enum SDL_Capitalization
{
    SDL_CAPITALIZE_NONE,
    SDL_CAPITALIZE_SENTENCES,
    SDL_CAPITALIZE_WORDS,
    SDL_CAPITALIZE_LETTERS
} SDL_Capitalization;
# 473 "include/SDL3/SDL_keyboard.h"
extern bool SDL_StartTextInputWithProperties(SDL_Window *window, SDL_PropertiesID props);
# 493 "include/SDL3/SDL_keyboard.h"
extern bool SDL_TextInputActive(SDL_Window *window);
# 511 "include/SDL3/SDL_keyboard.h"
extern bool SDL_StopTextInput(SDL_Window *window);
# 527 "include/SDL3/SDL_keyboard.h"
extern bool SDL_ClearComposition(SDL_Window *window);
# 550 "include/SDL3/SDL_keyboard.h"
extern bool SDL_SetTextInputArea(SDL_Window *window, const SDL_Rect *rect, int cursor);
# 571 "include/SDL3/SDL_keyboard.h"
extern bool SDL_GetTextInputArea(SDL_Window *window, SDL_Rect *rect, int *cursor);
# 586 "include/SDL3/SDL_keyboard.h"
extern bool SDL_HasScreenKeyboardSupport(void);
# 600 "include/SDL3/SDL_keyboard.h"
extern bool SDL_ScreenKeyboardShown(SDL_Window *window);





# 1 "include/SDL3/SDL_close_code.h" 1
# 607 "include/SDL3/SDL_keyboard.h" 2
# 62 "include/SDL3/SDL_events.h" 2

# 1 "include/SDL3/SDL_mouse.h" 1
# 65 "include/SDL3/SDL_mouse.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 66 "include/SDL3/SDL_mouse.h" 2
# 81 "include/SDL3/SDL_mouse.h"
typedef Uint32 SDL_MouseID;
# 90 "include/SDL3/SDL_mouse.h"
typedef struct SDL_Cursor SDL_Cursor;






typedef enum SDL_SystemCursor
{
    SDL_SYSTEM_CURSOR_DEFAULT,
    SDL_SYSTEM_CURSOR_TEXT,
    SDL_SYSTEM_CURSOR_WAIT,
    SDL_SYSTEM_CURSOR_CROSSHAIR,
    SDL_SYSTEM_CURSOR_PROGRESS,
    SDL_SYSTEM_CURSOR_NWSE_RESIZE,
    SDL_SYSTEM_CURSOR_NESW_RESIZE,
    SDL_SYSTEM_CURSOR_EW_RESIZE,
    SDL_SYSTEM_CURSOR_NS_RESIZE,
    SDL_SYSTEM_CURSOR_MOVE,
    SDL_SYSTEM_CURSOR_NOT_ALLOWED,
    SDL_SYSTEM_CURSOR_POINTER,
    SDL_SYSTEM_CURSOR_NW_RESIZE,
    SDL_SYSTEM_CURSOR_N_RESIZE,
    SDL_SYSTEM_CURSOR_NE_RESIZE,
    SDL_SYSTEM_CURSOR_E_RESIZE,
    SDL_SYSTEM_CURSOR_SE_RESIZE,
    SDL_SYSTEM_CURSOR_S_RESIZE,
    SDL_SYSTEM_CURSOR_SW_RESIZE,
    SDL_SYSTEM_CURSOR_W_RESIZE,
    SDL_SYSTEM_CURSOR_COUNT
} SDL_SystemCursor;






typedef enum SDL_MouseWheelDirection
{
    SDL_MOUSEWHEEL_NORMAL,
    SDL_MOUSEWHEEL_FLIPPED
} SDL_MouseWheelDirection;






typedef struct SDL_CursorFrameInfo
{
    SDL_Surface *surface;
    Uint32 duration;
} SDL_CursorFrameInfo;
# 159 "include/SDL3/SDL_mouse.h"
typedef Uint32 SDL_MouseButtonFlags;
# 205 "include/SDL3/SDL_mouse.h"
typedef void ( *SDL_MouseMotionTransformCallback)(
    void *userdata,
    Uint64 timestamp,
    SDL_Window *window,
    SDL_MouseID mouseID,
    float *x, float *y
);
# 226 "include/SDL3/SDL_mouse.h"
extern bool SDL_HasMouse(void);
# 249 "include/SDL3/SDL_mouse.h"
extern SDL_MouseID * SDL_GetMice(int *count);
# 266 "include/SDL3/SDL_mouse.h"
extern const char * SDL_GetMouseNameForID(SDL_MouseID instance_id);
# 277 "include/SDL3/SDL_mouse.h"
extern SDL_Window * SDL_GetMouseFocus(void);
# 310 "include/SDL3/SDL_mouse.h"
extern SDL_MouseButtonFlags SDL_GetMouseState(float *x, float *y);
# 347 "include/SDL3/SDL_mouse.h"
extern SDL_MouseButtonFlags SDL_GetGlobalMouseState(float *x, float *y);
# 382 "include/SDL3/SDL_mouse.h"
extern SDL_MouseButtonFlags SDL_GetRelativeMouseState(float *x, float *y);
# 405 "include/SDL3/SDL_mouse.h"
extern void SDL_WarpMouseInWindow(SDL_Window *window,
                                                   float x, float y);
# 430 "include/SDL3/SDL_mouse.h"
extern bool SDL_WarpMouseGlobal(float x, float y);
# 448 "include/SDL3/SDL_mouse.h"
extern bool SDL_SetRelativeMouseTransform(SDL_MouseMotionTransformCallback callback, void *userdata);
# 476 "include/SDL3/SDL_mouse.h"
extern bool SDL_SetWindowRelativeMouseMode(SDL_Window *window, bool enabled);
# 490 "include/SDL3/SDL_mouse.h"
extern bool SDL_GetWindowRelativeMouseMode(SDL_Window *window);
# 538 "include/SDL3/SDL_mouse.h"
extern bool SDL_CaptureMouse(bool enabled);
# 585 "include/SDL3/SDL_mouse.h"
extern SDL_Cursor * SDL_CreateCursor(const Uint8 *data,
                                                     const Uint8 *mask,
                                                     int w, int h, int hot_x,
                                                     int hot_y);
# 622 "include/SDL3/SDL_mouse.h"
extern SDL_Cursor * SDL_CreateColorCursor(SDL_Surface *surface,
                                                          int hot_x,
                                                          int hot_y);
# 672 "include/SDL3/SDL_mouse.h"
extern SDL_Cursor * SDL_CreateAnimatedCursor(SDL_CursorFrameInfo *frames,
                                                                 int frame_count,
                                                                 int hot_x,
                                                                 int hot_y);
# 690 "include/SDL3/SDL_mouse.h"
extern SDL_Cursor * SDL_CreateSystemCursor(SDL_SystemCursor id);
# 710 "include/SDL3/SDL_mouse.h"
extern bool SDL_SetCursor(SDL_Cursor *cursor);
# 726 "include/SDL3/SDL_mouse.h"
extern SDL_Cursor * SDL_GetCursor(void);
# 741 "include/SDL3/SDL_mouse.h"
extern SDL_Cursor * SDL_GetDefaultCursor(void);
# 760 "include/SDL3/SDL_mouse.h"
extern void SDL_DestroyCursor(SDL_Cursor *cursor);
# 775 "include/SDL3/SDL_mouse.h"
extern bool SDL_ShowCursor(void);
# 790 "include/SDL3/SDL_mouse.h"
extern bool SDL_HideCursor(void);
# 805 "include/SDL3/SDL_mouse.h"
extern bool SDL_CursorVisible(void);





# 1 "include/SDL3/SDL_close_code.h" 1
# 812 "include/SDL3/SDL_mouse.h" 2
# 64 "include/SDL3/SDL_events.h" 2
# 1 "include/SDL3/SDL_pen.h" 1
# 69 "include/SDL3/SDL_pen.h"
# 1 "include/SDL3/SDL_touch.h" 1
# 46 "include/SDL3/SDL_touch.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 47 "include/SDL3/SDL_touch.h" 2
# 62 "include/SDL3/SDL_touch.h"
typedef Uint64 SDL_TouchID;
# 76 "include/SDL3/SDL_touch.h"
typedef Uint64 SDL_FingerID;






typedef enum SDL_TouchDeviceType
{
    SDL_TOUCH_DEVICE_INVALID = -1,
    SDL_TOUCH_DEVICE_DIRECT,
    SDL_TOUCH_DEVICE_INDIRECT_ABSOLUTE,
    SDL_TOUCH_DEVICE_INDIRECT_RELATIVE
} SDL_TouchDeviceType;
# 102 "include/SDL3/SDL_touch.h"
typedef struct SDL_Finger
{
    SDL_FingerID id;
    float x;
    float y;
    float pressure;
} SDL_Finger;
# 140 "include/SDL3/SDL_touch.h"
extern SDL_TouchID * SDL_GetTouchDevices(int *count);
# 151 "include/SDL3/SDL_touch.h"
extern const char * SDL_GetTouchDeviceName(SDL_TouchID touchID);
# 161 "include/SDL3/SDL_touch.h"
extern SDL_TouchDeviceType SDL_GetTouchDeviceType(SDL_TouchID touchID);
# 176 "include/SDL3/SDL_touch.h"
extern SDL_Finger ** SDL_GetTouchFingers(SDL_TouchID touchID, int *count);





# 1 "include/SDL3/SDL_close_code.h" 1
# 183 "include/SDL3/SDL_touch.h" 2
# 70 "include/SDL3/SDL_pen.h" 2

# 1 "include/SDL3/SDL_begin_code.h" 1
# 72 "include/SDL3/SDL_pen.h" 2
# 93 "include/SDL3/SDL_pen.h"
typedef Uint32 SDL_PenID;
# 114 "include/SDL3/SDL_pen.h"
typedef Uint32 SDL_PenInputFlags;
# 140 "include/SDL3/SDL_pen.h"
typedef enum SDL_PenAxis
{
    SDL_PEN_AXIS_PRESSURE,
    SDL_PEN_AXIS_XTILT,
    SDL_PEN_AXIS_YTILT,
    SDL_PEN_AXIS_DISTANCE,
    SDL_PEN_AXIS_ROTATION,
    SDL_PEN_AXIS_SLIDER,
    SDL_PEN_AXIS_TANGENTIAL_PRESSURE,
    SDL_PEN_AXIS_COUNT
} SDL_PenAxis;
# 167 "include/SDL3/SDL_pen.h"
typedef enum SDL_PenDeviceType
{
    SDL_PEN_DEVICE_TYPE_INVALID = -1,
    SDL_PEN_DEVICE_TYPE_UNKNOWN,
    SDL_PEN_DEVICE_TYPE_DIRECT,
    SDL_PEN_DEVICE_TYPE_INDIRECT
} SDL_PenDeviceType;
# 189 "include/SDL3/SDL_pen.h"
extern SDL_PenDeviceType SDL_GetPenDeviceType(SDL_PenID instance_id);





# 1 "include/SDL3/SDL_close_code.h" 1
# 196 "include/SDL3/SDL_pen.h" 2
# 65 "include/SDL3/SDL_events.h" 2






# 1 "include/SDL3/SDL_begin_code.h" 1
# 72 "include/SDL3/SDL_events.h" 2
# 84 "include/SDL3/SDL_events.h"
typedef enum SDL_EventType
{
    SDL_EVENT_FIRST = 0,


    SDL_EVENT_QUIT = 0x100,


    SDL_EVENT_TERMINATING,



    SDL_EVENT_LOW_MEMORY,



    SDL_EVENT_WILL_ENTER_BACKGROUND,



    SDL_EVENT_DID_ENTER_BACKGROUND,



    SDL_EVENT_WILL_ENTER_FOREGROUND,



    SDL_EVENT_DID_ENTER_FOREGROUND,




    SDL_EVENT_LOCALE_CHANGED,

    SDL_EVENT_SYSTEM_THEME_CHANGED,



    SDL_EVENT_DISPLAY_ORIENTATION = 0x151,
    SDL_EVENT_DISPLAY_ADDED,
    SDL_EVENT_DISPLAY_REMOVED,
    SDL_EVENT_DISPLAY_MOVED,
    SDL_EVENT_DISPLAY_DESKTOP_MODE_CHANGED,
    SDL_EVENT_DISPLAY_CURRENT_MODE_CHANGED,
    SDL_EVENT_DISPLAY_CONTENT_SCALE_CHANGED,
    SDL_EVENT_DISPLAY_USABLE_BOUNDS_CHANGED,
    SDL_EVENT_DISPLAY_FIRST = SDL_EVENT_DISPLAY_ORIENTATION,
    SDL_EVENT_DISPLAY_LAST = SDL_EVENT_DISPLAY_USABLE_BOUNDS_CHANGED,




    SDL_EVENT_WINDOW_SHOWN = 0x202,
    SDL_EVENT_WINDOW_HIDDEN,
    SDL_EVENT_WINDOW_EXPOSED,

    SDL_EVENT_WINDOW_MOVED,
    SDL_EVENT_WINDOW_RESIZED,
    SDL_EVENT_WINDOW_PIXEL_SIZE_CHANGED,
    SDL_EVENT_WINDOW_METAL_VIEW_RESIZED,
    SDL_EVENT_WINDOW_MINIMIZED,
    SDL_EVENT_WINDOW_MAXIMIZED,
    SDL_EVENT_WINDOW_RESTORED,
    SDL_EVENT_WINDOW_MOUSE_ENTER,
    SDL_EVENT_WINDOW_MOUSE_LEAVE,
    SDL_EVENT_WINDOW_FOCUS_GAINED,
    SDL_EVENT_WINDOW_FOCUS_LOST,
    SDL_EVENT_WINDOW_CLOSE_REQUESTED,
    SDL_EVENT_WINDOW_HIT_TEST,
    SDL_EVENT_WINDOW_ICCPROF_CHANGED,
    SDL_EVENT_WINDOW_DISPLAY_CHANGED,
    SDL_EVENT_WINDOW_DISPLAY_SCALE_CHANGED,
    SDL_EVENT_WINDOW_SAFE_AREA_CHANGED,
    SDL_EVENT_WINDOW_OCCLUDED,
    SDL_EVENT_WINDOW_ENTER_FULLSCREEN,
    SDL_EVENT_WINDOW_LEAVE_FULLSCREEN,
    SDL_EVENT_WINDOW_DESTROYED,



    SDL_EVENT_WINDOW_HDR_STATE_CHANGED,
    SDL_EVENT_WINDOW_FIRST = SDL_EVENT_WINDOW_SHOWN,
    SDL_EVENT_WINDOW_LAST = SDL_EVENT_WINDOW_HDR_STATE_CHANGED,


    SDL_EVENT_KEY_DOWN = 0x300,
    SDL_EVENT_KEY_UP,
    SDL_EVENT_TEXT_EDITING,
    SDL_EVENT_TEXT_INPUT,
    SDL_EVENT_KEYMAP_CHANGED,

    SDL_EVENT_KEYBOARD_ADDED,
    SDL_EVENT_KEYBOARD_REMOVED,
    SDL_EVENT_TEXT_EDITING_CANDIDATES,
    SDL_EVENT_SCREEN_KEYBOARD_SHOWN,
    SDL_EVENT_SCREEN_KEYBOARD_HIDDEN,


    SDL_EVENT_MOUSE_MOTION = 0x400,
    SDL_EVENT_MOUSE_BUTTON_DOWN,
    SDL_EVENT_MOUSE_BUTTON_UP,
    SDL_EVENT_MOUSE_WHEEL,
    SDL_EVENT_MOUSE_ADDED,
    SDL_EVENT_MOUSE_REMOVED,


    SDL_EVENT_JOYSTICK_AXIS_MOTION = 0x600,
    SDL_EVENT_JOYSTICK_BALL_MOTION,
    SDL_EVENT_JOYSTICK_HAT_MOTION,
    SDL_EVENT_JOYSTICK_BUTTON_DOWN,
    SDL_EVENT_JOYSTICK_BUTTON_UP,
    SDL_EVENT_JOYSTICK_ADDED,
    SDL_EVENT_JOYSTICK_REMOVED,
    SDL_EVENT_JOYSTICK_BATTERY_UPDATED,
    SDL_EVENT_JOYSTICK_UPDATE_COMPLETE,


    SDL_EVENT_GAMEPAD_AXIS_MOTION = 0x650,
    SDL_EVENT_GAMEPAD_BUTTON_DOWN,
    SDL_EVENT_GAMEPAD_BUTTON_UP,
    SDL_EVENT_GAMEPAD_ADDED,
    SDL_EVENT_GAMEPAD_REMOVED,
    SDL_EVENT_GAMEPAD_REMAPPED,
    SDL_EVENT_GAMEPAD_TOUCHPAD_DOWN,
    SDL_EVENT_GAMEPAD_TOUCHPAD_MOTION,
    SDL_EVENT_GAMEPAD_TOUCHPAD_UP,
    SDL_EVENT_GAMEPAD_SENSOR_UPDATE,
    SDL_EVENT_GAMEPAD_UPDATE_COMPLETE,
    SDL_EVENT_GAMEPAD_STEAM_HANDLE_UPDATED,


    SDL_EVENT_FINGER_DOWN = 0x700,
    SDL_EVENT_FINGER_UP,
    SDL_EVENT_FINGER_MOTION,
    SDL_EVENT_FINGER_CANCELED,


    SDL_EVENT_PINCH_BEGIN = 0x710,
    SDL_EVENT_PINCH_UPDATE,
    SDL_EVENT_PINCH_END,




    SDL_EVENT_CLIPBOARD_UPDATE = 0x900,


    SDL_EVENT_DROP_FILE = 0x1000,
    SDL_EVENT_DROP_TEXT,
    SDL_EVENT_DROP_BEGIN,
    SDL_EVENT_DROP_COMPLETE,
    SDL_EVENT_DROP_POSITION,


    SDL_EVENT_AUDIO_DEVICE_ADDED = 0x1100,
    SDL_EVENT_AUDIO_DEVICE_REMOVED,
    SDL_EVENT_AUDIO_DEVICE_FORMAT_CHANGED,


    SDL_EVENT_SENSOR_UPDATE = 0x1200,


    SDL_EVENT_PEN_PROXIMITY_IN = 0x1300,
    SDL_EVENT_PEN_PROXIMITY_OUT,
    SDL_EVENT_PEN_DOWN,
    SDL_EVENT_PEN_UP,
    SDL_EVENT_PEN_BUTTON_DOWN,
    SDL_EVENT_PEN_BUTTON_UP,
    SDL_EVENT_PEN_MOTION,
    SDL_EVENT_PEN_AXIS,


    SDL_EVENT_CAMERA_DEVICE_ADDED = 0x1400,
    SDL_EVENT_CAMERA_DEVICE_REMOVED,
    SDL_EVENT_CAMERA_DEVICE_APPROVED,
    SDL_EVENT_CAMERA_DEVICE_DENIED,


    SDL_EVENT_RENDER_TARGETS_RESET = 0x2000,
    SDL_EVENT_RENDER_DEVICE_RESET,
    SDL_EVENT_RENDER_DEVICE_LOST,


    SDL_EVENT_PRIVATE0 = 0x4000,
    SDL_EVENT_PRIVATE1,
    SDL_EVENT_PRIVATE2,
    SDL_EVENT_PRIVATE3,


    SDL_EVENT_POLL_SENTINEL = 0x7F00,




    SDL_EVENT_USER = 0x8000,




    SDL_EVENT_LAST = 0xFFFF,


    SDL_EVENT_ENUM_PADDING = 0x7FFFFFFF

} SDL_EventType;






typedef struct SDL_CommonEvent
{
    Uint32 type;
    Uint32 reserved;
    Uint64 timestamp;
} SDL_CommonEvent;






typedef struct SDL_DisplayEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_DisplayID displayID;
    Sint32 data1;
    Sint32 data2;
} SDL_DisplayEvent;






typedef struct SDL_WindowEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    Sint32 data1;
    Sint32 data2;
} SDL_WindowEvent;






typedef struct SDL_KeyboardDeviceEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_KeyboardID which;
} SDL_KeyboardDeviceEvent;
# 360 "include/SDL3/SDL_events.h"
typedef struct SDL_KeyboardEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    SDL_KeyboardID which;
    SDL_Scancode scancode;
    SDL_Keycode key;
    SDL_Keymod mod;
    Uint16 raw;
    bool down;
    bool repeat;
} SDL_KeyboardEvent;
# 384 "include/SDL3/SDL_events.h"
typedef struct SDL_TextEditingEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    const char *text;
    Sint32 start;
    Sint32 length;
} SDL_TextEditingEvent;






typedef struct SDL_TextEditingCandidatesEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    const char * const *candidates;
    Sint32 num_candidates;
    Sint32 selected_candidate;
    bool horizontal;
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
} SDL_TextEditingCandidatesEvent;
# 426 "include/SDL3/SDL_events.h"
typedef struct SDL_TextInputEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    const char *text;
} SDL_TextInputEvent;






typedef struct SDL_MouseDeviceEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_MouseID which;
} SDL_MouseDeviceEvent;






typedef struct SDL_MouseMotionEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    SDL_MouseID which;
    SDL_MouseButtonFlags state;
    float x;
    float y;
    float xrel;
    float yrel;
} SDL_MouseMotionEvent;






typedef struct SDL_MouseButtonEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    SDL_MouseID which;
    Uint8 button;
    bool down;
    Uint8 clicks;
    Uint8 padding;
    float x;
    float y;
} SDL_MouseButtonEvent;






typedef struct SDL_MouseWheelEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    SDL_MouseID which;
    float x;
    float y;
    SDL_MouseWheelDirection direction;
    float mouse_x;
    float mouse_y;
    Sint32 integer_x;
    Sint32 integer_y;
} SDL_MouseWheelEvent;






typedef struct SDL_JoyAxisEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
    Uint8 axis;
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
    Sint16 value;
    Uint16 padding4;
} SDL_JoyAxisEvent;






typedef struct SDL_JoyBallEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
    Uint8 ball;
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
    Sint16 xrel;
    Sint16 yrel;
} SDL_JoyBallEvent;






typedef struct SDL_JoyHatEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
    Uint8 hat;
    Uint8 value;






    Uint8 padding1;
    Uint8 padding2;
} SDL_JoyHatEvent;






typedef struct SDL_JoyButtonEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
    Uint8 button;
    bool down;
    Uint8 padding1;
    Uint8 padding2;
} SDL_JoyButtonEvent;
# 596 "include/SDL3/SDL_events.h"
typedef struct SDL_JoyDeviceEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
} SDL_JoyDeviceEvent;






typedef struct SDL_JoyBatteryEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
    SDL_PowerState state;
    int percent;
} SDL_JoyBatteryEvent;






typedef struct SDL_GamepadAxisEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
    Uint8 axis;
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
    Sint16 value;
    Uint16 padding4;
} SDL_GamepadAxisEvent;







typedef struct SDL_GamepadButtonEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
    Uint8 button;
    bool down;
    Uint8 padding1;
    Uint8 padding2;
} SDL_GamepadButtonEvent;
# 671 "include/SDL3/SDL_events.h"
typedef struct SDL_GamepadDeviceEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
} SDL_GamepadDeviceEvent;






typedef struct SDL_GamepadTouchpadEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
    Sint32 touchpad;
    Sint32 finger;
    float x;
    float y;
    float pressure;
} SDL_GamepadTouchpadEvent;






typedef struct SDL_GamepadSensorEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_JoystickID which;
    Sint32 sensor;
    float data[3];
    Uint64 sensor_timestamp;
} SDL_GamepadSensorEvent;
# 722 "include/SDL3/SDL_events.h"
typedef struct SDL_AudioDeviceEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_AudioDeviceID which;
    bool recording;
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
} SDL_AudioDeviceEvent;






typedef struct SDL_CameraDeviceEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_CameraID which;
} SDL_CameraDeviceEvent;







typedef struct SDL_RenderEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
} SDL_RenderEvent;
# 781 "include/SDL3/SDL_events.h"
typedef struct SDL_TouchFingerEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_TouchID touchID;
    SDL_FingerID fingerID;
    float x;
    float y;
    float dx;
    float dy;
    float pressure;
    SDL_WindowID windowID;
} SDL_TouchFingerEvent;




typedef struct SDL_PinchFingerEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    float scale;
    SDL_WindowID windowID;
} SDL_PinchFingerEvent;
# 826 "include/SDL3/SDL_events.h"
typedef struct SDL_PenProximityEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    SDL_PenID which;
} SDL_PenProximityEvent;
# 846 "include/SDL3/SDL_events.h"
typedef struct SDL_PenMotionEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    SDL_PenID which;
    SDL_PenInputFlags pen_state;
    float x;
    float y;
} SDL_PenMotionEvent;
# 866 "include/SDL3/SDL_events.h"
typedef struct SDL_PenTouchEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    SDL_PenID which;
    SDL_PenInputFlags pen_state;
    float x;
    float y;
    bool eraser;
    bool down;
} SDL_PenTouchEvent;
# 888 "include/SDL3/SDL_events.h"
typedef struct SDL_PenButtonEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    SDL_PenID which;
    SDL_PenInputFlags pen_state;
    float x;
    float y;
    Uint8 button;
    bool down;
} SDL_PenButtonEvent;
# 910 "include/SDL3/SDL_events.h"
typedef struct SDL_PenAxisEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    SDL_PenID which;
    SDL_PenInputFlags pen_state;
    float x;
    float y;
    SDL_PenAxis axis;
    float value;
} SDL_PenAxisEvent;







typedef struct SDL_DropEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    float x;
    float y;
    const char *source;
    const char *data;
} SDL_DropEvent;







typedef struct SDL_ClipboardEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    bool owner;
    Sint32 num_mime_types;
    const char **mime_types;
} SDL_ClipboardEvent;






typedef struct SDL_SensorEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_SensorID which;
    float data[6];
    Uint64 sensor_timestamp;
} SDL_SensorEvent;






typedef struct SDL_QuitEvent
{
    SDL_EventType type;
    Uint32 reserved;
    Uint64 timestamp;
} SDL_QuitEvent;
# 996 "include/SDL3/SDL_events.h"
typedef struct SDL_UserEvent
{
    Uint32 type;
    Uint32 reserved;
    Uint64 timestamp;
    SDL_WindowID windowID;
    Sint32 code;
    void *data1;
    void *data2;
} SDL_UserEvent;
# 1016 "include/SDL3/SDL_events.h"
typedef union SDL_Event
{
    Uint32 type;
    SDL_CommonEvent common;
    SDL_DisplayEvent display;
    SDL_WindowEvent window;
    SDL_KeyboardDeviceEvent kdevice;
    SDL_KeyboardEvent key;
    SDL_TextEditingEvent edit;
    SDL_TextEditingCandidatesEvent edit_candidates;
    SDL_TextInputEvent text;
    SDL_MouseDeviceEvent mdevice;
    SDL_MouseMotionEvent motion;
    SDL_MouseButtonEvent button;
    SDL_MouseWheelEvent wheel;
    SDL_JoyDeviceEvent jdevice;
    SDL_JoyAxisEvent jaxis;
    SDL_JoyBallEvent jball;
    SDL_JoyHatEvent jhat;
    SDL_JoyButtonEvent jbutton;
    SDL_JoyBatteryEvent jbattery;
    SDL_GamepadDeviceEvent gdevice;
    SDL_GamepadAxisEvent gaxis;
    SDL_GamepadButtonEvent gbutton;
    SDL_GamepadTouchpadEvent gtouchpad;
    SDL_GamepadSensorEvent gsensor;
    SDL_AudioDeviceEvent adevice;
    SDL_CameraDeviceEvent cdevice;
    SDL_SensorEvent sensor;
    SDL_QuitEvent quit;
    SDL_UserEvent user;
    SDL_TouchFingerEvent tfinger;
    SDL_PinchFingerEvent pinch;
    SDL_PenProximityEvent pproximity;
    SDL_PenTouchEvent ptouch;
    SDL_PenMotionEvent pmotion;
    SDL_PenButtonEvent pbutton;
    SDL_PenAxisEvent paxis;
    SDL_RenderEvent render;
    SDL_DropEvent drop;
    SDL_ClipboardEvent clipboard;
# 1071 "include/SDL3/SDL_events.h"
    Uint8 padding[128];
} SDL_Event;


static_assert(sizeof(SDL_Event) == sizeof((((SDL_Event *)(
# 1075 "include/SDL3/SDL_events.h" 3 4
((void *)0)
# 1075 "include/SDL3/SDL_events.h"
)))->padding), "sizeof(SDL_Event) == sizeof((SDL_static_cast(SDL_Event *, NULL))->padding)");
# 1100 "include/SDL3/SDL_events.h"
extern void SDL_PumpEvents(void);
# 1109 "include/SDL3/SDL_events.h"
typedef enum SDL_EventAction
{
    SDL_ADDEVENT,
    SDL_PEEKEVENT,
    SDL_GETEVENT
} SDL_EventAction;
# 1158 "include/SDL3/SDL_events.h"
extern int SDL_PeepEvents(SDL_Event *events, int numevents, SDL_EventAction action, Uint32 minType, Uint32 maxType);
# 1177 "include/SDL3/SDL_events.h"
extern bool SDL_HasEvent(Uint32 type);
# 1198 "include/SDL3/SDL_events.h"
extern bool SDL_HasEvents(Uint32 minType, Uint32 maxType);
# 1226 "include/SDL3/SDL_events.h"
extern void SDL_FlushEvent(Uint32 type);
# 1253 "include/SDL3/SDL_events.h"
extern void SDL_FlushEvents(Uint32 minType, Uint32 maxType);
# 1306 "include/SDL3/SDL_events.h"
extern bool SDL_PollEvent(SDL_Event *event);
# 1330 "include/SDL3/SDL_events.h"
extern bool SDL_WaitEvent(SDL_Event *event);
# 1360 "include/SDL3/SDL_events.h"
extern bool SDL_WaitEventTimeout(SDL_Event *event, Sint32 timeoutMS);
# 1394 "include/SDL3/SDL_events.h"
extern bool SDL_PushEvent(SDL_Event *event);
# 1415 "include/SDL3/SDL_events.h"
typedef bool ( *SDL_EventFilter)(void *userdata, SDL_Event *event);
# 1459 "include/SDL3/SDL_events.h"
extern void SDL_SetEventFilter(SDL_EventFilter filter, void *userdata);
# 1478 "include/SDL3/SDL_events.h"
extern bool SDL_GetEventFilter(SDL_EventFilter *filter, void **userdata);
# 1510 "include/SDL3/SDL_events.h"
extern bool SDL_AddEventWatch(SDL_EventFilter filter, void *userdata);
# 1527 "include/SDL3/SDL_events.h"
extern void SDL_RemoveEventWatch(SDL_EventFilter filter, void *userdata);
# 1547 "include/SDL3/SDL_events.h"
extern void SDL_FilterEvents(SDL_EventFilter filter, void *userdata);
# 1561 "include/SDL3/SDL_events.h"
extern void SDL_SetEventEnabled(Uint32 type, bool enabled);
# 1575 "include/SDL3/SDL_events.h"
extern bool SDL_EventEnabled(Uint32 type);
# 1591 "include/SDL3/SDL_events.h"
extern Uint32 SDL_RegisterEvents(int numevents);
# 1607 "include/SDL3/SDL_events.h"
extern SDL_Window * SDL_GetWindowFromEvent(const SDL_Event *event);
# 1639 "include/SDL3/SDL_events.h"
extern int SDL_GetEventDescription(const SDL_Event *event, char *buf, int buflen);





# 1 "include/SDL3/SDL_close_code.h" 1
# 1646 "include/SDL3/SDL_events.h" 2
# 49 "include/SDL3/SDL.h" 2
# 1 "include/SDL3/SDL_filesystem.h" 1
# 50 "include/SDL3/SDL_filesystem.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 51 "include/SDL3/SDL_filesystem.h" 2
# 101 "include/SDL3/SDL_filesystem.h"
extern const char * SDL_GetBasePath(void);
# 164 "include/SDL3/SDL_filesystem.h"
extern char * SDL_GetPrefPath(const char *org, const char *app);
# 195 "include/SDL3/SDL_filesystem.h"
typedef enum SDL_Folder
{
    SDL_FOLDER_HOME,
    SDL_FOLDER_DESKTOP,
    SDL_FOLDER_DOCUMENTS,
    SDL_FOLDER_DOWNLOADS,
    SDL_FOLDER_MUSIC,
    SDL_FOLDER_PICTURES,
    SDL_FOLDER_PUBLICSHARE,
    SDL_FOLDER_SAVEDGAMES,
    SDL_FOLDER_SCREENSHOTS,
    SDL_FOLDER_TEMPLATES,
    SDL_FOLDER_VIDEOS,
    SDL_FOLDER_COUNT
} SDL_Folder;
# 236 "include/SDL3/SDL_filesystem.h"
extern const char * SDL_GetUserFolder(SDL_Folder folder);
# 252 "include/SDL3/SDL_filesystem.h"
typedef enum SDL_PathType
{
    SDL_PATHTYPE_NONE,
    SDL_PATHTYPE_FILE,
    SDL_PATHTYPE_DIRECTORY,
    SDL_PATHTYPE_OTHER
} SDL_PathType;
# 268 "include/SDL3/SDL_filesystem.h"
typedef struct SDL_PathInfo
{
    SDL_PathType type;
    Uint64 size;
    SDL_Time create_time;
    SDL_Time modify_time;
    SDL_Time access_time;
} SDL_PathInfo;
# 285 "include/SDL3/SDL_filesystem.h"
typedef Uint32 SDL_GlobFlags;
# 305 "include/SDL3/SDL_filesystem.h"
extern bool SDL_CreateDirectory(const char *path);
# 314 "include/SDL3/SDL_filesystem.h"
typedef enum SDL_EnumerationResult
{
    SDL_ENUM_CONTINUE,
    SDL_ENUM_SUCCESS,
    SDL_ENUM_FAILURE
} SDL_EnumerationResult;
# 345 "include/SDL3/SDL_filesystem.h"
typedef SDL_EnumerationResult ( *SDL_EnumerateDirectoryCallback)(void *userdata, const char *dirname, const char *fname);
# 370 "include/SDL3/SDL_filesystem.h"
extern bool SDL_EnumerateDirectory(const char *path, SDL_EnumerateDirectoryCallback callback, void *userdata);
# 386 "include/SDL3/SDL_filesystem.h"
extern bool SDL_RemovePath(const char *path);
# 411 "include/SDL3/SDL_filesystem.h"
extern bool SDL_RenamePath(const char *oldpath, const char *newpath);
# 455 "include/SDL3/SDL_filesystem.h"
extern bool SDL_CopyFile(const char *oldpath, const char *newpath);
# 470 "include/SDL3/SDL_filesystem.h"
extern bool SDL_GetPathInfo(const char *path, SDL_PathInfo *info);
# 503 "include/SDL3/SDL_filesystem.h"
extern char ** SDL_GlobDirectory(const char *path, const char *pattern, SDL_GlobFlags flags, int *count);
# 526 "include/SDL3/SDL_filesystem.h"
extern char * SDL_GetCurrentDirectory(void);





# 1 "include/SDL3/SDL_close_code.h" 1
# 533 "include/SDL3/SDL_filesystem.h" 2
# 50 "include/SDL3/SDL.h" 2

# 1 "include/SDL3/SDL_gpu.h" 1
# 399 "include/SDL3/SDL_gpu.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 400 "include/SDL3/SDL_gpu.h" 2
# 411 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUDevice SDL_GPUDevice;
# 435 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUBuffer SDL_GPUBuffer;
# 453 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUTransferBuffer SDL_GPUTransferBuffer;
# 473 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUTexture SDL_GPUTexture;
# 485 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUSampler SDL_GPUSampler;
# 496 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUShader SDL_GPUShader;
# 509 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUComputePipeline SDL_GPUComputePipeline;
# 522 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUGraphicsPipeline SDL_GPUGraphicsPipeline;
# 547 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUCommandBuffer SDL_GPUCommandBuffer;
# 560 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPURenderPass SDL_GPURenderPass;
# 573 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUComputePass SDL_GPUComputePass;
# 586 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUCopyPass SDL_GPUCopyPass;
# 598 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUFence SDL_GPUFence;
# 621 "include/SDL3/SDL_gpu.h"
typedef enum SDL_GPUPrimitiveType
{
    SDL_GPU_PRIMITIVETYPE_TRIANGLELIST,
    SDL_GPU_PRIMITIVETYPE_TRIANGLESTRIP,
    SDL_GPU_PRIMITIVETYPE_LINELIST,
    SDL_GPU_PRIMITIVETYPE_LINESTRIP,
    SDL_GPU_PRIMITIVETYPE_POINTLIST
} SDL_GPUPrimitiveType;
# 638 "include/SDL3/SDL_gpu.h"
typedef enum SDL_GPULoadOp
{
    SDL_GPU_LOADOP_LOAD,
    SDL_GPU_LOADOP_CLEAR,
    SDL_GPU_LOADOP_DONT_CARE
} SDL_GPULoadOp;
# 653 "include/SDL3/SDL_gpu.h"
typedef enum SDL_GPUStoreOp
{
    SDL_GPU_STOREOP_STORE,
    SDL_GPU_STOREOP_DONT_CARE,
    SDL_GPU_STOREOP_RESOLVE,
    SDL_GPU_STOREOP_RESOLVE_AND_STORE
} SDL_GPUStoreOp;
# 668 "include/SDL3/SDL_gpu.h"
typedef enum SDL_GPUIndexElementSize
{
    SDL_GPU_INDEXELEMENTSIZE_16BIT,
    SDL_GPU_INDEXELEMENTSIZE_32BIT
} SDL_GPUIndexElementSize;
# 759 "include/SDL3/SDL_gpu.h"
typedef enum SDL_GPUTextureFormat
{
    SDL_GPU_TEXTUREFORMAT_INVALID,


    SDL_GPU_TEXTUREFORMAT_A8_UNORM,
    SDL_GPU_TEXTUREFORMAT_R8_UNORM,
    SDL_GPU_TEXTUREFORMAT_R8G8_UNORM,
    SDL_GPU_TEXTUREFORMAT_R8G8B8A8_UNORM,
    SDL_GPU_TEXTUREFORMAT_R16_UNORM,
    SDL_GPU_TEXTUREFORMAT_R16G16_UNORM,
    SDL_GPU_TEXTUREFORMAT_R16G16B16A16_UNORM,
    SDL_GPU_TEXTUREFORMAT_R10G10B10A2_UNORM,
    SDL_GPU_TEXTUREFORMAT_B5G6R5_UNORM,
    SDL_GPU_TEXTUREFORMAT_B5G5R5A1_UNORM,
    SDL_GPU_TEXTUREFORMAT_B4G4R4A4_UNORM,
    SDL_GPU_TEXTUREFORMAT_B8G8R8A8_UNORM,

    SDL_GPU_TEXTUREFORMAT_BC1_RGBA_UNORM,
    SDL_GPU_TEXTUREFORMAT_BC2_RGBA_UNORM,
    SDL_GPU_TEXTUREFORMAT_BC3_RGBA_UNORM,
    SDL_GPU_TEXTUREFORMAT_BC4_R_UNORM,
    SDL_GPU_TEXTUREFORMAT_BC5_RG_UNORM,
    SDL_GPU_TEXTUREFORMAT_BC7_RGBA_UNORM,

    SDL_GPU_TEXTUREFORMAT_BC6H_RGB_FLOAT,

    SDL_GPU_TEXTUREFORMAT_BC6H_RGB_UFLOAT,

    SDL_GPU_TEXTUREFORMAT_R8_SNORM,
    SDL_GPU_TEXTUREFORMAT_R8G8_SNORM,
    SDL_GPU_TEXTUREFORMAT_R8G8B8A8_SNORM,
    SDL_GPU_TEXTUREFORMAT_R16_SNORM,
    SDL_GPU_TEXTUREFORMAT_R16G16_SNORM,
    SDL_GPU_TEXTUREFORMAT_R16G16B16A16_SNORM,

    SDL_GPU_TEXTUREFORMAT_R16_FLOAT,
    SDL_GPU_TEXTUREFORMAT_R16G16_FLOAT,
    SDL_GPU_TEXTUREFORMAT_R16G16B16A16_FLOAT,
    SDL_GPU_TEXTUREFORMAT_R32_FLOAT,
    SDL_GPU_TEXTUREFORMAT_R32G32_FLOAT,
    SDL_GPU_TEXTUREFORMAT_R32G32B32A32_FLOAT,

    SDL_GPU_TEXTUREFORMAT_R11G11B10_UFLOAT,

    SDL_GPU_TEXTUREFORMAT_R8_UINT,
    SDL_GPU_TEXTUREFORMAT_R8G8_UINT,
    SDL_GPU_TEXTUREFORMAT_R8G8B8A8_UINT,
    SDL_GPU_TEXTUREFORMAT_R16_UINT,
    SDL_GPU_TEXTUREFORMAT_R16G16_UINT,
    SDL_GPU_TEXTUREFORMAT_R16G16B16A16_UINT,
    SDL_GPU_TEXTUREFORMAT_R32_UINT,
    SDL_GPU_TEXTUREFORMAT_R32G32_UINT,
    SDL_GPU_TEXTUREFORMAT_R32G32B32A32_UINT,

    SDL_GPU_TEXTUREFORMAT_R8_INT,
    SDL_GPU_TEXTUREFORMAT_R8G8_INT,
    SDL_GPU_TEXTUREFORMAT_R8G8B8A8_INT,
    SDL_GPU_TEXTUREFORMAT_R16_INT,
    SDL_GPU_TEXTUREFORMAT_R16G16_INT,
    SDL_GPU_TEXTUREFORMAT_R16G16B16A16_INT,
    SDL_GPU_TEXTUREFORMAT_R32_INT,
    SDL_GPU_TEXTUREFORMAT_R32G32_INT,
    SDL_GPU_TEXTUREFORMAT_R32G32B32A32_INT,

    SDL_GPU_TEXTUREFORMAT_R8G8B8A8_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_B8G8R8A8_UNORM_SRGB,

    SDL_GPU_TEXTUREFORMAT_BC1_RGBA_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_BC2_RGBA_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_BC3_RGBA_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_BC7_RGBA_UNORM_SRGB,

    SDL_GPU_TEXTUREFORMAT_D16_UNORM,
    SDL_GPU_TEXTUREFORMAT_D24_UNORM,
    SDL_GPU_TEXTUREFORMAT_D32_FLOAT,
    SDL_GPU_TEXTUREFORMAT_D24_UNORM_S8_UINT,
    SDL_GPU_TEXTUREFORMAT_D32_FLOAT_S8_UINT,

    SDL_GPU_TEXTUREFORMAT_ASTC_4x4_UNORM,
    SDL_GPU_TEXTUREFORMAT_ASTC_5x4_UNORM,
    SDL_GPU_TEXTUREFORMAT_ASTC_5x5_UNORM,
    SDL_GPU_TEXTUREFORMAT_ASTC_6x5_UNORM,
    SDL_GPU_TEXTUREFORMAT_ASTC_6x6_UNORM,
    SDL_GPU_TEXTUREFORMAT_ASTC_8x5_UNORM,
    SDL_GPU_TEXTUREFORMAT_ASTC_8x6_UNORM,
    SDL_GPU_TEXTUREFORMAT_ASTC_8x8_UNORM,
    SDL_GPU_TEXTUREFORMAT_ASTC_10x5_UNORM,
    SDL_GPU_TEXTUREFORMAT_ASTC_10x6_UNORM,
    SDL_GPU_TEXTUREFORMAT_ASTC_10x8_UNORM,
    SDL_GPU_TEXTUREFORMAT_ASTC_10x10_UNORM,
    SDL_GPU_TEXTUREFORMAT_ASTC_12x10_UNORM,
    SDL_GPU_TEXTUREFORMAT_ASTC_12x12_UNORM,

    SDL_GPU_TEXTUREFORMAT_ASTC_4x4_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_ASTC_5x4_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_ASTC_5x5_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_ASTC_6x5_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_ASTC_6x6_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_ASTC_8x5_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_ASTC_8x6_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_ASTC_8x8_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_ASTC_10x5_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_ASTC_10x6_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_ASTC_10x8_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_ASTC_10x10_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_ASTC_12x10_UNORM_SRGB,
    SDL_GPU_TEXTUREFORMAT_ASTC_12x12_UNORM_SRGB,

    SDL_GPU_TEXTUREFORMAT_ASTC_4x4_FLOAT,
    SDL_GPU_TEXTUREFORMAT_ASTC_5x4_FLOAT,
    SDL_GPU_TEXTUREFORMAT_ASTC_5x5_FLOAT,
    SDL_GPU_TEXTUREFORMAT_ASTC_6x5_FLOAT,
    SDL_GPU_TEXTUREFORMAT_ASTC_6x6_FLOAT,
    SDL_GPU_TEXTUREFORMAT_ASTC_8x5_FLOAT,
    SDL_GPU_TEXTUREFORMAT_ASTC_8x6_FLOAT,
    SDL_GPU_TEXTUREFORMAT_ASTC_8x8_FLOAT,
    SDL_GPU_TEXTUREFORMAT_ASTC_10x5_FLOAT,
    SDL_GPU_TEXTUREFORMAT_ASTC_10x6_FLOAT,
    SDL_GPU_TEXTUREFORMAT_ASTC_10x8_FLOAT,
    SDL_GPU_TEXTUREFORMAT_ASTC_10x10_FLOAT,
    SDL_GPU_TEXTUREFORMAT_ASTC_12x10_FLOAT,
    SDL_GPU_TEXTUREFORMAT_ASTC_12x12_FLOAT
} SDL_GPUTextureFormat;
# 904 "include/SDL3/SDL_gpu.h"
typedef Uint32 SDL_GPUTextureUsageFlags;
# 921 "include/SDL3/SDL_gpu.h"
typedef enum SDL_GPUTextureType
{
    SDL_GPU_TEXTURETYPE_2D,
    SDL_GPU_TEXTURETYPE_2D_ARRAY,
    SDL_GPU_TEXTURETYPE_3D,
    SDL_GPU_TEXTURETYPE_CUBE,
    SDL_GPU_TEXTURETYPE_CUBE_ARRAY
} SDL_GPUTextureType;
# 941 "include/SDL3/SDL_gpu.h"
typedef enum SDL_GPUSampleCount
{
    SDL_GPU_SAMPLECOUNT_1,
    SDL_GPU_SAMPLECOUNT_2,
    SDL_GPU_SAMPLECOUNT_4,
    SDL_GPU_SAMPLECOUNT_8
} SDL_GPUSampleCount;
# 957 "include/SDL3/SDL_gpu.h"
typedef enum SDL_GPUCubeMapFace
{
    SDL_GPU_CUBEMAPFACE_POSITIVEX,
    SDL_GPU_CUBEMAPFACE_NEGATIVEX,
    SDL_GPU_CUBEMAPFACE_POSITIVEY,
    SDL_GPU_CUBEMAPFACE_NEGATIVEY,
    SDL_GPU_CUBEMAPFACE_POSITIVEZ,
    SDL_GPU_CUBEMAPFACE_NEGATIVEZ
} SDL_GPUCubeMapFace;
# 984 "include/SDL3/SDL_gpu.h"
typedef Uint32 SDL_GPUBufferUsageFlags;
# 1003 "include/SDL3/SDL_gpu.h"
typedef enum SDL_GPUTransferBufferUsage
{
    SDL_GPU_TRANSFERBUFFERUSAGE_UPLOAD,
    SDL_GPU_TRANSFERBUFFERUSAGE_DOWNLOAD
} SDL_GPUTransferBufferUsage;
# 1016 "include/SDL3/SDL_gpu.h"
typedef enum SDL_GPUShaderStage
{
    SDL_GPU_SHADERSTAGE_VERTEX,
    SDL_GPU_SHADERSTAGE_FRAGMENT
} SDL_GPUShaderStage;
# 1031 "include/SDL3/SDL_gpu.h"
typedef Uint32 SDL_GPUShaderFormat;
# 1048 "include/SDL3/SDL_gpu.h"
typedef enum SDL_GPUVertexElementFormat
{
    SDL_GPU_VERTEXELEMENTFORMAT_INVALID,


    SDL_GPU_VERTEXELEMENTFORMAT_INT,
    SDL_GPU_VERTEXELEMENTFORMAT_INT2,
    SDL_GPU_VERTEXELEMENTFORMAT_INT3,
    SDL_GPU_VERTEXELEMENTFORMAT_INT4,


    SDL_GPU_VERTEXELEMENTFORMAT_UINT,
    SDL_GPU_VERTEXELEMENTFORMAT_UINT2,
    SDL_GPU_VERTEXELEMENTFORMAT_UINT3,
    SDL_GPU_VERTEXELEMENTFORMAT_UINT4,


    SDL_GPU_VERTEXELEMENTFORMAT_FLOAT,
    SDL_GPU_VERTEXELEMENTFORMAT_FLOAT2,
    SDL_GPU_VERTEXELEMENTFORMAT_FLOAT3,
    SDL_GPU_VERTEXELEMENTFORMAT_FLOAT4,


    SDL_GPU_VERTEXELEMENTFORMAT_BYTE2,
    SDL_GPU_VERTEXELEMENTFORMAT_BYTE4,


    SDL_GPU_VERTEXELEMENTFORMAT_UBYTE2,
    SDL_GPU_VERTEXELEMENTFORMAT_UBYTE4,


    SDL_GPU_VERTEXELEMENTFORMAT_BYTE2_NORM,
    SDL_GPU_VERTEXELEMENTFORMAT_BYTE4_NORM,


    SDL_GPU_VERTEXELEMENTFORMAT_UBYTE2_NORM,
    SDL_GPU_VERTEXELEMENTFORMAT_UBYTE4_NORM,


    SDL_GPU_VERTEXELEMENTFORMAT_SHORT2,
    SDL_GPU_VERTEXELEMENTFORMAT_SHORT4,


    SDL_GPU_VERTEXELEMENTFORMAT_USHORT2,
    SDL_GPU_VERTEXELEMENTFORMAT_USHORT4,


    SDL_GPU_VERTEXELEMENTFORMAT_SHORT2_NORM,
    SDL_GPU_VERTEXELEMENTFORMAT_SHORT4_NORM,


    SDL_GPU_VERTEXELEMENTFORMAT_USHORT2_NORM,
    SDL_GPU_VERTEXELEMENTFORMAT_USHORT4_NORM,


    SDL_GPU_VERTEXELEMENTFORMAT_HALF2,
    SDL_GPU_VERTEXELEMENTFORMAT_HALF4
} SDL_GPUVertexElementFormat;
# 1114 "include/SDL3/SDL_gpu.h"
typedef enum SDL_GPUVertexInputRate
{
    SDL_GPU_VERTEXINPUTRATE_VERTEX,
    SDL_GPU_VERTEXINPUTRATE_INSTANCE
} SDL_GPUVertexInputRate;
# 1127 "include/SDL3/SDL_gpu.h"
typedef enum SDL_GPUFillMode
{
    SDL_GPU_FILLMODE_FILL,
    SDL_GPU_FILLMODE_LINE
} SDL_GPUFillMode;
# 1140 "include/SDL3/SDL_gpu.h"
typedef enum SDL_GPUCullMode
{
    SDL_GPU_CULLMODE_NONE,
    SDL_GPU_CULLMODE_FRONT,
    SDL_GPU_CULLMODE_BACK
} SDL_GPUCullMode;
# 1155 "include/SDL3/SDL_gpu.h"
typedef enum SDL_GPUFrontFace
{
    SDL_GPU_FRONTFACE_COUNTER_CLOCKWISE,
    SDL_GPU_FRONTFACE_CLOCKWISE
} SDL_GPUFrontFace;
# 1168 "include/SDL3/SDL_gpu.h"
typedef enum SDL_GPUCompareOp
{
    SDL_GPU_COMPAREOP_INVALID,
    SDL_GPU_COMPAREOP_NEVER,
    SDL_GPU_COMPAREOP_LESS,
    SDL_GPU_COMPAREOP_EQUAL,
    SDL_GPU_COMPAREOP_LESS_OR_EQUAL,
    SDL_GPU_COMPAREOP_GREATER,
    SDL_GPU_COMPAREOP_NOT_EQUAL,
    SDL_GPU_COMPAREOP_GREATER_OR_EQUAL,
    SDL_GPU_COMPAREOP_ALWAYS
} SDL_GPUCompareOp;
# 1189 "include/SDL3/SDL_gpu.h"
typedef enum SDL_GPUStencilOp
{
    SDL_GPU_STENCILOP_INVALID,
    SDL_GPU_STENCILOP_KEEP,
    SDL_GPU_STENCILOP_ZERO,
    SDL_GPU_STENCILOP_REPLACE,
    SDL_GPU_STENCILOP_INCREMENT_AND_CLAMP,
    SDL_GPU_STENCILOP_DECREMENT_AND_CLAMP,
    SDL_GPU_STENCILOP_INVERT,
    SDL_GPU_STENCILOP_INCREMENT_AND_WRAP,
    SDL_GPU_STENCILOP_DECREMENT_AND_WRAP
} SDL_GPUStencilOp;
# 1213 "include/SDL3/SDL_gpu.h"
typedef enum SDL_GPUBlendOp
{
    SDL_GPU_BLENDOP_INVALID,
    SDL_GPU_BLENDOP_ADD,
    SDL_GPU_BLENDOP_SUBTRACT,
    SDL_GPU_BLENDOP_REVERSE_SUBTRACT,
    SDL_GPU_BLENDOP_MIN,
    SDL_GPU_BLENDOP_MAX
} SDL_GPUBlendOp;
# 1234 "include/SDL3/SDL_gpu.h"
typedef enum SDL_GPUBlendFactor
{
    SDL_GPU_BLENDFACTOR_INVALID,
    SDL_GPU_BLENDFACTOR_ZERO,
    SDL_GPU_BLENDFACTOR_ONE,
    SDL_GPU_BLENDFACTOR_SRC_COLOR,
    SDL_GPU_BLENDFACTOR_ONE_MINUS_SRC_COLOR,
    SDL_GPU_BLENDFACTOR_DST_COLOR,
    SDL_GPU_BLENDFACTOR_ONE_MINUS_DST_COLOR,
    SDL_GPU_BLENDFACTOR_SRC_ALPHA,
    SDL_GPU_BLENDFACTOR_ONE_MINUS_SRC_ALPHA,
    SDL_GPU_BLENDFACTOR_DST_ALPHA,
    SDL_GPU_BLENDFACTOR_ONE_MINUS_DST_ALPHA,
    SDL_GPU_BLENDFACTOR_CONSTANT_COLOR,
    SDL_GPU_BLENDFACTOR_ONE_MINUS_CONSTANT_COLOR,
    SDL_GPU_BLENDFACTOR_SRC_ALPHA_SATURATE
} SDL_GPUBlendFactor;
# 1259 "include/SDL3/SDL_gpu.h"
typedef Uint8 SDL_GPUColorComponentFlags;
# 1273 "include/SDL3/SDL_gpu.h"
typedef enum SDL_GPUFilter
{
    SDL_GPU_FILTER_NEAREST,
    SDL_GPU_FILTER_LINEAR
} SDL_GPUFilter;
# 1286 "include/SDL3/SDL_gpu.h"
typedef enum SDL_GPUSamplerMipmapMode
{
    SDL_GPU_SAMPLERMIPMAPMODE_NEAREST,
    SDL_GPU_SAMPLERMIPMAPMODE_LINEAR
} SDL_GPUSamplerMipmapMode;
# 1300 "include/SDL3/SDL_gpu.h"
typedef enum SDL_GPUSamplerAddressMode
{
    SDL_GPU_SAMPLERADDRESSMODE_REPEAT,
    SDL_GPU_SAMPLERADDRESSMODE_MIRRORED_REPEAT,
    SDL_GPU_SAMPLERADDRESSMODE_CLAMP_TO_EDGE
} SDL_GPUSamplerAddressMode;
# 1332 "include/SDL3/SDL_gpu.h"
typedef enum SDL_GPUPresentMode
{
    SDL_GPU_PRESENTMODE_VSYNC,
    SDL_GPU_PRESENTMODE_IMMEDIATE,
    SDL_GPU_PRESENTMODE_MAILBOX
} SDL_GPUPresentMode;
# 1365 "include/SDL3/SDL_gpu.h"
typedef enum SDL_GPUSwapchainComposition
{
    SDL_GPU_SWAPCHAINCOMPOSITION_SDR,
    SDL_GPU_SWAPCHAINCOMPOSITION_SDR_LINEAR,
    SDL_GPU_SWAPCHAINCOMPOSITION_HDR_EXTENDED_LINEAR,
    SDL_GPU_SWAPCHAINCOMPOSITION_HDR10_ST2084
} SDL_GPUSwapchainComposition;
# 1382 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUViewport
{
    float x;
    float y;
    float w;
    float h;
    float min_depth;
    float max_depth;
} SDL_GPUViewport;
# 1412 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUTextureTransferInfo
{
    SDL_GPUTransferBuffer *transfer_buffer;
    Uint32 offset;
    Uint32 pixels_per_row;
    Uint32 rows_per_layer;
} SDL_GPUTextureTransferInfo;
# 1430 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUTransferBufferLocation
{
    SDL_GPUTransferBuffer *transfer_buffer;
    Uint32 offset;
} SDL_GPUTransferBufferLocation;
# 1445 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUTextureLocation
{
    SDL_GPUTexture *texture;
    Uint32 mip_level;
    Uint32 layer;
    Uint32 x;
    Uint32 y;
    Uint32 z;
} SDL_GPUTextureLocation;
# 1466 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUTextureRegion
{
    SDL_GPUTexture *texture;
    Uint32 mip_level;
    Uint32 layer;
    Uint32 x;
    Uint32 y;
    Uint32 z;
    Uint32 w;
    Uint32 h;
    Uint32 d;
} SDL_GPUTextureRegion;
# 1486 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUBlitRegion
{
    SDL_GPUTexture *texture;
    Uint32 mip_level;
    Uint32 layer_or_depth_plane;
    Uint32 x;
    Uint32 y;
    Uint32 w;
    Uint32 h;
} SDL_GPUBlitRegion;
# 1506 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUBufferLocation
{
    SDL_GPUBuffer *buffer;
    Uint32 offset;
} SDL_GPUBufferLocation;
# 1522 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUBufferRegion
{
    SDL_GPUBuffer *buffer;
    Uint32 offset;
    Uint32 size;
} SDL_GPUBufferRegion;
# 1543 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUIndirectDrawCommand
{
    Uint32 num_vertices;
    Uint32 num_instances;
    Uint32 first_vertex;
    Uint32 first_instance;
} SDL_GPUIndirectDrawCommand;
# 1565 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUIndexedIndirectDrawCommand
{
    Uint32 num_indices;
    Uint32 num_instances;
    Uint32 first_index;
    Sint32 vertex_offset;
    Uint32 first_instance;
} SDL_GPUIndexedIndirectDrawCommand;
# 1581 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUIndirectDispatchCommand
{
    Uint32 groupcount_x;
    Uint32 groupcount_y;
    Uint32 groupcount_z;
} SDL_GPUIndirectDispatchCommand;
# 1604 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUSamplerCreateInfo
{
    SDL_GPUFilter min_filter;
    SDL_GPUFilter mag_filter;
    SDL_GPUSamplerMipmapMode mipmap_mode;
    SDL_GPUSamplerAddressMode address_mode_u;
    SDL_GPUSamplerAddressMode address_mode_v;
    SDL_GPUSamplerAddressMode address_mode_w;
    float mip_lod_bias;
    float max_anisotropy;
    SDL_GPUCompareOp compare_op;
    float min_lod;
    float max_lod;
    bool enable_anisotropy;
    bool enable_compare;
    Uint8 padding1;
    Uint8 padding2;

    SDL_PropertiesID props;
} SDL_GPUSamplerCreateInfo;
# 1643 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUVertexBufferDescription
{
    Uint32 slot;
    Uint32 pitch;
    SDL_GPUVertexInputRate input_rate;
    Uint32 instance_step_rate;
} SDL_GPUVertexBufferDescription;
# 1663 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUVertexAttribute
{
    Uint32 location;
    Uint32 buffer_slot;
    SDL_GPUVertexElementFormat format;
    Uint32 offset;
} SDL_GPUVertexAttribute;
# 1681 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUVertexInputState
{
    const SDL_GPUVertexBufferDescription *vertex_buffer_descriptions;
    Uint32 num_vertex_buffers;
    const SDL_GPUVertexAttribute *vertex_attributes;
    Uint32 num_vertex_attributes;
} SDL_GPUVertexInputState;
# 1696 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUStencilOpState
{
    SDL_GPUStencilOp fail_op;
    SDL_GPUStencilOp pass_op;
    SDL_GPUStencilOp depth_fail_op;
    SDL_GPUCompareOp compare_op;
} SDL_GPUStencilOpState;
# 1714 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUColorTargetBlendState
{
    SDL_GPUBlendFactor src_color_blendfactor;
    SDL_GPUBlendFactor dst_color_blendfactor;
    SDL_GPUBlendOp color_blend_op;
    SDL_GPUBlendFactor src_alpha_blendfactor;
    SDL_GPUBlendFactor dst_alpha_blendfactor;
    SDL_GPUBlendOp alpha_blend_op;
    SDL_GPUColorComponentFlags color_write_mask;
    bool enable_blend;
    bool enable_color_write_mask;
    Uint8 padding1;
    Uint8 padding2;
} SDL_GPUColorTargetBlendState;
# 1739 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUShaderCreateInfo
{
    size_t code_size;
    const Uint8 *code;
    const char *entrypoint;
    SDL_GPUShaderFormat format;
    SDL_GPUShaderStage stage;
    Uint32 num_samplers;
    Uint32 num_storage_textures;
    Uint32 num_storage_buffers;
    Uint32 num_uniform_buffers;

    SDL_PropertiesID props;
} SDL_GPUShaderCreateInfo;
# 1769 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUTextureCreateInfo
{
    SDL_GPUTextureType type;
    SDL_GPUTextureFormat format;
    SDL_GPUTextureUsageFlags usage;
    Uint32 width;
    Uint32 height;
    Uint32 layer_count_or_depth;
    Uint32 num_levels;
    SDL_GPUSampleCount sample_count;

    SDL_PropertiesID props;
} SDL_GPUTextureCreateInfo;
# 1794 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUBufferCreateInfo
{
    SDL_GPUBufferUsageFlags usage;
    Uint32 size;

    SDL_PropertiesID props;
} SDL_GPUBufferCreateInfo;
# 1809 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUTransferBufferCreateInfo
{
    SDL_GPUTransferBufferUsage usage;
    Uint32 size;

    SDL_PropertiesID props;
} SDL_GPUTransferBufferCreateInfo;
# 1835 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPURasterizerState
{
    SDL_GPUFillMode fill_mode;
    SDL_GPUCullMode cull_mode;
    SDL_GPUFrontFace front_face;
    float depth_bias_constant_factor;
    float depth_bias_clamp;
    float depth_bias_slope_factor;
    bool enable_depth_bias;
    bool enable_depth_clip;
    Uint8 padding1;
    Uint8 padding2;
} SDL_GPURasterizerState;
# 1857 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUMultisampleState
{
    SDL_GPUSampleCount sample_count;
    Uint32 sample_mask;
    bool enable_mask;
    bool enable_alpha_to_coverage;
    Uint8 padding2;
    Uint8 padding3;
} SDL_GPUMultisampleState;
# 1875 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUDepthStencilState
{
    SDL_GPUCompareOp compare_op;
    SDL_GPUStencilOpState back_stencil_state;
    SDL_GPUStencilOpState front_stencil_state;
    Uint8 compare_mask;
    Uint8 write_mask;
    bool enable_depth_test;
    bool enable_depth_write;
    bool enable_stencil_test;
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
} SDL_GPUDepthStencilState;
# 1898 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUColorTargetDescription
{
    SDL_GPUTextureFormat format;
    SDL_GPUColorTargetBlendState blend_state;
} SDL_GPUColorTargetDescription;
# 1914 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUGraphicsPipelineTargetInfo
{
    const SDL_GPUColorTargetDescription *color_target_descriptions;
    Uint32 num_color_targets;
    SDL_GPUTextureFormat depth_stencil_format;
    bool has_depth_stencil_target;
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
} SDL_GPUGraphicsPipelineTargetInfo;
# 1939 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUGraphicsPipelineCreateInfo
{
    SDL_GPUShader *vertex_shader;
    SDL_GPUShader *fragment_shader;
    SDL_GPUVertexInputState vertex_input_state;
    SDL_GPUPrimitiveType primitive_type;
    SDL_GPURasterizerState rasterizer_state;
    SDL_GPUMultisampleState multisample_state;
    SDL_GPUDepthStencilState depth_stencil_state;
    SDL_GPUGraphicsPipelineTargetInfo target_info;

    SDL_PropertiesID props;
} SDL_GPUGraphicsPipelineCreateInfo;
# 1961 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUComputePipelineCreateInfo
{
    size_t code_size;
    const Uint8 *code;
    const char *entrypoint;
    SDL_GPUShaderFormat format;
    Uint32 num_samplers;
    Uint32 num_readonly_storage_textures;
    Uint32 num_readonly_storage_buffers;
    Uint32 num_readwrite_storage_textures;
    Uint32 num_readwrite_storage_buffers;
    Uint32 num_uniform_buffers;
    Uint32 threadcount_x;
    Uint32 threadcount_y;
    Uint32 threadcount_z;

    SDL_PropertiesID props;
} SDL_GPUComputePipelineCreateInfo;
# 2016 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUColorTargetInfo
{
    SDL_GPUTexture *texture;
    Uint32 mip_level;
    Uint32 layer_or_depth_plane;
    SDL_FColor clear_color;
    SDL_GPULoadOp load_op;
    SDL_GPUStoreOp store_op;
    SDL_GPUTexture *resolve_texture;
    Uint32 resolve_mip_level;
    Uint32 resolve_layer;
    bool cycle;
    bool cycle_resolve_texture;
    Uint8 padding1;
    Uint8 padding2;
} SDL_GPUColorTargetInfo;
# 2080 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUDepthStencilTargetInfo
{
    SDL_GPUTexture *texture;
    float clear_depth;
    SDL_GPULoadOp load_op;
    SDL_GPUStoreOp store_op;
    SDL_GPULoadOp stencil_load_op;
    SDL_GPUStoreOp stencil_store_op;
    bool cycle;
    Uint8 clear_stencil;
    Uint8 mip_level;
    Uint8 layer;
} SDL_GPUDepthStencilTargetInfo;
# 2101 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUBlitInfo {
    SDL_GPUBlitRegion source;
    SDL_GPUBlitRegion destination;
    SDL_GPULoadOp load_op;
    SDL_FColor clear_color;
    SDL_FlipMode flip_mode;
    SDL_GPUFilter filter;
    bool cycle;
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
} SDL_GPUBlitInfo;
# 2124 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUBufferBinding
{
    SDL_GPUBuffer *buffer;
    Uint32 offset;
} SDL_GPUBufferBinding;
# 2140 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUTextureSamplerBinding
{
    SDL_GPUTexture *texture;
    SDL_GPUSampler *sampler;
} SDL_GPUTextureSamplerBinding;
# 2154 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUStorageBufferReadWriteBinding
{
    SDL_GPUBuffer *buffer;
    bool cycle;
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
} SDL_GPUStorageBufferReadWriteBinding;
# 2171 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUStorageTextureReadWriteBinding
{
    SDL_GPUTexture *texture;
    Uint32 mip_level;
    Uint32 layer;
    bool cycle;
    Uint8 padding1;
    Uint8 padding2;
    Uint8 padding3;
} SDL_GPUStorageTextureReadWriteBinding;
# 2199 "include/SDL3/SDL_gpu.h"
extern bool SDL_GPUSupportsShaderFormats(
    SDL_GPUShaderFormat format_flags,
    const char *name);
# 2213 "include/SDL3/SDL_gpu.h"
extern bool SDL_GPUSupportsProperties(
    SDL_PropertiesID props);
# 2242 "include/SDL3/SDL_gpu.h"
extern SDL_GPUDevice * SDL_CreateGPUDevice(
    SDL_GPUShaderFormat format_flags,
    bool debug_mode,
    const char *name);
# 2335 "include/SDL3/SDL_gpu.h"
extern SDL_GPUDevice * SDL_CreateGPUDeviceWithProperties(
    SDL_PropertiesID props);
# 2374 "include/SDL3/SDL_gpu.h"
typedef struct SDL_GPUVulkanOptions
{
    Uint32 vulkan_api_version;
    void *feature_list;
 void *vulkan_10_physical_device_features;
 Uint32 device_extension_count;
 const char **device_extension_names;
 Uint32 instance_extension_count;
 const char **instance_extension_names;
} SDL_GPUVulkanOptions;
# 2394 "include/SDL3/SDL_gpu.h"
extern void SDL_DestroyGPUDevice(SDL_GPUDevice *device);
# 2405 "include/SDL3/SDL_gpu.h"
extern int SDL_GetNumGPUDrivers(void);
# 2424 "include/SDL3/SDL_gpu.h"
extern const char * SDL_GetGPUDriver(int index);
# 2434 "include/SDL3/SDL_gpu.h"
extern const char * SDL_GetGPUDeviceDriver(SDL_GPUDevice *device);
# 2445 "include/SDL3/SDL_gpu.h"
extern SDL_GPUShaderFormat SDL_GetGPUShaderFormats(SDL_GPUDevice *device);
# 2549 "include/SDL3/SDL_gpu.h"
extern SDL_PropertiesID SDL_GetGPUDeviceProperties(SDL_GPUDevice *device);
# 2604 "include/SDL3/SDL_gpu.h"
extern SDL_GPUComputePipeline * SDL_CreateGPUComputePipeline(
    SDL_GPUDevice *device,
    const SDL_GPUComputePipelineCreateInfo *createinfo);
# 2631 "include/SDL3/SDL_gpu.h"
extern SDL_GPUGraphicsPipeline * SDL_CreateGPUGraphicsPipeline(
    SDL_GPUDevice *device,
    const SDL_GPUGraphicsPipelineCreateInfo *createinfo);
# 2658 "include/SDL3/SDL_gpu.h"
extern SDL_GPUSampler * SDL_CreateGPUSampler(
    SDL_GPUDevice *device,
    const SDL_GPUSamplerCreateInfo *createinfo);
# 2737 "include/SDL3/SDL_gpu.h"
extern SDL_GPUShader * SDL_CreateGPUShader(
    SDL_GPUDevice *device,
    const SDL_GPUShaderCreateInfo *createinfo);
# 2801 "include/SDL3/SDL_gpu.h"
extern SDL_GPUTexture * SDL_CreateGPUTexture(
    SDL_GPUDevice *device,
    const SDL_GPUTextureCreateInfo *createinfo);
# 2857 "include/SDL3/SDL_gpu.h"
extern SDL_GPUBuffer * SDL_CreateGPUBuffer(
    SDL_GPUDevice *device,
    const SDL_GPUBufferCreateInfo *createinfo);
# 2890 "include/SDL3/SDL_gpu.h"
extern SDL_GPUTransferBuffer * SDL_CreateGPUTransferBuffer(
    SDL_GPUDevice *device,
    const SDL_GPUTransferBufferCreateInfo *createinfo);
# 2915 "include/SDL3/SDL_gpu.h"
extern void SDL_SetGPUBufferName(
    SDL_GPUDevice *device,
    SDL_GPUBuffer *buffer,
    const char *text);
# 2938 "include/SDL3/SDL_gpu.h"
extern void SDL_SetGPUTextureName(
    SDL_GPUDevice *device,
    SDL_GPUTexture *texture,
    const char *text);
# 2959 "include/SDL3/SDL_gpu.h"
extern void SDL_InsertGPUDebugLabel(
    SDL_GPUCommandBuffer *command_buffer,
    const char *text);
# 2989 "include/SDL3/SDL_gpu.h"
extern void SDL_PushGPUDebugGroup(
    SDL_GPUCommandBuffer *command_buffer,
    const char *name);
# 3007 "include/SDL3/SDL_gpu.h"
extern void SDL_PopGPUDebugGroup(
    SDL_GPUCommandBuffer *command_buffer);
# 3022 "include/SDL3/SDL_gpu.h"
extern void SDL_ReleaseGPUTexture(
    SDL_GPUDevice *device,
    SDL_GPUTexture *texture);
# 3036 "include/SDL3/SDL_gpu.h"
extern void SDL_ReleaseGPUSampler(
    SDL_GPUDevice *device,
    SDL_GPUSampler *sampler);
# 3050 "include/SDL3/SDL_gpu.h"
extern void SDL_ReleaseGPUBuffer(
    SDL_GPUDevice *device,
    SDL_GPUBuffer *buffer);
# 3064 "include/SDL3/SDL_gpu.h"
extern void SDL_ReleaseGPUTransferBuffer(
    SDL_GPUDevice *device,
    SDL_GPUTransferBuffer *transfer_buffer);
# 3078 "include/SDL3/SDL_gpu.h"
extern void SDL_ReleaseGPUComputePipeline(
    SDL_GPUDevice *device,
    SDL_GPUComputePipeline *compute_pipeline);
# 3092 "include/SDL3/SDL_gpu.h"
extern void SDL_ReleaseGPUShader(
    SDL_GPUDevice *device,
    SDL_GPUShader *shader);
# 3106 "include/SDL3/SDL_gpu.h"
extern void SDL_ReleaseGPUGraphicsPipeline(
    SDL_GPUDevice *device,
    SDL_GPUGraphicsPipeline *graphics_pipeline);
# 3134 "include/SDL3/SDL_gpu.h"
extern SDL_GPUCommandBuffer * SDL_AcquireGPUCommandBuffer(
    SDL_GPUDevice *device);
# 3158 "include/SDL3/SDL_gpu.h"
extern void SDL_PushGPUVertexUniformData(
    SDL_GPUCommandBuffer *command_buffer,
    Uint32 slot_index,
    const void *data,
    Uint32 length);
# 3180 "include/SDL3/SDL_gpu.h"
extern void SDL_PushGPUFragmentUniformData(
    SDL_GPUCommandBuffer *command_buffer,
    Uint32 slot_index,
    const void *data,
    Uint32 length);
# 3202 "include/SDL3/SDL_gpu.h"
extern void SDL_PushGPUComputeUniformData(
    SDL_GPUCommandBuffer *command_buffer,
    Uint32 slot_index,
    const void *data,
    Uint32 length);
# 3243 "include/SDL3/SDL_gpu.h"
extern SDL_GPURenderPass * SDL_BeginGPURenderPass(
    SDL_GPUCommandBuffer *command_buffer,
    const SDL_GPUColorTargetInfo *color_target_infos,
    Uint32 num_color_targets,
    const SDL_GPUDepthStencilTargetInfo *depth_stencil_target_info);
# 3259 "include/SDL3/SDL_gpu.h"
extern void SDL_BindGPUGraphicsPipeline(
    SDL_GPURenderPass *render_pass,
    SDL_GPUGraphicsPipeline *graphics_pipeline);
# 3271 "include/SDL3/SDL_gpu.h"
extern void SDL_SetGPUViewport(
    SDL_GPURenderPass *render_pass,
    const SDL_GPUViewport *viewport);
# 3283 "include/SDL3/SDL_gpu.h"
extern void SDL_SetGPUScissor(
    SDL_GPURenderPass *render_pass,
    const SDL_Rect *scissor);
# 3298 "include/SDL3/SDL_gpu.h"
extern void SDL_SetGPUBlendConstants(
    SDL_GPURenderPass *render_pass,
    SDL_FColor blend_constants);
# 3310 "include/SDL3/SDL_gpu.h"
extern void SDL_SetGPUStencilReference(
    SDL_GPURenderPass *render_pass,
    Uint8 reference);
# 3326 "include/SDL3/SDL_gpu.h"
extern void SDL_BindGPUVertexBuffers(
    SDL_GPURenderPass *render_pass,
    Uint32 first_slot,
    const SDL_GPUBufferBinding *bindings,
    Uint32 num_bindings);
# 3343 "include/SDL3/SDL_gpu.h"
extern void SDL_BindGPUIndexBuffer(
    SDL_GPURenderPass *render_pass,
    const SDL_GPUBufferBinding *binding,
    SDL_GPUIndexElementSize index_element_size);
# 3367 "include/SDL3/SDL_gpu.h"
extern void SDL_BindGPUVertexSamplers(
    SDL_GPURenderPass *render_pass,
    Uint32 first_slot,
    const SDL_GPUTextureSamplerBinding *texture_sampler_bindings,
    Uint32 num_bindings);
# 3391 "include/SDL3/SDL_gpu.h"
extern void SDL_BindGPUVertexStorageTextures(
    SDL_GPURenderPass *render_pass,
    Uint32 first_slot,
    SDL_GPUTexture *const *storage_textures,
    Uint32 num_bindings);
# 3415 "include/SDL3/SDL_gpu.h"
extern void SDL_BindGPUVertexStorageBuffers(
    SDL_GPURenderPass *render_pass,
    Uint32 first_slot,
    SDL_GPUBuffer *const *storage_buffers,
    Uint32 num_bindings);
# 3440 "include/SDL3/SDL_gpu.h"
extern void SDL_BindGPUFragmentSamplers(
    SDL_GPURenderPass *render_pass,
    Uint32 first_slot,
    const SDL_GPUTextureSamplerBinding *texture_sampler_bindings,
    Uint32 num_bindings);
# 3464 "include/SDL3/SDL_gpu.h"
extern void SDL_BindGPUFragmentStorageTextures(
    SDL_GPURenderPass *render_pass,
    Uint32 first_slot,
    SDL_GPUTexture *const *storage_textures,
    Uint32 num_bindings);
# 3488 "include/SDL3/SDL_gpu.h"
extern void SDL_BindGPUFragmentStorageBuffers(
    SDL_GPURenderPass *render_pass,
    Uint32 first_slot,
    SDL_GPUBuffer *const *storage_buffers,
    Uint32 num_bindings);
# 3519 "include/SDL3/SDL_gpu.h"
extern void SDL_DrawGPUIndexedPrimitives(
    SDL_GPURenderPass *render_pass,
    Uint32 num_indices,
    Uint32 num_instances,
    Uint32 first_index,
    Sint32 vertex_offset,
    Uint32 first_instance);
# 3547 "include/SDL3/SDL_gpu.h"
extern void SDL_DrawGPUPrimitives(
    SDL_GPURenderPass *render_pass,
    Uint32 num_vertices,
    Uint32 num_instances,
    Uint32 first_vertex,
    Uint32 first_instance);
# 3570 "include/SDL3/SDL_gpu.h"
extern void SDL_DrawGPUPrimitivesIndirect(
    SDL_GPURenderPass *render_pass,
    SDL_GPUBuffer *buffer,
    Uint32 offset,
    Uint32 draw_count);
# 3592 "include/SDL3/SDL_gpu.h"
extern void SDL_DrawGPUIndexedPrimitivesIndirect(
    SDL_GPURenderPass *render_pass,
    SDL_GPUBuffer *buffer,
    Uint32 offset,
    Uint32 draw_count);
# 3608 "include/SDL3/SDL_gpu.h"
extern void SDL_EndGPURenderPass(
    SDL_GPURenderPass *render_pass);
# 3650 "include/SDL3/SDL_gpu.h"
extern SDL_GPUComputePass * SDL_BeginGPUComputePass(
    SDL_GPUCommandBuffer *command_buffer,
    const SDL_GPUStorageTextureReadWriteBinding *storage_texture_bindings,
    Uint32 num_storage_texture_bindings,
    const SDL_GPUStorageBufferReadWriteBinding *storage_buffer_bindings,
    Uint32 num_storage_buffer_bindings);
# 3665 "include/SDL3/SDL_gpu.h"
extern void SDL_BindGPUComputePipeline(
    SDL_GPUComputePass *compute_pass,
    SDL_GPUComputePipeline *compute_pipeline);
# 3688 "include/SDL3/SDL_gpu.h"
extern void SDL_BindGPUComputeSamplers(
    SDL_GPUComputePass *compute_pass,
    Uint32 first_slot,
    const SDL_GPUTextureSamplerBinding *texture_sampler_bindings,
    Uint32 num_bindings);
# 3712 "include/SDL3/SDL_gpu.h"
extern void SDL_BindGPUComputeStorageTextures(
    SDL_GPUComputePass *compute_pass,
    Uint32 first_slot,
    SDL_GPUTexture *const *storage_textures,
    Uint32 num_bindings);
# 3736 "include/SDL3/SDL_gpu.h"
extern void SDL_BindGPUComputeStorageBuffers(
    SDL_GPUComputePass *compute_pass,
    Uint32 first_slot,
    SDL_GPUBuffer *const *storage_buffers,
    Uint32 num_bindings);
# 3762 "include/SDL3/SDL_gpu.h"
extern void SDL_DispatchGPUCompute(
    SDL_GPUComputePass *compute_pass,
    Uint32 groupcount_x,
    Uint32 groupcount_y,
    Uint32 groupcount_z);
# 3786 "include/SDL3/SDL_gpu.h"
extern void SDL_DispatchGPUComputeIndirect(
    SDL_GPUComputePass *compute_pass,
    SDL_GPUBuffer *buffer,
    Uint32 offset);
# 3801 "include/SDL3/SDL_gpu.h"
extern void SDL_EndGPUComputePass(
    SDL_GPUComputePass *compute_pass);
# 3821 "include/SDL3/SDL_gpu.h"
extern void * SDL_MapGPUTransferBuffer(
    SDL_GPUDevice *device,
    SDL_GPUTransferBuffer *transfer_buffer,
    bool cycle);
# 3834 "include/SDL3/SDL_gpu.h"
extern void SDL_UnmapGPUTransferBuffer(
    SDL_GPUDevice *device,
    SDL_GPUTransferBuffer *transfer_buffer);
# 3854 "include/SDL3/SDL_gpu.h"
extern SDL_GPUCopyPass * SDL_BeginGPUCopyPass(
    SDL_GPUCommandBuffer *command_buffer);
# 3874 "include/SDL3/SDL_gpu.h"
extern void SDL_UploadToGPUTexture(
    SDL_GPUCopyPass *copy_pass,
    const SDL_GPUTextureTransferInfo *source,
    const SDL_GPUTextureRegion *destination,
    bool cycle);
# 3894 "include/SDL3/SDL_gpu.h"
extern void SDL_UploadToGPUBuffer(
    SDL_GPUCopyPass *copy_pass,
    const SDL_GPUTransferBufferLocation *source,
    const SDL_GPUBufferRegion *destination,
    bool cycle);
# 3921 "include/SDL3/SDL_gpu.h"
extern void SDL_CopyGPUTextureToTexture(
    SDL_GPUCopyPass *copy_pass,
    const SDL_GPUTextureLocation *source,
    const SDL_GPUTextureLocation *destination,
    Uint32 w,
    Uint32 h,
    Uint32 d,
    bool cycle);
# 3945 "include/SDL3/SDL_gpu.h"
extern void SDL_CopyGPUBufferToBuffer(
    SDL_GPUCopyPass *copy_pass,
    const SDL_GPUBufferLocation *source,
    const SDL_GPUBufferLocation *destination,
    Uint32 size,
    bool cycle);
# 3965 "include/SDL3/SDL_gpu.h"
extern void SDL_DownloadFromGPUTexture(
    SDL_GPUCopyPass *copy_pass,
    const SDL_GPUTextureRegion *source,
    const SDL_GPUTextureTransferInfo *destination);
# 3982 "include/SDL3/SDL_gpu.h"
extern void SDL_DownloadFromGPUBuffer(
    SDL_GPUCopyPass *copy_pass,
    const SDL_GPUBufferRegion *source,
    const SDL_GPUTransferBufferLocation *destination);
# 3994 "include/SDL3/SDL_gpu.h"
extern void SDL_EndGPUCopyPass(
    SDL_GPUCopyPass *copy_pass);
# 4007 "include/SDL3/SDL_gpu.h"
extern void SDL_GenerateMipmapsForGPUTexture(
    SDL_GPUCommandBuffer *command_buffer,
    SDL_GPUTexture *texture);
# 4021 "include/SDL3/SDL_gpu.h"
extern void SDL_BlitGPUTexture(
    SDL_GPUCommandBuffer *command_buffer,
    const SDL_GPUBlitInfo *info);
# 4041 "include/SDL3/SDL_gpu.h"
extern bool SDL_WindowSupportsGPUSwapchainComposition(
    SDL_GPUDevice *device,
    SDL_Window *window,
    SDL_GPUSwapchainComposition swapchain_composition);
# 4060 "include/SDL3/SDL_gpu.h"
extern bool SDL_WindowSupportsGPUPresentMode(
    SDL_GPUDevice *device,
    SDL_Window *window,
    SDL_GPUPresentMode present_mode);
# 4092 "include/SDL3/SDL_gpu.h"
extern bool SDL_ClaimWindowForGPUDevice(
    SDL_GPUDevice *device,
    SDL_Window *window);
# 4106 "include/SDL3/SDL_gpu.h"
extern void SDL_ReleaseWindowFromGPUDevice(
    SDL_GPUDevice *device,
    SDL_Window *window);
# 4133 "include/SDL3/SDL_gpu.h"
extern bool SDL_SetGPUSwapchainParameters(
    SDL_GPUDevice *device,
    SDL_Window *window,
    SDL_GPUSwapchainComposition swapchain_composition,
    SDL_GPUPresentMode present_mode);
# 4164 "include/SDL3/SDL_gpu.h"
extern bool SDL_SetGPUAllowedFramesInFlight(
    SDL_GPUDevice *device,
    Uint32 allowed_frames_in_flight);
# 4179 "include/SDL3/SDL_gpu.h"
extern SDL_GPUTextureFormat SDL_GetGPUSwapchainTextureFormat(
    SDL_GPUDevice *device,
    SDL_Window *window);
# 4231 "include/SDL3/SDL_gpu.h"
extern bool SDL_AcquireGPUSwapchainTexture(
    SDL_GPUCommandBuffer *command_buffer,
    SDL_Window *window,
    SDL_GPUTexture **swapchain_texture,
    Uint32 *swapchain_texture_width,
    Uint32 *swapchain_texture_height);
# 4255 "include/SDL3/SDL_gpu.h"
extern bool SDL_WaitForGPUSwapchain(
    SDL_GPUDevice *device,
    SDL_Window *window);
# 4301 "include/SDL3/SDL_gpu.h"
extern bool SDL_WaitAndAcquireGPUSwapchainTexture(
    SDL_GPUCommandBuffer *command_buffer,
    SDL_Window *window,
    SDL_GPUTexture **swapchain_texture,
    Uint32 *swapchain_texture_width,
    Uint32 *swapchain_texture_height);
# 4329 "include/SDL3/SDL_gpu.h"
extern bool SDL_SubmitGPUCommandBuffer(
    SDL_GPUCommandBuffer *command_buffer);
# 4356 "include/SDL3/SDL_gpu.h"
extern SDL_GPUFence * SDL_SubmitGPUCommandBufferAndAcquireFence(
    SDL_GPUCommandBuffer *command_buffer);
# 4381 "include/SDL3/SDL_gpu.h"
extern bool SDL_CancelGPUCommandBuffer(
    SDL_GPUCommandBuffer *command_buffer);
# 4395 "include/SDL3/SDL_gpu.h"
extern bool SDL_WaitForGPUIdle(
    SDL_GPUDevice *device);
# 4414 "include/SDL3/SDL_gpu.h"
extern bool SDL_WaitForGPUFences(
    SDL_GPUDevice *device,
    bool wait_all,
    SDL_GPUFence *const *fences,
    Uint32 num_fences);
# 4431 "include/SDL3/SDL_gpu.h"
extern bool SDL_QueryGPUFence(
    SDL_GPUDevice *device,
    SDL_GPUFence *fence);
# 4447 "include/SDL3/SDL_gpu.h"
extern void SDL_ReleaseGPUFence(
    SDL_GPUDevice *device,
    SDL_GPUFence *fence);
# 4463 "include/SDL3/SDL_gpu.h"
extern Uint32 SDL_GPUTextureFormatTexelBlockSize(
    SDL_GPUTextureFormat format);
# 4478 "include/SDL3/SDL_gpu.h"
extern bool SDL_GPUTextureSupportsFormat(
    SDL_GPUDevice *device,
    SDL_GPUTextureFormat format,
    SDL_GPUTextureType type,
    SDL_GPUTextureUsageFlags usage);
# 4494 "include/SDL3/SDL_gpu.h"
extern bool SDL_GPUTextureSupportsSampleCount(
    SDL_GPUDevice *device,
    SDL_GPUTextureFormat format,
    SDL_GPUSampleCount sample_count);
# 4510 "include/SDL3/SDL_gpu.h"
extern Uint32 SDL_CalculateGPUTextureFormatSize(
    SDL_GPUTextureFormat format,
    Uint32 width,
    Uint32 height,
    Uint32 depth_or_layer_count);
# 4525 "include/SDL3/SDL_gpu.h"
extern SDL_PixelFormat SDL_GetPixelFormatFromGPUTextureFormat(SDL_GPUTextureFormat format);
# 4537 "include/SDL3/SDL_gpu.h"
extern SDL_GPUTextureFormat SDL_GetGPUTextureFormatFromPixelFormat(SDL_PixelFormat format);
# 4576 "include/SDL3/SDL_gpu.h"
# 1 "include/SDL3/SDL_close_code.h" 1
# 4577 "include/SDL3/SDL_gpu.h" 2
# 52 "include/SDL3/SDL.h" 2

# 1 "include/SDL3/SDL_haptic.h" 1
# 124 "include/SDL3/SDL_haptic.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 125 "include/SDL3/SDL_haptic.h" 2
# 150 "include/SDL3/SDL_haptic.h"
typedef struct SDL_Haptic SDL_Haptic;
# 181 "include/SDL3/SDL_haptic.h"
typedef Uint16 SDL_HapticEffectType;
# 407 "include/SDL3/SDL_haptic.h"
typedef Uint8 SDL_HapticDirectionType;
# 460 "include/SDL3/SDL_haptic.h"
typedef int SDL_HapticEffectID;
# 566 "include/SDL3/SDL_haptic.h"
typedef struct SDL_HapticDirection
{
    SDL_HapticDirectionType type;
    Sint32 dir[3];
} SDL_HapticDirection;
# 586 "include/SDL3/SDL_haptic.h"
typedef struct SDL_HapticConstant
{

    SDL_HapticEffectType type;
    SDL_HapticDirection direction;


    Uint32 length;
    Uint16 delay;


    Uint16 button;
    Uint16 interval;


    Sint16 level;


    Uint16 attack_length;
    Uint16 attack_level;
    Uint16 fade_length;
    Uint16 fade_level;
} SDL_HapticConstant;
# 672 "include/SDL3/SDL_haptic.h"
typedef struct SDL_HapticPeriodic
{

    SDL_HapticEffectType type;


    SDL_HapticDirection direction;


    Uint32 length;
    Uint16 delay;


    Uint16 button;
    Uint16 interval;


    Uint16 period;
    Sint16 magnitude;
    Sint16 offset;
    Uint16 phase;


    Uint16 attack_length;
    Uint16 attack_level;
    Uint16 fade_length;
    Uint16 fade_level;
} SDL_HapticPeriodic;
# 728 "include/SDL3/SDL_haptic.h"
typedef struct SDL_HapticCondition
{

    SDL_HapticEffectType type;

    SDL_HapticDirection direction;


    Uint32 length;
    Uint16 delay;


    Uint16 button;
    Uint16 interval;


    Uint16 right_sat[3];
    Uint16 left_sat[3];
    Sint16 right_coeff[3];
    Sint16 left_coeff[3];
    Uint16 deadband[3];
    Sint16 center[3];
} SDL_HapticCondition;
# 767 "include/SDL3/SDL_haptic.h"
typedef struct SDL_HapticRamp
{

    SDL_HapticEffectType type;
    SDL_HapticDirection direction;


    Uint32 length;
    Uint16 delay;


    Uint16 button;
    Uint16 interval;


    Sint16 start;
    Sint16 end;


    Uint16 attack_length;
    Uint16 attack_level;
    Uint16 fade_length;
    Uint16 fade_level;
} SDL_HapticRamp;
# 806 "include/SDL3/SDL_haptic.h"
typedef struct SDL_HapticLeftRight
{

    SDL_HapticEffectType type;


    Uint32 length;


    Uint16 large_magnitude;
    Uint16 small_magnitude;
} SDL_HapticLeftRight;
# 836 "include/SDL3/SDL_haptic.h"
typedef struct SDL_HapticCustom
{

    SDL_HapticEffectType type;
    SDL_HapticDirection direction;


    Uint32 length;
    Uint16 delay;


    Uint16 button;
    Uint16 interval;


    Uint8 channels;
    Uint16 period;
    Uint16 samples;
    Uint16 *data;


    Uint16 attack_length;
    Uint16 attack_level;
    Uint16 fade_length;
    Uint16 fade_level;
} SDL_HapticCustom;
# 935 "include/SDL3/SDL_haptic.h"
typedef union SDL_HapticEffect
{

    SDL_HapticEffectType type;
    SDL_HapticConstant constant;
    SDL_HapticPeriodic periodic;
    SDL_HapticCondition condition;
    SDL_HapticRamp ramp;
    SDL_HapticLeftRight leftright;
    SDL_HapticCustom custom;
} SDL_HapticEffect;
# 957 "include/SDL3/SDL_haptic.h"
typedef Uint32 SDL_HapticID;
# 975 "include/SDL3/SDL_haptic.h"
extern SDL_HapticID * SDL_GetHaptics(int *count);
# 992 "include/SDL3/SDL_haptic.h"
extern const char * SDL_GetHapticNameForID(SDL_HapticID instance_id);
# 1017 "include/SDL3/SDL_haptic.h"
extern SDL_Haptic * SDL_OpenHaptic(SDL_HapticID instance_id);
# 1029 "include/SDL3/SDL_haptic.h"
extern SDL_Haptic * SDL_GetHapticFromID(SDL_HapticID instance_id);
# 1040 "include/SDL3/SDL_haptic.h"
extern SDL_HapticID SDL_GetHapticID(SDL_Haptic *haptic);
# 1054 "include/SDL3/SDL_haptic.h"
extern const char * SDL_GetHapticName(SDL_Haptic *haptic);
# 1065 "include/SDL3/SDL_haptic.h"
extern bool SDL_IsMouseHaptic(void);
# 1078 "include/SDL3/SDL_haptic.h"
extern SDL_Haptic * SDL_OpenHapticFromMouse(void);
# 1090 "include/SDL3/SDL_haptic.h"
extern bool SDL_IsJoystickHaptic(SDL_Joystick *joystick);
# 1112 "include/SDL3/SDL_haptic.h"
extern SDL_Haptic * SDL_OpenHapticFromJoystick(SDL_Joystick *joystick);
# 1123 "include/SDL3/SDL_haptic.h"
extern void SDL_CloseHaptic(SDL_Haptic *haptic);
# 1141 "include/SDL3/SDL_haptic.h"
extern int SDL_GetMaxHapticEffects(SDL_Haptic *haptic);
# 1157 "include/SDL3/SDL_haptic.h"
extern int SDL_GetMaxHapticEffectsPlaying(SDL_Haptic *haptic);
# 1171 "include/SDL3/SDL_haptic.h"
extern Uint32 SDL_GetHapticFeatures(SDL_Haptic *haptic);
# 1185 "include/SDL3/SDL_haptic.h"
extern int SDL_GetNumHapticAxes(SDL_Haptic *haptic);
# 1199 "include/SDL3/SDL_haptic.h"
extern bool SDL_HapticEffectSupported(SDL_Haptic *haptic, const SDL_HapticEffect *effect);
# 1216 "include/SDL3/SDL_haptic.h"
extern SDL_HapticEffectID SDL_CreateHapticEffect(SDL_Haptic *haptic, const SDL_HapticEffect *effect);
# 1238 "include/SDL3/SDL_haptic.h"
extern bool SDL_UpdateHapticEffect(SDL_Haptic *haptic, SDL_HapticEffectID effect, const SDL_HapticEffect *data);
# 1262 "include/SDL3/SDL_haptic.h"
extern bool SDL_RunHapticEffect(SDL_Haptic *haptic, SDL_HapticEffectID effect, Uint32 iterations);
# 1277 "include/SDL3/SDL_haptic.h"
extern bool SDL_StopHapticEffect(SDL_Haptic *haptic, SDL_HapticEffectID effect);
# 1292 "include/SDL3/SDL_haptic.h"
extern void SDL_DestroyHapticEffect(SDL_Haptic *haptic, SDL_HapticEffectID effect);
# 1308 "include/SDL3/SDL_haptic.h"
extern bool SDL_GetHapticEffectStatus(SDL_Haptic *haptic, SDL_HapticEffectID effect);
# 1330 "include/SDL3/SDL_haptic.h"
extern bool SDL_SetHapticGain(SDL_Haptic *haptic, int gain);
# 1349 "include/SDL3/SDL_haptic.h"
extern bool SDL_SetHapticAutocenter(SDL_Haptic *haptic, int autocenter);
# 1368 "include/SDL3/SDL_haptic.h"
extern bool SDL_PauseHaptic(SDL_Haptic *haptic);
# 1383 "include/SDL3/SDL_haptic.h"
extern bool SDL_ResumeHaptic(SDL_Haptic *haptic);
# 1397 "include/SDL3/SDL_haptic.h"
extern bool SDL_StopHapticEffects(SDL_Haptic *haptic);
# 1409 "include/SDL3/SDL_haptic.h"
extern bool SDL_HapticRumbleSupported(SDL_Haptic *haptic);
# 1424 "include/SDL3/SDL_haptic.h"
extern bool SDL_InitHapticRumble(SDL_Haptic *haptic);
# 1440 "include/SDL3/SDL_haptic.h"
extern bool SDL_PlayHapticRumble(SDL_Haptic *haptic, float strength, Uint32 length);
# 1453 "include/SDL3/SDL_haptic.h"
extern bool SDL_StopHapticRumble(SDL_Haptic *haptic);





# 1 "include/SDL3/SDL_close_code.h" 1
# 1460 "include/SDL3/SDL_haptic.h" 2
# 54 "include/SDL3/SDL.h" 2
# 1 "include/SDL3/SDL_hidapi.h" 1
# 60 "include/SDL3/SDL_hidapi.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 61 "include/SDL3/SDL_hidapi.h" 2
# 71 "include/SDL3/SDL_hidapi.h"
typedef struct SDL_hid_device SDL_hid_device;






typedef enum SDL_hid_bus_type {

    SDL_HID_API_BUS_UNKNOWN = 0x00,




    SDL_HID_API_BUS_USB = 0x01,






    SDL_HID_API_BUS_BLUETOOTH = 0x02,




    SDL_HID_API_BUS_I2C = 0x03,




    SDL_HID_API_BUS_SPI = 0x04

} SDL_hid_bus_type;
# 113 "include/SDL3/SDL_hidapi.h"
typedef struct SDL_hid_device_info
{

    char *path;

    unsigned short vendor_id;

    unsigned short product_id;

    wchar_t *serial_number;


    unsigned short release_number;

    wchar_t *manufacturer_string;

    wchar_t *product_string;


    unsigned short usage_page;


    unsigned short usage;






    int interface_number;



    int interface_class;
    int interface_subclass;
    int interface_protocol;


    SDL_hid_bus_type bus_type;


    struct SDL_hid_device_info *next;

} SDL_hid_device_info;
# 177 "include/SDL3/SDL_hidapi.h"
extern int SDL_hid_init(void);
# 192 "include/SDL3/SDL_hidapi.h"
extern int SDL_hid_exit(void);
# 213 "include/SDL3/SDL_hidapi.h"
extern Uint32 SDL_hid_device_change_count(void);
# 241 "include/SDL3/SDL_hidapi.h"
extern SDL_hid_device_info * SDL_hid_enumerate(unsigned short vendor_id, unsigned short product_id);
# 253 "include/SDL3/SDL_hidapi.h"
extern void SDL_hid_free_enumeration(SDL_hid_device_info *devs);
# 271 "include/SDL3/SDL_hidapi.h"
extern SDL_hid_device * SDL_hid_open(unsigned short vendor_id, unsigned short product_id, const wchar_t *serial_number);
# 285 "include/SDL3/SDL_hidapi.h"
extern SDL_hid_device * SDL_hid_open_path(const char *path);
# 301 "include/SDL3/SDL_hidapi.h"
extern SDL_PropertiesID SDL_hid_get_properties(SDL_hid_device *dev);
# 330 "include/SDL3/SDL_hidapi.h"
extern int SDL_hid_write(SDL_hid_device *dev, const unsigned char *data, size_t length);
# 351 "include/SDL3/SDL_hidapi.h"
extern int SDL_hid_read_timeout(SDL_hid_device *dev, unsigned char *data, size_t length, int milliseconds);
# 372 "include/SDL3/SDL_hidapi.h"
extern int SDL_hid_read(SDL_hid_device *dev, unsigned char *data, size_t length);
# 391 "include/SDL3/SDL_hidapi.h"
extern int SDL_hid_set_nonblocking(SDL_hid_device *dev, int nonblock);
# 416 "include/SDL3/SDL_hidapi.h"
extern int SDL_hid_send_feature_report(SDL_hid_device *dev, const unsigned char *data, size_t length);
# 439 "include/SDL3/SDL_hidapi.h"
extern int SDL_hid_get_feature_report(SDL_hid_device *dev, unsigned char *data, size_t length);
# 462 "include/SDL3/SDL_hidapi.h"
extern int SDL_hid_get_input_report(SDL_hid_device *dev, unsigned char *data, size_t length);
# 473 "include/SDL3/SDL_hidapi.h"
extern int SDL_hid_close(SDL_hid_device *dev);
# 486 "include/SDL3/SDL_hidapi.h"
extern int SDL_hid_get_manufacturer_string(SDL_hid_device *dev, wchar_t *string, size_t maxlen);
# 499 "include/SDL3/SDL_hidapi.h"
extern int SDL_hid_get_product_string(SDL_hid_device *dev, wchar_t *string, size_t maxlen);
# 512 "include/SDL3/SDL_hidapi.h"
extern int SDL_hid_get_serial_number_string(SDL_hid_device *dev, wchar_t *string, size_t maxlen);
# 526 "include/SDL3/SDL_hidapi.h"
extern int SDL_hid_get_indexed_string(SDL_hid_device *dev, int string_index, wchar_t *string, size_t maxlen);
# 538 "include/SDL3/SDL_hidapi.h"
extern SDL_hid_device_info * SDL_hid_get_device_info(SDL_hid_device *dev);
# 554 "include/SDL3/SDL_hidapi.h"
extern int SDL_hid_get_report_descriptor(SDL_hid_device *dev, unsigned char *buf, size_t buf_size);
# 563 "include/SDL3/SDL_hidapi.h"
extern void SDL_hid_ble_scan(bool active);





# 1 "include/SDL3/SDL_close_code.h" 1
# 570 "include/SDL3/SDL_hidapi.h" 2
# 55 "include/SDL3/SDL.h" 2
# 1 "include/SDL3/SDL_hints.h" 1
# 43 "include/SDL3/SDL_hints.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 44 "include/SDL3/SDL_hints.h" 2
# 4688 "include/SDL3/SDL_hints.h"
typedef enum SDL_HintPriority
{
    SDL_HINT_DEFAULT,
    SDL_HINT_NORMAL,
    SDL_HINT_OVERRIDE
} SDL_HintPriority;
# 4716 "include/SDL3/SDL_hints.h"
extern bool SDL_SetHintWithPriority(const char *name, const char *value, SDL_HintPriority priority);
# 4738 "include/SDL3/SDL_hints.h"
extern bool SDL_SetHint(const char *name, const char *value);
# 4758 "include/SDL3/SDL_hints.h"
extern bool SDL_ResetHint(const char *name);
# 4773 "include/SDL3/SDL_hints.h"
extern void SDL_ResetHints(void);
# 4788 "include/SDL3/SDL_hints.h"
extern const char * SDL_GetHint(const char *name);
# 4805 "include/SDL3/SDL_hints.h"
extern bool SDL_GetHintBoolean(const char *name, bool default_value);
# 4827 "include/SDL3/SDL_hints.h"
typedef void( *SDL_HintCallback)(void *userdata, const char *name, const char *oldValue, const char *newValue);
# 4848 "include/SDL3/SDL_hints.h"
extern bool SDL_AddHintCallback(const char *name, SDL_HintCallback callback, void *userdata);
# 4864 "include/SDL3/SDL_hints.h"
extern void SDL_RemoveHintCallback(const char *name,
                                                        SDL_HintCallback callback,
                                                        void *userdata);





# 1 "include/SDL3/SDL_close_code.h" 1
# 4873 "include/SDL3/SDL_hints.h" 2
# 56 "include/SDL3/SDL.h" 2
# 1 "include/SDL3/SDL_init.h" 1
# 56 "include/SDL3/SDL_init.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 57 "include/SDL3/SDL_init.h" 2
# 78 "include/SDL3/SDL_init.h"
typedef Uint32 SDL_InitFlags;
# 109 "include/SDL3/SDL_init.h"
typedef enum SDL_AppResult
{
    SDL_APP_CONTINUE,
    SDL_APP_SUCCESS,
    SDL_APP_FAILURE
} SDL_AppResult;
# 133 "include/SDL3/SDL_init.h"
typedef SDL_AppResult ( *SDL_AppInit_func)(void **appstate, int argc, char *argv[]);
# 148 "include/SDL3/SDL_init.h"
typedef SDL_AppResult ( *SDL_AppIterate_func)(void *appstate);
# 164 "include/SDL3/SDL_init.h"
typedef SDL_AppResult ( *SDL_AppEvent_func)(void *appstate, SDL_Event *event);
# 178 "include/SDL3/SDL_init.h"
typedef void ( *SDL_AppQuit_func)(void *appstate, SDL_AppResult result);
# 236 "include/SDL3/SDL_init.h"
extern bool SDL_Init(SDL_InitFlags flags);
# 253 "include/SDL3/SDL_init.h"
extern bool SDL_InitSubSystem(SDL_InitFlags flags);
# 268 "include/SDL3/SDL_init.h"
extern void SDL_QuitSubSystem(SDL_InitFlags flags);
# 282 "include/SDL3/SDL_init.h"
extern SDL_InitFlags SDL_WasInit(SDL_InitFlags flags);
# 300 "include/SDL3/SDL_init.h"
extern void SDL_Quit(void);
# 320 "include/SDL3/SDL_init.h"
extern bool SDL_IsMainThread(void);
# 331 "include/SDL3/SDL_init.h"
typedef void ( *SDL_MainThreadCallback)(void *userdata);
# 357 "include/SDL3/SDL_init.h"
extern bool SDL_RunOnMainThread(SDL_MainThreadCallback callback, void *userdata, bool wait_complete);
# 395 "include/SDL3/SDL_init.h"
extern bool SDL_SetAppMetadata(const char *appname, const char *appversion, const char *appidentifier);
# 458 "include/SDL3/SDL_init.h"
extern bool SDL_SetAppMetadataProperty(const char *name, const char *value);
# 489 "include/SDL3/SDL_init.h"
extern const char * SDL_GetAppMetadataProperty(const char *name);





# 1 "include/SDL3/SDL_close_code.h" 1
# 496 "include/SDL3/SDL_init.h" 2
# 57 "include/SDL3/SDL.h" 2




# 1 "include/SDL3/SDL_loadso.h" 1
# 62 "include/SDL3/SDL_loadso.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 63 "include/SDL3/SDL_loadso.h" 2
# 77 "include/SDL3/SDL_loadso.h"
typedef struct SDL_SharedObject SDL_SharedObject;
# 93 "include/SDL3/SDL_loadso.h"
extern SDL_SharedObject * SDL_LoadObject(const char *sofile);
# 121 "include/SDL3/SDL_loadso.h"
extern SDL_FunctionPointer SDL_LoadFunction(SDL_SharedObject *handle, const char *name);
# 137 "include/SDL3/SDL_loadso.h"
extern void SDL_UnloadObject(SDL_SharedObject *handle);





# 1 "include/SDL3/SDL_close_code.h" 1
# 144 "include/SDL3/SDL_loadso.h" 2
# 62 "include/SDL3/SDL.h" 2
# 1 "include/SDL3/SDL_locale.h" 1
# 40 "include/SDL3/SDL_locale.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 41 "include/SDL3/SDL_locale.h" 2
# 60 "include/SDL3/SDL_locale.h"
typedef struct SDL_Locale
{
    const char *language;
    const char *country;
} SDL_Locale;
# 107 "include/SDL3/SDL_locale.h"
extern SDL_Locale ** SDL_GetPreferredLocales(int *count);







# 1 "include/SDL3/SDL_close_code.h" 1
# 116 "include/SDL3/SDL_locale.h" 2
# 63 "include/SDL3/SDL.h" 2
# 1 "include/SDL3/SDL_log.h" 1
# 75 "include/SDL3/SDL_log.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 76 "include/SDL3/SDL_log.h" 2
# 90 "include/SDL3/SDL_log.h"
typedef enum SDL_LogCategory
{
    SDL_LOG_CATEGORY_APPLICATION,
    SDL_LOG_CATEGORY_ERROR,
    SDL_LOG_CATEGORY_ASSERT,
    SDL_LOG_CATEGORY_SYSTEM,
    SDL_LOG_CATEGORY_AUDIO,
    SDL_LOG_CATEGORY_VIDEO,
    SDL_LOG_CATEGORY_RENDER,
    SDL_LOG_CATEGORY_INPUT,
    SDL_LOG_CATEGORY_TEST,
    SDL_LOG_CATEGORY_GPU,


    SDL_LOG_CATEGORY_RESERVED2,
    SDL_LOG_CATEGORY_RESERVED3,
    SDL_LOG_CATEGORY_RESERVED4,
    SDL_LOG_CATEGORY_RESERVED5,
    SDL_LOG_CATEGORY_RESERVED6,
    SDL_LOG_CATEGORY_RESERVED7,
    SDL_LOG_CATEGORY_RESERVED8,
    SDL_LOG_CATEGORY_RESERVED9,
    SDL_LOG_CATEGORY_RESERVED10,
# 122 "include/SDL3/SDL_log.h"
    SDL_LOG_CATEGORY_CUSTOM
} SDL_LogCategory;






typedef enum SDL_LogPriority
{
    SDL_LOG_PRIORITY_INVALID,
    SDL_LOG_PRIORITY_TRACE,
    SDL_LOG_PRIORITY_VERBOSE,
    SDL_LOG_PRIORITY_DEBUG,
    SDL_LOG_PRIORITY_INFO,
    SDL_LOG_PRIORITY_WARN,
    SDL_LOG_PRIORITY_ERROR,
    SDL_LOG_PRIORITY_CRITICAL,
    SDL_LOG_PRIORITY_COUNT
} SDL_LogPriority;
# 156 "include/SDL3/SDL_log.h"
extern void SDL_SetLogPriorities(SDL_LogPriority priority);
# 172 "include/SDL3/SDL_log.h"
extern void SDL_SetLogPriority(int category, SDL_LogPriority priority);
# 186 "include/SDL3/SDL_log.h"
extern SDL_LogPriority SDL_GetLogPriority(int category);
# 200 "include/SDL3/SDL_log.h"
extern void SDL_ResetLogPriorities(void);
# 225 "include/SDL3/SDL_log.h"
extern bool SDL_SetLogPriorityPrefix(SDL_LogPriority priority, const char *prefix);
# 248 "include/SDL3/SDL_log.h"
extern void SDL_Log( const char *fmt, ...) __attribute__ (( format( __printf__, 1, 1 +1 )));
# 272 "include/SDL3/SDL_log.h"
extern void SDL_LogTrace(int category, const char *fmt, ...) __attribute__ (( format( __printf__, 2, 2 +1 )));
# 295 "include/SDL3/SDL_log.h"
extern void SDL_LogVerbose(int category, const char *fmt, ...) __attribute__ (( format( __printf__, 2, 2 +1 )));
# 319 "include/SDL3/SDL_log.h"
extern void SDL_LogDebug(int category, const char *fmt, ...) __attribute__ (( format( __printf__, 2, 2 +1 )));
# 343 "include/SDL3/SDL_log.h"
extern void SDL_LogInfo(int category, const char *fmt, ...) __attribute__ (( format( __printf__, 2, 2 +1 )));
# 367 "include/SDL3/SDL_log.h"
extern void SDL_LogWarn(int category, const char *fmt, ...) __attribute__ (( format( __printf__, 2, 2 +1 )));
# 391 "include/SDL3/SDL_log.h"
extern void SDL_LogError(int category, const char *fmt, ...) __attribute__ (( format( __printf__, 2, 2 +1 )));
# 415 "include/SDL3/SDL_log.h"
extern void SDL_LogCritical(int category, const char *fmt, ...) __attribute__ (( format( __printf__, 2, 2 +1 )));
# 440 "include/SDL3/SDL_log.h"
extern void SDL_LogMessage(int category,
                                            SDL_LogPriority priority,
                                            const char *fmt, ...) __attribute__ (( format( __printf__, 3, 3 +1 )));
# 466 "include/SDL3/SDL_log.h"
extern void SDL_LogMessageV(int category,
                                             SDL_LogPriority priority,
                                             const char *fmt, va_list ap) __attribute__(( format( __printf__, 3, 0 )));
# 485 "include/SDL3/SDL_log.h"
typedef void ( *SDL_LogOutputFunction)(void *userdata, int category, SDL_LogPriority priority, const char *message);
# 499 "include/SDL3/SDL_log.h"
extern SDL_LogOutputFunction SDL_GetDefaultLogOutputFunction(void);
# 516 "include/SDL3/SDL_log.h"
extern void SDL_GetLogOutputFunction(SDL_LogOutputFunction *callback, void **userdata);
# 531 "include/SDL3/SDL_log.h"
extern void SDL_SetLogOutputFunction(SDL_LogOutputFunction callback, void *userdata);






# 1 "include/SDL3/SDL_close_code.h" 1
# 539 "include/SDL3/SDL_log.h" 2
# 64 "include/SDL3/SDL.h" 2
# 1 "include/SDL3/SDL_messagebox.h" 1
# 46 "include/SDL3/SDL_messagebox.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 47 "include/SDL3/SDL_messagebox.h" 2
# 59 "include/SDL3/SDL_messagebox.h"
typedef Uint32 SDL_MessageBoxFlags;
# 72 "include/SDL3/SDL_messagebox.h"
typedef Uint32 SDL_MessageBoxButtonFlags;
# 82 "include/SDL3/SDL_messagebox.h"
typedef struct SDL_MessageBoxButtonData
{
    SDL_MessageBoxButtonFlags flags;
    int buttonID;
    const char *text;
} SDL_MessageBoxButtonData;






typedef struct SDL_MessageBoxColor
{
    Uint8 r, g, b;
} SDL_MessageBoxColor;





typedef enum SDL_MessageBoxColorType
{
    SDL_MESSAGEBOX_COLOR_BACKGROUND,
    SDL_MESSAGEBOX_COLOR_TEXT,
    SDL_MESSAGEBOX_COLOR_BUTTON_BORDER,
    SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND,
    SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED,
    SDL_MESSAGEBOX_COLOR_COUNT
} SDL_MessageBoxColorType;






typedef struct SDL_MessageBoxColorScheme
{
    SDL_MessageBoxColor colors[SDL_MESSAGEBOX_COLOR_COUNT];
} SDL_MessageBoxColorScheme;






typedef struct SDL_MessageBoxData
{
    SDL_MessageBoxFlags flags;
    SDL_Window *window;
    const char *title;
    const char *message;

    int numbuttons;
    const SDL_MessageBoxButtonData *buttons;

    const SDL_MessageBoxColorScheme *colorScheme;
} SDL_MessageBoxData;
# 175 "include/SDL3/SDL_messagebox.h"
extern bool SDL_ShowMessageBox(const SDL_MessageBoxData *messageboxdata, int *buttonid);
# 217 "include/SDL3/SDL_messagebox.h"
extern bool SDL_ShowSimpleMessageBox(SDL_MessageBoxFlags flags, const char *title, const char *message, SDL_Window *window);






# 1 "include/SDL3/SDL_close_code.h" 1
# 225 "include/SDL3/SDL_messagebox.h" 2
# 65 "include/SDL3/SDL.h" 2
# 1 "include/SDL3/SDL_metal.h" 1
# 37 "include/SDL3/SDL_metal.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 38 "include/SDL3/SDL_metal.h" 2
# 48 "include/SDL3/SDL_metal.h"
typedef void *SDL_MetalView;
# 73 "include/SDL3/SDL_metal.h"
extern SDL_MetalView SDL_Metal_CreateView(SDL_Window *window);
# 87 "include/SDL3/SDL_metal.h"
extern void SDL_Metal_DestroyView(SDL_MetalView view);
# 97 "include/SDL3/SDL_metal.h"
extern void * SDL_Metal_GetLayer(SDL_MetalView view);







# 1 "include/SDL3/SDL_close_code.h" 1
# 106 "include/SDL3/SDL_metal.h" 2
# 66 "include/SDL3/SDL.h" 2
# 1 "include/SDL3/SDL_misc.h" 1
# 34 "include/SDL3/SDL_misc.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 35 "include/SDL3/SDL_misc.h" 2
# 70 "include/SDL3/SDL_misc.h"
extern bool SDL_OpenURL(const char *url);





# 1 "include/SDL3/SDL_close_code.h" 1
# 77 "include/SDL3/SDL_misc.h" 2
# 67 "include/SDL3/SDL.h" 2




# 1 "include/SDL3/SDL_platform.h" 1
# 34 "include/SDL3/SDL_platform.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 35 "include/SDL3/SDL_platform.h" 2
# 56 "include/SDL3/SDL_platform.h"
extern const char * SDL_GetPlatform(void);





# 1 "include/SDL3/SDL_close_code.h" 1
# 63 "include/SDL3/SDL_platform.h" 2
# 72 "include/SDL3/SDL.h" 2

# 1 "include/SDL3/SDL_process.h" 1
# 51 "include/SDL3/SDL_process.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 52 "include/SDL3/SDL_process.h" 2
# 64 "include/SDL3/SDL_process.h"
typedef struct SDL_Process SDL_Process;
# 106 "include/SDL3/SDL_process.h"
extern SDL_Process * SDL_CreateProcess(const char * const *args, bool pipe_stdio);
# 150 "include/SDL3/SDL_process.h"
typedef enum SDL_ProcessIO
{
    SDL_PROCESS_STDIO_INHERITED,
    SDL_PROCESS_STDIO_NULL,
    SDL_PROCESS_STDIO_APP,
    SDL_PROCESS_STDIO_REDIRECT
} SDL_ProcessIO;
# 227 "include/SDL3/SDL_process.h"
extern SDL_Process * SDL_CreateProcessWithProperties(SDL_PropertiesID props);
# 271 "include/SDL3/SDL_process.h"
extern SDL_PropertiesID SDL_GetProcessProperties(SDL_Process *process);
# 308 "include/SDL3/SDL_process.h"
extern void * SDL_ReadProcess(SDL_Process *process, size_t *datasize, int *exitcode);
# 334 "include/SDL3/SDL_process.h"
extern SDL_IOStream * SDL_GetProcessInput(SDL_Process *process);
# 358 "include/SDL3/SDL_process.h"
extern SDL_IOStream * SDL_GetProcessOutput(SDL_Process *process);
# 381 "include/SDL3/SDL_process.h"
extern bool SDL_KillProcess(SDL_Process *process, bool force);
# 414 "include/SDL3/SDL_process.h"
extern bool SDL_WaitProcess(SDL_Process *process, bool block, int *exitcode);
# 433 "include/SDL3/SDL_process.h"
extern void SDL_DestroyProcess(SDL_Process *process);





# 1 "include/SDL3/SDL_close_code.h" 1
# 440 "include/SDL3/SDL_process.h" 2
# 74 "include/SDL3/SDL.h" 2


# 1 "include/SDL3/SDL_render.h" 1
# 64 "include/SDL3/SDL_render.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 65 "include/SDL3/SDL_render.h" 2
# 89 "include/SDL3/SDL_render.h"
typedef struct SDL_Vertex
{
    SDL_FPoint position;
    SDL_FColor color;
    SDL_FPoint tex_coord;
} SDL_Vertex;






typedef enum SDL_TextureAccess
{
    SDL_TEXTUREACCESS_STATIC,
    SDL_TEXTUREACCESS_STREAMING,
    SDL_TEXTUREACCESS_TARGET
} SDL_TextureAccess;
# 119 "include/SDL3/SDL_render.h"
typedef enum SDL_TextureAddressMode
{
    SDL_TEXTURE_ADDRESS_INVALID = -1,
    SDL_TEXTURE_ADDRESS_AUTO,
    SDL_TEXTURE_ADDRESS_CLAMP,
    SDL_TEXTURE_ADDRESS_WRAP
} SDL_TextureAddressMode;






typedef enum SDL_RendererLogicalPresentation
{
    SDL_LOGICAL_PRESENTATION_DISABLED,
    SDL_LOGICAL_PRESENTATION_STRETCH,
    SDL_LOGICAL_PRESENTATION_LETTERBOX,
    SDL_LOGICAL_PRESENTATION_OVERSCAN,
    SDL_LOGICAL_PRESENTATION_INTEGER_SCALE
} SDL_RendererLogicalPresentation;






typedef struct SDL_Renderer SDL_Renderer;
# 160 "include/SDL3/SDL_render.h"
struct SDL_Texture
{
    SDL_PixelFormat format;
    int w;
    int h;

    int refcount;
};


typedef struct SDL_Texture SDL_Texture;
# 192 "include/SDL3/SDL_render.h"
extern int SDL_GetNumRenderDrivers(void);
# 216 "include/SDL3/SDL_render.h"
extern const char * SDL_GetRenderDriver(int index);
# 238 "include/SDL3/SDL_render.h"
extern bool SDL_CreateWindowAndRenderer(const char *title, int width, int height, SDL_WindowFlags window_flags, SDL_Window **window, SDL_Renderer **renderer);
# 273 "include/SDL3/SDL_render.h"
extern SDL_Renderer * SDL_CreateRenderer(SDL_Window *window, const char *name);
# 337 "include/SDL3/SDL_render.h"
extern SDL_Renderer * SDL_CreateRendererWithProperties(SDL_PropertiesID props);
# 387 "include/SDL3/SDL_render.h"
extern SDL_Renderer * SDL_CreateGPURenderer(SDL_GPUDevice *device, SDL_Window *window);
# 400 "include/SDL3/SDL_render.h"
extern SDL_GPUDevice * SDL_GetGPURendererDevice(SDL_Renderer *renderer);
# 421 "include/SDL3/SDL_render.h"
extern SDL_Renderer * SDL_CreateSoftwareRenderer(SDL_Surface *surface);
# 434 "include/SDL3/SDL_render.h"
extern SDL_Renderer * SDL_GetRenderer(SDL_Window *window);
# 447 "include/SDL3/SDL_render.h"
extern SDL_Window * SDL_GetRenderWindow(SDL_Renderer *renderer);
# 463 "include/SDL3/SDL_render.h"
extern const char * SDL_GetRendererName(SDL_Renderer *renderer);
# 551 "include/SDL3/SDL_render.h"
extern SDL_PropertiesID SDL_GetRendererProperties(SDL_Renderer *renderer);
# 600 "include/SDL3/SDL_render.h"
extern bool SDL_GetRenderOutputSize(SDL_Renderer *renderer, int *w, int *h);
# 623 "include/SDL3/SDL_render.h"
extern bool SDL_GetCurrentRenderOutputSize(SDL_Renderer *renderer, int *w, int *h);
# 648 "include/SDL3/SDL_render.h"
extern SDL_Texture * SDL_CreateTexture(SDL_Renderer *renderer, SDL_PixelFormat format, SDL_TextureAccess access, int w, int h);
# 676 "include/SDL3/SDL_render.h"
extern SDL_Texture * SDL_CreateTextureFromSurface(SDL_Renderer *renderer, SDL_Surface *surface);
# 806 "include/SDL3/SDL_render.h"
extern SDL_Texture * SDL_CreateTextureWithProperties(SDL_Renderer *renderer, SDL_PropertiesID props);
# 935 "include/SDL3/SDL_render.h"
extern SDL_PropertiesID SDL_GetTextureProperties(SDL_Texture *texture);
# 979 "include/SDL3/SDL_render.h"
extern SDL_Renderer * SDL_GetRendererFromTexture(SDL_Texture *texture);
# 996 "include/SDL3/SDL_render.h"
extern bool SDL_GetTextureSize(SDL_Texture *texture, float *w, float *h);
# 1018 "include/SDL3/SDL_render.h"
extern bool SDL_SetTexturePalette(SDL_Texture *texture, SDL_Palette *palette);
# 1033 "include/SDL3/SDL_render.h"
extern SDL_Palette * SDL_GetTexturePalette(SDL_Texture *texture);
# 1062 "include/SDL3/SDL_render.h"
extern bool SDL_SetTextureColorMod(SDL_Texture *texture, Uint8 r, Uint8 g, Uint8 b);
# 1092 "include/SDL3/SDL_render.h"
extern bool SDL_SetTextureColorModFloat(SDL_Texture *texture, float r, float g, float b);
# 1113 "include/SDL3/SDL_render.h"
extern bool SDL_GetTextureColorMod(SDL_Texture *texture, Uint8 *r, Uint8 *g, Uint8 *b);
# 1133 "include/SDL3/SDL_render.h"
extern bool SDL_GetTextureColorModFloat(SDL_Texture *texture, float *r, float *g, float *b);
# 1159 "include/SDL3/SDL_render.h"
extern bool SDL_SetTextureAlphaMod(SDL_Texture *texture, Uint8 alpha);
# 1185 "include/SDL3/SDL_render.h"
extern bool SDL_SetTextureAlphaModFloat(SDL_Texture *texture, float alpha);
# 1203 "include/SDL3/SDL_render.h"
extern bool SDL_GetTextureAlphaMod(SDL_Texture *texture, Uint8 *alpha);
# 1221 "include/SDL3/SDL_render.h"
extern bool SDL_GetTextureAlphaModFloat(SDL_Texture *texture, float *alpha);
# 1240 "include/SDL3/SDL_render.h"
extern bool SDL_SetTextureBlendMode(SDL_Texture *texture, SDL_BlendMode blendMode);
# 1256 "include/SDL3/SDL_render.h"
extern bool SDL_GetTextureBlendMode(SDL_Texture *texture, SDL_BlendMode *blendMode);
# 1276 "include/SDL3/SDL_render.h"
extern bool SDL_SetTextureScaleMode(SDL_Texture *texture, SDL_ScaleMode scaleMode);
# 1292 "include/SDL3/SDL_render.h"
extern bool SDL_GetTextureScaleMode(SDL_Texture *texture, SDL_ScaleMode *scaleMode);
# 1326 "include/SDL3/SDL_render.h"
extern bool SDL_UpdateTexture(SDL_Texture *texture, const SDL_Rect *rect, const void *pixels, int pitch);
# 1358 "include/SDL3/SDL_render.h"
extern bool SDL_UpdateYUVTexture(SDL_Texture *texture,
                                                 const SDL_Rect *rect,
                                                 const Uint8 *Yplane, int Ypitch,
                                                 const Uint8 *Uplane, int Upitch,
                                                 const Uint8 *Vplane, int Vpitch);
# 1390 "include/SDL3/SDL_render.h"
extern bool SDL_UpdateNVTexture(SDL_Texture *texture,
                                                 const SDL_Rect *rect,
                                                 const Uint8 *Yplane, int Ypitch,
                                                 const Uint8 *UVplane, int UVpitch);
# 1425 "include/SDL3/SDL_render.h"
extern bool SDL_LockTexture(SDL_Texture *texture,
                                            const SDL_Rect *rect,
                                            void **pixels, int *pitch);
# 1463 "include/SDL3/SDL_render.h"
extern bool SDL_LockTextureToSurface(SDL_Texture *texture, const SDL_Rect *rect, SDL_Surface **surface);
# 1484 "include/SDL3/SDL_render.h"
extern void SDL_UnlockTexture(SDL_Texture *texture);
# 1511 "include/SDL3/SDL_render.h"
extern bool SDL_SetRenderTarget(SDL_Renderer *renderer, SDL_Texture *texture);
# 1528 "include/SDL3/SDL_render.h"
extern SDL_Texture * SDL_GetRenderTarget(SDL_Renderer *renderer);
# 1575 "include/SDL3/SDL_render.h"
extern bool SDL_SetRenderLogicalPresentation(SDL_Renderer *renderer, int w, int h, SDL_RendererLogicalPresentation mode);
# 1600 "include/SDL3/SDL_render.h"
extern bool SDL_GetRenderLogicalPresentation(SDL_Renderer *renderer, int *w, int *h, SDL_RendererLogicalPresentation *mode);
# 1625 "include/SDL3/SDL_render.h"
extern bool SDL_GetRenderLogicalPresentationRect(SDL_Renderer *renderer, SDL_FRect *rect);
# 1652 "include/SDL3/SDL_render.h"
extern bool SDL_RenderCoordinatesFromWindow(SDL_Renderer *renderer, float window_x, float window_y, float *x, float *y);
# 1682 "include/SDL3/SDL_render.h"
extern bool SDL_RenderCoordinatesToWindow(SDL_Renderer *renderer, float x, float y, float *window_x, float *window_y);
# 1718 "include/SDL3/SDL_render.h"
extern bool SDL_ConvertEventToRenderCoordinates(SDL_Renderer *renderer, SDL_Event *event);
# 1745 "include/SDL3/SDL_render.h"
extern bool SDL_SetRenderViewport(SDL_Renderer *renderer, const SDL_Rect *rect);
# 1765 "include/SDL3/SDL_render.h"
extern bool SDL_GetRenderViewport(SDL_Renderer *renderer, SDL_Rect *rect);
# 1787 "include/SDL3/SDL_render.h"
extern bool SDL_RenderViewportSet(SDL_Renderer *renderer);
# 1809 "include/SDL3/SDL_render.h"
extern bool SDL_GetRenderSafeArea(SDL_Renderer *renderer, SDL_Rect *rect);
# 1830 "include/SDL3/SDL_render.h"
extern bool SDL_SetRenderClipRect(SDL_Renderer *renderer, const SDL_Rect *rect);
# 1851 "include/SDL3/SDL_render.h"
extern bool SDL_GetRenderClipRect(SDL_Renderer *renderer, SDL_Rect *rect);
# 1870 "include/SDL3/SDL_render.h"
extern bool SDL_RenderClipEnabled(SDL_Renderer *renderer);
# 1898 "include/SDL3/SDL_render.h"
extern bool SDL_SetRenderScale(SDL_Renderer *renderer, float scaleX, float scaleY);
# 1918 "include/SDL3/SDL_render.h"
extern bool SDL_GetRenderScale(SDL_Renderer *renderer, float *scaleX, float *scaleY);
# 1943 "include/SDL3/SDL_render.h"
extern bool SDL_SetRenderDrawColor(SDL_Renderer *renderer, Uint8 r, Uint8 g, Uint8 b, Uint8 a);
# 1968 "include/SDL3/SDL_render.h"
extern bool SDL_SetRenderDrawColorFloat(SDL_Renderer *renderer, float r, float g, float b, float a);
# 1992 "include/SDL3/SDL_render.h"
extern bool SDL_GetRenderDrawColor(SDL_Renderer *renderer, Uint8 *r, Uint8 *g, Uint8 *b, Uint8 *a);
# 2016 "include/SDL3/SDL_render.h"
extern bool SDL_GetRenderDrawColorFloat(SDL_Renderer *renderer, float *r, float *g, float *b, float *a);
# 2040 "include/SDL3/SDL_render.h"
extern bool SDL_SetRenderColorScale(SDL_Renderer *renderer, float scale);
# 2056 "include/SDL3/SDL_render.h"
extern bool SDL_GetRenderColorScale(SDL_Renderer *renderer, float *scale);
# 2074 "include/SDL3/SDL_render.h"
extern bool SDL_SetRenderDrawBlendMode(SDL_Renderer *renderer, SDL_BlendMode blendMode);
# 2090 "include/SDL3/SDL_render.h"
extern bool SDL_GetRenderDrawBlendMode(SDL_Renderer *renderer, SDL_BlendMode *blendMode);
# 2110 "include/SDL3/SDL_render.h"
extern bool SDL_RenderClear(SDL_Renderer *renderer);
# 2127 "include/SDL3/SDL_render.h"
extern bool SDL_RenderPoint(SDL_Renderer *renderer, float x, float y);
# 2144 "include/SDL3/SDL_render.h"
extern bool SDL_RenderPoints(SDL_Renderer *renderer, const SDL_FPoint *points, int count);
# 2163 "include/SDL3/SDL_render.h"
extern bool SDL_RenderLine(SDL_Renderer *renderer, float x1, float y1, float x2, float y2);
# 2181 "include/SDL3/SDL_render.h"
extern bool SDL_RenderLines(SDL_Renderer *renderer, const SDL_FPoint *points, int count);
# 2198 "include/SDL3/SDL_render.h"
extern bool SDL_RenderRect(SDL_Renderer *renderer, const SDL_FRect *rect);
# 2216 "include/SDL3/SDL_render.h"
extern bool SDL_RenderRects(SDL_Renderer *renderer, const SDL_FRect *rects, int count);
# 2234 "include/SDL3/SDL_render.h"
extern bool SDL_RenderFillRect(SDL_Renderer *renderer, const SDL_FRect *rect);
# 2252 "include/SDL3/SDL_render.h"
extern bool SDL_RenderFillRects(SDL_Renderer *renderer, const SDL_FRect *rects, int count);
# 2274 "include/SDL3/SDL_render.h"
extern bool SDL_RenderTexture(SDL_Renderer *renderer, SDL_Texture *texture, const SDL_FRect *srcrect, const SDL_FRect *dstrect);
# 2302 "include/SDL3/SDL_render.h"
extern bool SDL_RenderTextureRotated(SDL_Renderer *renderer, SDL_Texture *texture,
                                                     const SDL_FRect *srcrect, const SDL_FRect *dstrect,
                                                     double angle, const SDL_FPoint *center,
                                                     SDL_FlipMode flip);
# 2333 "include/SDL3/SDL_render.h"
extern bool SDL_RenderTextureAffine(SDL_Renderer *renderer, SDL_Texture *texture,
                                                     const SDL_FRect *srcrect, const SDL_FPoint *origin,
                                                     const SDL_FPoint *right, const SDL_FPoint *down);
# 2362 "include/SDL3/SDL_render.h"
extern bool SDL_RenderTextureTiled(SDL_Renderer *renderer, SDL_Texture *texture, const SDL_FRect *srcrect, float scale, const SDL_FRect *dstrect);
# 2397 "include/SDL3/SDL_render.h"
extern bool SDL_RenderTexture9Grid(SDL_Renderer *renderer, SDL_Texture *texture, const SDL_FRect *srcrect, float left_width, float right_width, float top_height, float bottom_height, float scale, const SDL_FRect *dstrect);
# 2435 "include/SDL3/SDL_render.h"
extern bool SDL_RenderTexture9GridTiled(SDL_Renderer *renderer, SDL_Texture *texture, const SDL_FRect *srcrect, float left_width, float right_width, float top_height, float bottom_height, float scale, const SDL_FRect *dstrect, float tileScale);
# 2460 "include/SDL3/SDL_render.h"
extern bool SDL_RenderGeometry(SDL_Renderer *renderer,
                                               SDL_Texture *texture,
                                               const SDL_Vertex *vertices, int num_vertices,
                                               const int *indices, int num_indices);
# 2493 "include/SDL3/SDL_render.h"
extern bool SDL_RenderGeometryRaw(SDL_Renderer *renderer,
                                               SDL_Texture *texture,
                                               const float *xy, int xy_stride,
                                               const SDL_FColor *color, int color_stride,
                                               const float *uv, int uv_stride,
                                               int num_vertices,
                                               const void *indices, int num_indices, int size_indices);
# 2518 "include/SDL3/SDL_render.h"
extern bool SDL_SetRenderTextureAddressMode(SDL_Renderer *renderer, SDL_TextureAddressMode u_mode, SDL_TextureAddressMode v_mode);
# 2537 "include/SDL3/SDL_render.h"
extern bool SDL_GetRenderTextureAddressMode(SDL_Renderer *renderer, SDL_TextureAddressMode *u_mode, SDL_TextureAddressMode *v_mode);
# 2564 "include/SDL3/SDL_render.h"
extern SDL_Surface * SDL_RenderReadPixels(SDL_Renderer *renderer, const SDL_Rect *rect);
# 2613 "include/SDL3/SDL_render.h"
extern bool SDL_RenderPresent(SDL_Renderer *renderer);
# 2630 "include/SDL3/SDL_render.h"
extern void SDL_DestroyTexture(SDL_Texture *texture);
# 2646 "include/SDL3/SDL_render.h"
extern void SDL_DestroyRenderer(SDL_Renderer *renderer);
# 2679 "include/SDL3/SDL_render.h"
extern bool SDL_FlushRenderer(SDL_Renderer *renderer);
# 2697 "include/SDL3/SDL_render.h"
extern void * SDL_GetRenderMetalLayer(SDL_Renderer *renderer);
# 2720 "include/SDL3/SDL_render.h"
extern void * SDL_GetRenderMetalCommandEncoder(SDL_Renderer *renderer);
# 2751 "include/SDL3/SDL_render.h"
extern bool SDL_AddVulkanRenderSemaphores(SDL_Renderer *renderer, Uint32 wait_stage_mask, Sint64 wait_semaphore, Sint64 signal_semaphore);
# 2776 "include/SDL3/SDL_render.h"
extern bool SDL_SetRenderVSync(SDL_Renderer *renderer, int vsync);
# 2796 "include/SDL3/SDL_render.h"
extern bool SDL_GetRenderVSync(SDL_Renderer *renderer, int *vsync);
# 2848 "include/SDL3/SDL_render.h"
extern bool SDL_RenderDebugText(SDL_Renderer *renderer, float x, float y, const char *str);
# 2876 "include/SDL3/SDL_render.h"
extern bool SDL_RenderDebugTextFormat(SDL_Renderer *renderer, float x, float y, const char *fmt, ...) __attribute__ (( format( __printf__, 4, 4 +1 )));
# 2894 "include/SDL3/SDL_render.h"
extern bool SDL_SetDefaultTextureScaleMode(SDL_Renderer *renderer, SDL_ScaleMode scale_mode);
# 2912 "include/SDL3/SDL_render.h"
extern bool SDL_GetDefaultTextureScaleMode(SDL_Renderer *renderer, SDL_ScaleMode *scale_mode);
# 2921 "include/SDL3/SDL_render.h"
typedef struct SDL_GPURenderStateCreateInfo
{
    SDL_GPUShader *fragment_shader;

    Sint32 num_sampler_bindings;
    const SDL_GPUTextureSamplerBinding *sampler_bindings;

    Sint32 num_storage_textures;
    SDL_GPUTexture *const *storage_textures;

    Sint32 num_storage_buffers;
    SDL_GPUBuffer *const *storage_buffers;

    SDL_PropertiesID props;
} SDL_GPURenderStateCreateInfo;
# 2947 "include/SDL3/SDL_render.h"
typedef struct SDL_GPURenderState SDL_GPURenderState;
# 2966 "include/SDL3/SDL_render.h"
extern SDL_GPURenderState * SDL_CreateGPURenderState(SDL_Renderer *renderer, SDL_GPURenderStateCreateInfo *createinfo);
# 2986 "include/SDL3/SDL_render.h"
extern bool SDL_SetGPURenderStateFragmentUniforms(SDL_GPURenderState *state, Uint32 slot_index, const void *data, Uint32 length);
# 3004 "include/SDL3/SDL_render.h"
extern bool SDL_SetGPURenderState(SDL_Renderer *renderer, SDL_GPURenderState *state);
# 3018 "include/SDL3/SDL_render.h"
extern void SDL_DestroyGPURenderState(SDL_GPURenderState *state);





# 1 "include/SDL3/SDL_close_code.h" 1
# 3025 "include/SDL3/SDL_render.h" 2
# 77 "include/SDL3/SDL.h" 2


# 1 "include/SDL3/SDL_storage.h" 1
# 251 "include/SDL3/SDL_storage.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 252 "include/SDL3/SDL_storage.h" 2
# 274 "include/SDL3/SDL_storage.h"
typedef struct SDL_StorageInterface
{

    Uint32 version;


    bool ( *close)(void *userdata);


    bool ( *ready)(void *userdata);


    bool ( *enumerate)(void *userdata, const char *path, SDL_EnumerateDirectoryCallback callback, void *callback_userdata);


    bool ( *info)(void *userdata, const char *path, SDL_PathInfo *info);


    bool ( *read_file)(void *userdata, const char *path, void *destination, Uint64 length);


    bool ( *write_file)(void *userdata, const char *path, const void *source, Uint64 length);


    bool ( *mkdir)(void *userdata, const char *path);


    bool ( *remove)(void *userdata, const char *path);


    bool ( *rename)(void *userdata, const char *oldpath, const char *newpath);


    bool ( *copy)(void *userdata, const char *oldpath, const char *newpath);


    Uint64 ( *space_remaining)(void *userdata);
} SDL_StorageInterface;







static_assert((sizeof(void *) == 4 && sizeof(SDL_StorageInterface) == 48) || (sizeof(void *) == 8 && sizeof(SDL_StorageInterface) == 96), "(sizeof(void *) == 4 && sizeof(SDL_StorageInterface) == 48) || (sizeof(void *) == 8 && sizeof(SDL_StorageInterface) == 96)")

                                                                ;
# 332 "include/SDL3/SDL_storage.h"
typedef struct SDL_Storage SDL_Storage;
# 353 "include/SDL3/SDL_storage.h"
extern SDL_Storage * SDL_OpenTitleStorage(const char *override, SDL_PropertiesID props);
# 379 "include/SDL3/SDL_storage.h"
extern SDL_Storage * SDL_OpenUserStorage(const char *org, const char *app, SDL_PropertiesID props);
# 403 "include/SDL3/SDL_storage.h"
extern SDL_Storage * SDL_OpenFileStorage(const char *path);
# 432 "include/SDL3/SDL_storage.h"
extern SDL_Storage * SDL_OpenStorage(const SDL_StorageInterface *iface, void *userdata);
# 450 "include/SDL3/SDL_storage.h"
extern bool SDL_CloseStorage(SDL_Storage *storage);
# 465 "include/SDL3/SDL_storage.h"
extern bool SDL_StorageReady(SDL_Storage *storage);
# 481 "include/SDL3/SDL_storage.h"
extern bool SDL_GetStorageFileSize(SDL_Storage *storage, const char *path, Uint64 *length);
# 504 "include/SDL3/SDL_storage.h"
extern bool SDL_ReadStorageFile(SDL_Storage *storage, const char *path, void *destination, Uint64 length);
# 522 "include/SDL3/SDL_storage.h"
extern bool SDL_WriteStorageFile(SDL_Storage *storage, const char *path, const void *source, Uint64 length);
# 536 "include/SDL3/SDL_storage.h"
extern bool SDL_CreateStorageDirectory(SDL_Storage *storage, const char *path);
# 565 "include/SDL3/SDL_storage.h"
extern bool SDL_EnumerateStorageDirectory(SDL_Storage *storage, const char *path, SDL_EnumerateDirectoryCallback callback, void *userdata);
# 579 "include/SDL3/SDL_storage.h"
extern bool SDL_RemoveStoragePath(SDL_Storage *storage, const char *path);
# 594 "include/SDL3/SDL_storage.h"
extern bool SDL_RenameStoragePath(SDL_Storage *storage, const char *oldpath, const char *newpath);
# 609 "include/SDL3/SDL_storage.h"
extern bool SDL_CopyStorageFile(SDL_Storage *storage, const char *oldpath, const char *newpath);
# 625 "include/SDL3/SDL_storage.h"
extern bool SDL_GetStoragePathInfo(SDL_Storage *storage, const char *path, SDL_PathInfo *info);
# 638 "include/SDL3/SDL_storage.h"
extern Uint64 SDL_GetStorageSpaceRemaining(SDL_Storage *storage);
# 678 "include/SDL3/SDL_storage.h"
extern char ** SDL_GlobStorageDirectory(SDL_Storage *storage, const char *path, const char *pattern, SDL_GlobFlags flags, int *count);





# 1 "include/SDL3/SDL_close_code.h" 1
# 685 "include/SDL3/SDL_storage.h" 2
# 80 "include/SDL3/SDL.h" 2

# 1 "include/SDL3/SDL_system.h" 1
# 42 "include/SDL3/SDL_system.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 43 "include/SDL3/SDL_system.h" 2
# 54 "include/SDL3/SDL_system.h"
typedef struct tagMSG MSG;
# 78 "include/SDL3/SDL_system.h"
typedef bool ( *SDL_WindowsMessageHook)(void *userdata, MSG *msg);
# 94 "include/SDL3/SDL_system.h"
extern void SDL_SetWindowsMessageHook(SDL_WindowsMessageHook callback, void *userdata);
# 112 "include/SDL3/SDL_system.h"
extern int SDL_GetDirect3D9AdapterIndex(SDL_DisplayID displayID);
# 129 "include/SDL3/SDL_system.h"
extern bool SDL_GetDXGIOutputInfo(SDL_DisplayID displayID, int *adapterIndex, int *outputIndex);
# 139 "include/SDL3/SDL_system.h"
typedef union _XEvent XEvent;
# 161 "include/SDL3/SDL_system.h"
typedef bool ( *SDL_X11EventHook)(void *userdata, XEvent *xevent);
# 174 "include/SDL3/SDL_system.h"
extern void SDL_SetX11EventHook(SDL_X11EventHook callback, void *userdata);
# 610 "include/SDL3/SDL_system.h"
extern bool SDL_IsTablet(void);
# 621 "include/SDL3/SDL_system.h"
extern bool SDL_IsTV(void);






typedef enum SDL_Sandbox
{
    SDL_SANDBOX_NONE = 0,
    SDL_SANDBOX_UNKNOWN_CONTAINER,
    SDL_SANDBOX_FLATPAK,
    SDL_SANDBOX_SNAP,
    SDL_SANDBOX_MACOS
} SDL_Sandbox;
# 645 "include/SDL3/SDL_system.h"
extern SDL_Sandbox SDL_GetSandbox(void);
# 665 "include/SDL3/SDL_system.h"
extern void SDL_OnApplicationWillTerminate(void);
# 682 "include/SDL3/SDL_system.h"
extern void SDL_OnApplicationDidReceiveMemoryWarning(void);
# 699 "include/SDL3/SDL_system.h"
extern void SDL_OnApplicationWillEnterBackground(void);
# 716 "include/SDL3/SDL_system.h"
extern void SDL_OnApplicationDidEnterBackground(void);
# 733 "include/SDL3/SDL_system.h"
extern void SDL_OnApplicationWillEnterForeground(void);
# 750 "include/SDL3/SDL_system.h"
extern void SDL_OnApplicationDidEnterForeground(void);
# 816 "include/SDL3/SDL_system.h"
# 1 "include/SDL3/SDL_close_code.h" 1
# 817 "include/SDL3/SDL_system.h" 2
# 82 "include/SDL3/SDL.h" 2

# 1 "include/SDL3/SDL_time.h" 1
# 42 "include/SDL3/SDL_time.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 43 "include/SDL3/SDL_time.h" 2
# 54 "include/SDL3/SDL_time.h"
typedef struct SDL_DateTime
{
    int year;
    int month;
    int day;
    int hour;
    int minute;
    int second;
    int nanosecond;
    int day_of_week;
    int utc_offset;
} SDL_DateTime;
# 74 "include/SDL3/SDL_time.h"
typedef enum SDL_DateFormat
{
    SDL_DATE_FORMAT_YYYYMMDD = 0,
    SDL_DATE_FORMAT_DDMMYYYY = 1,
    SDL_DATE_FORMAT_MMDDYYYY = 2
} SDL_DateFormat;
# 88 "include/SDL3/SDL_time.h"
typedef enum SDL_TimeFormat
{
    SDL_TIME_FORMAT_24HR = 0,
    SDL_TIME_FORMAT_12HR = 1
} SDL_TimeFormat;
# 111 "include/SDL3/SDL_time.h"
extern bool SDL_GetDateTimeLocalePreferences(SDL_DateFormat *dateFormat, SDL_TimeFormat *timeFormat);
# 123 "include/SDL3/SDL_time.h"
extern bool SDL_GetCurrentTime(SDL_Time *ticks);
# 139 "include/SDL3/SDL_time.h"
extern bool SDL_TimeToDateTime(SDL_Time ticks, SDL_DateTime *dt, bool localTime);
# 154 "include/SDL3/SDL_time.h"
extern bool SDL_DateTimeToTime(const SDL_DateTime *dt, SDL_Time *ticks);
# 170 "include/SDL3/SDL_time.h"
extern void SDL_TimeToWindows(SDL_Time ticks, Uint32 *dwLowDateTime, Uint32 *dwHighDateTime);
# 185 "include/SDL3/SDL_time.h"
extern SDL_Time SDL_TimeFromWindows(Uint32 dwLowDateTime, Uint32 dwHighDateTime);
# 197 "include/SDL3/SDL_time.h"
extern int SDL_GetDaysInMonth(int year, int month);
# 210 "include/SDL3/SDL_time.h"
extern int SDL_GetDayOfYear(int year, int month, int day);
# 223 "include/SDL3/SDL_time.h"
extern int SDL_GetDayOfWeek(int year, int month, int day);





# 1 "include/SDL3/SDL_close_code.h" 1
# 230 "include/SDL3/SDL_time.h" 2
# 84 "include/SDL3/SDL.h" 2
# 1 "include/SDL3/SDL_timer.h" 1
# 47 "include/SDL3/SDL_timer.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 48 "include/SDL3/SDL_timer.h" 2
# 201 "include/SDL3/SDL_timer.h"
extern Uint64 SDL_GetTicks(void);
# 213 "include/SDL3/SDL_timer.h"
extern Uint64 SDL_GetTicksNS(void);
# 232 "include/SDL3/SDL_timer.h"
extern Uint64 SDL_GetPerformanceCounter(void);
# 245 "include/SDL3/SDL_timer.h"
extern Uint64 SDL_GetPerformanceFrequency(void);
# 263 "include/SDL3/SDL_timer.h"
extern void SDL_Delay(Uint32 ms);
# 281 "include/SDL3/SDL_timer.h"
extern void SDL_DelayNS(Uint64 ns);
# 299 "include/SDL3/SDL_timer.h"
extern void SDL_DelayPrecise(Uint64 ns);






typedef Uint32 SDL_TimerID;
# 332 "include/SDL3/SDL_timer.h"
typedef Uint32 ( *SDL_TimerCallback)(void *userdata, SDL_TimerID timerID, Uint32 interval);
# 368 "include/SDL3/SDL_timer.h"
extern SDL_TimerID SDL_AddTimer(Uint32 interval, SDL_TimerCallback callback, void *userdata);
# 394 "include/SDL3/SDL_timer.h"
typedef Uint64 ( *SDL_NSTimerCallback)(void *userdata, SDL_TimerID timerID, Uint64 interval);
# 430 "include/SDL3/SDL_timer.h"
extern SDL_TimerID SDL_AddTimerNS(Uint64 interval, SDL_NSTimerCallback callback, void *userdata);
# 445 "include/SDL3/SDL_timer.h"
extern bool SDL_RemoveTimer(SDL_TimerID id);






# 1 "include/SDL3/SDL_close_code.h" 1
# 453 "include/SDL3/SDL_timer.h" 2
# 85 "include/SDL3/SDL.h" 2
# 1 "include/SDL3/SDL_tray.h" 1
# 40 "include/SDL3/SDL_tray.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 41 "include/SDL3/SDL_tray.h" 2
# 51 "include/SDL3/SDL_tray.h"
typedef struct SDL_Tray SDL_Tray;






typedef struct SDL_TrayMenu SDL_TrayMenu;






typedef struct SDL_TrayEntry SDL_TrayEntry;
# 78 "include/SDL3/SDL_tray.h"
typedef Uint32 SDL_TrayEntryFlags;
# 97 "include/SDL3/SDL_tray.h"
typedef void ( *SDL_TrayCallback)(void *userdata, SDL_TrayEntry *entry);
# 121 "include/SDL3/SDL_tray.h"
extern SDL_Tray * SDL_CreateTray(SDL_Surface *icon, const char *tooltip);
# 136 "include/SDL3/SDL_tray.h"
extern void SDL_SetTrayIcon(SDL_Tray *tray, SDL_Surface *icon);
# 151 "include/SDL3/SDL_tray.h"
extern void SDL_SetTrayTooltip(SDL_Tray *tray, const char *tooltip);
# 175 "include/SDL3/SDL_tray.h"
extern SDL_TrayMenu * SDL_CreateTrayMenu(SDL_Tray *tray);
# 199 "include/SDL3/SDL_tray.h"
extern SDL_TrayMenu * SDL_CreateTraySubmenu(SDL_TrayEntry *entry);
# 223 "include/SDL3/SDL_tray.h"
extern SDL_TrayMenu * SDL_GetTrayMenu(SDL_Tray *tray);
# 247 "include/SDL3/SDL_tray.h"
extern SDL_TrayMenu * SDL_GetTraySubmenu(SDL_TrayEntry *entry);
# 267 "include/SDL3/SDL_tray.h"
extern const SDL_TrayEntry ** SDL_GetTrayEntries(SDL_TrayMenu *menu, int *count);
# 282 "include/SDL3/SDL_tray.h"
extern void SDL_RemoveTrayEntry(SDL_TrayEntry *entry);
# 310 "include/SDL3/SDL_tray.h"
extern SDL_TrayEntry * SDL_InsertTrayEntryAt(SDL_TrayMenu *menu, int pos, const char *label, SDL_TrayEntryFlags flags);
# 332 "include/SDL3/SDL_tray.h"
extern void SDL_SetTrayEntryLabel(SDL_TrayEntry *entry, const char *label);
# 351 "include/SDL3/SDL_tray.h"
extern const char * SDL_GetTrayEntryLabel(SDL_TrayEntry *entry);
# 370 "include/SDL3/SDL_tray.h"
extern void SDL_SetTrayEntryChecked(SDL_TrayEntry *entry, bool checked);
# 389 "include/SDL3/SDL_tray.h"
extern bool SDL_GetTrayEntryChecked(SDL_TrayEntry *entry);
# 406 "include/SDL3/SDL_tray.h"
extern void SDL_SetTrayEntryEnabled(SDL_TrayEntry *entry, bool enabled);
# 423 "include/SDL3/SDL_tray.h"
extern bool SDL_GetTrayEntryEnabled(SDL_TrayEntry *entry);
# 441 "include/SDL3/SDL_tray.h"
extern void SDL_SetTrayEntryCallback(SDL_TrayEntry *entry, SDL_TrayCallback callback, void *userdata);
# 453 "include/SDL3/SDL_tray.h"
extern void SDL_ClickTrayEntry(SDL_TrayEntry *entry);
# 469 "include/SDL3/SDL_tray.h"
extern void SDL_DestroyTray(SDL_Tray *tray);
# 484 "include/SDL3/SDL_tray.h"
extern SDL_TrayMenu * SDL_GetTrayEntryParent(SDL_TrayEntry *entry);
# 504 "include/SDL3/SDL_tray.h"
extern SDL_TrayEntry * SDL_GetTrayMenuParentEntry(SDL_TrayMenu *menu);
# 524 "include/SDL3/SDL_tray.h"
extern SDL_Tray * SDL_GetTrayMenuParentTray(SDL_TrayMenu *menu);
# 536 "include/SDL3/SDL_tray.h"
extern void SDL_UpdateTrays(void);





# 1 "include/SDL3/SDL_close_code.h" 1
# 543 "include/SDL3/SDL_tray.h" 2
# 86 "include/SDL3/SDL.h" 2

# 1 "include/SDL3/SDL_version.h" 1
# 34 "include/SDL3/SDL_version.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 35 "include/SDL3/SDL_version.h" 2
# 148 "include/SDL3/SDL_version.h"
extern int SDL_GetVersion(void);
# 175 "include/SDL3/SDL_version.h"
extern const char * SDL_GetRevision(void);






# 1 "include/SDL3/SDL_close_code.h" 1
# 183 "include/SDL3/SDL_version.h" 2
# 88 "include/SDL3/SDL.h" 2

# 1 "include/SDL3/SDL_oldnames.h" 1
# 90 "include/SDL3/SDL.h" 2
# 123 "include/SDL3_mixer/SDL_mixer.h" 2
# 1 "include/SDL3/SDL_begin_code.h" 1
# 124 "include/SDL3_mixer/SDL_mixer.h" 2
# 145 "include/SDL3_mixer/SDL_mixer.h"
typedef struct MIX_Mixer MIX_Mixer;
# 162 "include/SDL3_mixer/SDL_mixer.h"
typedef struct MIX_Audio MIX_Audio;
# 176 "include/SDL3_mixer/SDL_mixer.h"
typedef struct MIX_Track MIX_Track;
# 193 "include/SDL3_mixer/SDL_mixer.h"
typedef struct MIX_Group MIX_Group;
# 257 "include/SDL3_mixer/SDL_mixer.h"
extern int MIX_Version(void);
# 277 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_Init(void);
# 313 "include/SDL3_mixer/SDL_mixer.h"
extern void MIX_Quit(void);
# 335 "include/SDL3_mixer/SDL_mixer.h"
extern int MIX_GetNumAudioDecoders(void);
# 366 "include/SDL3_mixer/SDL_mixer.h"
extern const char * MIX_GetAudioDecoder(int index);
# 413 "include/SDL3_mixer/SDL_mixer.h"
extern MIX_Mixer * MIX_CreateMixerDevice(SDL_AudioDeviceID devid, const SDL_AudioSpec *spec);
# 442 "include/SDL3_mixer/SDL_mixer.h"
extern MIX_Mixer * MIX_CreateMixer(const SDL_AudioSpec *spec);
# 464 "include/SDL3_mixer/SDL_mixer.h"
extern void MIX_DestroyMixer(MIX_Mixer *mixer);
# 484 "include/SDL3_mixer/SDL_mixer.h"
extern SDL_PropertiesID MIX_GetMixerProperties(MIX_Mixer *mixer);
# 518 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_GetMixerFormat(MIX_Mixer *mixer, SDL_AudioSpec *spec);
# 577 "include/SDL3_mixer/SDL_mixer.h"
extern MIX_Audio * MIX_LoadAudio_IO(MIX_Mixer *mixer, SDL_IOStream *io, bool predecode, bool closeio);
# 607 "include/SDL3_mixer/SDL_mixer.h"
extern MIX_Audio * MIX_LoadAudio(MIX_Mixer *mixer, const char *path, bool predecode);
# 656 "include/SDL3_mixer/SDL_mixer.h"
extern MIX_Audio * MIX_LoadAudioWithProperties(SDL_PropertiesID props);
# 698 "include/SDL3_mixer/SDL_mixer.h"
extern MIX_Audio * MIX_LoadRawAudio_IO(MIX_Mixer *mixer, SDL_IOStream *io, const SDL_AudioSpec *spec, bool closeio);
# 734 "include/SDL3_mixer/SDL_mixer.h"
extern MIX_Audio * MIX_LoadRawAudio(MIX_Mixer *mixer, const void *data, size_t datalen, const SDL_AudioSpec *spec);
# 776 "include/SDL3_mixer/SDL_mixer.h"
extern MIX_Audio * MIX_LoadRawAudioNoCopy(MIX_Mixer *mixer, const void *data, size_t datalen, const SDL_AudioSpec *spec, bool free_when_done);
# 810 "include/SDL3_mixer/SDL_mixer.h"
extern MIX_Audio * MIX_CreateSineWaveAudio(MIX_Mixer *mixer, int hz, float amplitude);
# 858 "include/SDL3_mixer/SDL_mixer.h"
extern SDL_PropertiesID MIX_GetAudioProperties(MIX_Audio *audio);
# 903 "include/SDL3_mixer/SDL_mixer.h"
extern Sint64 MIX_GetAudioDuration(MIX_Audio *audio);
# 926 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_GetAudioFormat(MIX_Audio *audio, SDL_AudioSpec *spec);
# 948 "include/SDL3_mixer/SDL_mixer.h"
extern void MIX_DestroyAudio(MIX_Audio *audio);
# 974 "include/SDL3_mixer/SDL_mixer.h"
extern MIX_Track * MIX_CreateTrack(MIX_Mixer *mixer);
# 994 "include/SDL3_mixer/SDL_mixer.h"
extern void MIX_DestroyTrack(MIX_Track *track);
# 1013 "include/SDL3_mixer/SDL_mixer.h"
extern SDL_PropertiesID MIX_GetTrackProperties(MIX_Track *track);
# 1028 "include/SDL3_mixer/SDL_mixer.h"
extern MIX_Mixer * MIX_GetTrackMixer(MIX_Track *track);
# 1061 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_SetTrackAudio(MIX_Track *track, MIX_Audio *audio);
# 1103 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_SetTrackAudioStream(MIX_Track *track, SDL_AudioStream *stream);
# 1153 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_SetTrackIOStream(MIX_Track *track, SDL_IOStream *io, bool closeio);
# 1203 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_SetTrackRawIOStream(MIX_Track *track, SDL_IOStream *io, const SDL_AudioSpec *spec, bool closeio);
# 1233 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_TagTrack(MIX_Track *track, const char *tag);
# 1258 "include/SDL3_mixer/SDL_mixer.h"
extern void MIX_UntagTrack(MIX_Track *track, const char *tag);
# 1276 "include/SDL3_mixer/SDL_mixer.h"
extern char ** MIX_GetTrackTags(MIX_Track *track, int *count);
# 1295 "include/SDL3_mixer/SDL_mixer.h"
extern MIX_Track ** MIX_GetTaggedTracks(MIX_Mixer *mixer, const char *tag, int *count);
# 1332 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_SetTrackPlaybackPosition(MIX_Track *track, Sint64 frames);
# 1359 "include/SDL3_mixer/SDL_mixer.h"
extern Sint64 MIX_GetTrackPlaybackPosition(MIX_Track *track);
# 1383 "include/SDL3_mixer/SDL_mixer.h"
extern Sint64 MIX_GetTrackFadeFrames(MIX_Track *track);
# 1403 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_TrackLooping(MIX_Track *track);
# 1434 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_SetTrackLoops(MIX_Track *track, int num_loops);
# 1457 "include/SDL3_mixer/SDL_mixer.h"
extern MIX_Audio * MIX_GetTrackAudio(MIX_Track *track);
# 1480 "include/SDL3_mixer/SDL_mixer.h"
extern SDL_AudioStream * MIX_GetTrackAudioStream(MIX_Track *track);
# 1507 "include/SDL3_mixer/SDL_mixer.h"
extern Sint64 MIX_GetTrackRemaining(MIX_Track *track);
# 1532 "include/SDL3_mixer/SDL_mixer.h"
extern Sint64 MIX_TrackMSToFrames(MIX_Track *track, Sint64 ms);
# 1560 "include/SDL3_mixer/SDL_mixer.h"
extern Sint64 MIX_TrackFramesToMS(MIX_Track *track, Sint64 frames);
# 1581 "include/SDL3_mixer/SDL_mixer.h"
extern Sint64 MIX_AudioMSToFrames(MIX_Audio *audio, Sint64 ms);
# 1605 "include/SDL3_mixer/SDL_mixer.h"
extern Sint64 MIX_AudioFramesToMS(MIX_Audio *audio, Sint64 frames);
# 1623 "include/SDL3_mixer/SDL_mixer.h"
extern Sint64 MIX_MSToFrames(int sample_rate, Sint64 ms);
# 1645 "include/SDL3_mixer/SDL_mixer.h"
extern Sint64 MIX_FramesToMS(int sample_rate, Sint64 frames);
# 1742 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_PlayTrack(MIX_Track *track, SDL_PropertiesID options);
# 1792 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_PlayTag(MIX_Mixer *mixer, const char *tag, SDL_PropertiesID options);
# 1824 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_PlayAudio(MIX_Mixer *mixer, MIX_Audio *audio);
# 1858 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_StopTrack(MIX_Track *track, Sint64 fade_out_frames);
# 1889 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_StopAllTracks(MIX_Mixer *mixer, Sint64 fade_out_ms);
# 1922 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_StopTag(MIX_Mixer *mixer, const char *tag, Sint64 fade_out_ms);
# 1946 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_PauseTrack(MIX_Track *track);
# 1968 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_PauseAllTracks(MIX_Mixer *mixer);
# 1996 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_PauseTag(MIX_Mixer *mixer, const char *tag);
# 2020 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_ResumeTrack(MIX_Track *track);
# 2042 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_ResumeAllTracks(MIX_Mixer *mixer);
# 2070 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_ResumeTag(MIX_Mixer *mixer, const char *tag);
# 2095 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_TrackPlaying(MIX_Track *track);
# 2121 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_TrackPaused(MIX_Track *track);
# 2152 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_SetMasterGain(MIX_Mixer *mixer, float gain);
# 2170 "include/SDL3_mixer/SDL_mixer.h"
extern float MIX_GetMasterGain(MIX_Mixer *mixer);
# 2198 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_SetTrackGain(MIX_Track *track, float gain);
# 2216 "include/SDL3_mixer/SDL_mixer.h"
extern float MIX_GetTrackGain(MIX_Track *track);
# 2253 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_SetTagGain(MIX_Mixer *mixer, const char *tag, float gain);
# 2282 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_SetTrackFrequencyRatio(MIX_Track *track, float ratio);
# 2309 "include/SDL3_mixer/SDL_mixer.h"
extern float MIX_GetTrackFrequencyRatio(MIX_Track *track);
# 2351 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_SetTrackOutputChannelMap(MIX_Track *track, const int *chmap, int count);
# 2372 "include/SDL3_mixer/SDL_mixer.h"
typedef struct MIX_StereoGains
{
    float left;
    float right;
} MIX_StereoGains;
# 2409 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_SetTrackStereo(MIX_Track *track, const MIX_StereoGains *gains);
# 2422 "include/SDL3_mixer/SDL_mixer.h"
typedef struct MIX_Point3D
{
    float x;
    float y;
    float z;
} MIX_Point3D;
# 2473 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_SetTrack3DPosition(MIX_Track *track, const MIX_Point3D *position);
# 2492 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_GetTrack3DPosition(MIX_Track *track, MIX_Point3D *position);
# 2527 "include/SDL3_mixer/SDL_mixer.h"
extern MIX_Group * MIX_CreateGroup(MIX_Mixer *mixer);
# 2543 "include/SDL3_mixer/SDL_mixer.h"
extern void MIX_DestroyGroup(MIX_Group *group);
# 2562 "include/SDL3_mixer/SDL_mixer.h"
extern SDL_PropertiesID MIX_GetGroupProperties(MIX_Group *group);
# 2577 "include/SDL3_mixer/SDL_mixer.h"
extern MIX_Mixer * MIX_GetGroupMixer(MIX_Group *group);
# 2603 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_SetTrackGroup(MIX_Track *track, MIX_Group *group);
# 2630 "include/SDL3_mixer/SDL_mixer.h"
typedef void ( *MIX_TrackStoppedCallback)(void *userdata, MIX_Track *track);
# 2662 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_SetTrackStoppedCallback(MIX_Track *track, MIX_TrackStoppedCallback cb, void *userdata);
# 2700 "include/SDL3_mixer/SDL_mixer.h"
typedef void ( *MIX_TrackMixCallback)(void *userdata, MIX_Track *track, const SDL_AudioSpec *spec, float *pcm, int samples);
# 2732 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_SetTrackRawCallback(MIX_Track *track, MIX_TrackMixCallback cb, void *userdata);
# 2767 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_SetTrackCookedCallback(MIX_Track *track, MIX_TrackMixCallback cb, void *userdata);
# 2801 "include/SDL3_mixer/SDL_mixer.h"
typedef void ( *MIX_GroupMixCallback)(void *userdata, MIX_Group *group, const SDL_AudioSpec *spec, float *pcm, int samples);
# 2830 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_SetGroupPostMixCallback(MIX_Group *group, MIX_GroupMixCallback cb, void *userdata);
# 2866 "include/SDL3_mixer/SDL_mixer.h"
typedef void ( *MIX_PostMixCallback)(void *userdata, MIX_Mixer *mixer, const SDL_AudioSpec *spec, float *pcm, int samples);
# 2892 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_SetPostMixCallback(MIX_Mixer *mixer, MIX_PostMixCallback cb, void *userdata);
# 2940 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_Generate(MIX_Mixer *mixer, void *buffer, int buflen);
# 2958 "include/SDL3_mixer/SDL_mixer.h"
typedef struct MIX_AudioDecoder MIX_AudioDecoder;
# 2995 "include/SDL3_mixer/SDL_mixer.h"
extern MIX_AudioDecoder * MIX_CreateAudioDecoder(const char *path, SDL_PropertiesID props);
# 3033 "include/SDL3_mixer/SDL_mixer.h"
extern MIX_AudioDecoder * MIX_CreateAudioDecoder_IO(SDL_IOStream *io, bool closeio, SDL_PropertiesID props);
# 3046 "include/SDL3_mixer/SDL_mixer.h"
extern void MIX_DestroyAudioDecoder(MIX_AudioDecoder *audiodecoder);
# 3071 "include/SDL3_mixer/SDL_mixer.h"
extern SDL_PropertiesID MIX_GetAudioDecoderProperties(MIX_AudioDecoder *audiodecoder);
# 3090 "include/SDL3_mixer/SDL_mixer.h"
extern bool MIX_GetAudioDecoderFormat(MIX_AudioDecoder *audiodecoder, SDL_AudioSpec *spec);
# 3114 "include/SDL3_mixer/SDL_mixer.h"
extern int MIX_DecodeAudio(MIX_AudioDecoder *audiodecoder, void *buffer, int buflen, const SDL_AudioSpec *spec);





# 1 "include/SDL3/SDL_close_code.h" 1
# 3121 "include/SDL3_mixer/SDL_mixer.h" 2
# 18 "include/common_libs.h" 2
# 1 "include/SDL3/SDL.h" 1
# 19 "include/common_libs.h" 2
# 1 "include/SDL3_image/SDL_image.h" 1
# 36 "include/SDL3_image/SDL_image.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 37 "include/SDL3_image/SDL_image.h" 2
# 71 "include/SDL3_image/SDL_image.h"
extern int IMG_Version(void);
# 133 "include/SDL3_image/SDL_image.h"
extern SDL_Surface * IMG_LoadTyped_IO(SDL_IOStream *src, bool closeio, const char *type);
# 178 "include/SDL3_image/SDL_image.h"
extern SDL_Surface * IMG_Load(const char *file);
# 232 "include/SDL3_image/SDL_image.h"
extern SDL_Surface * IMG_Load_IO(SDL_IOStream *src, bool closeio);
# 267 "include/SDL3_image/SDL_image.h"
extern SDL_Texture * IMG_LoadTexture(SDL_Renderer *renderer, const char *file);
# 314 "include/SDL3_image/SDL_image.h"
extern SDL_Texture * IMG_LoadTexture_IO(SDL_Renderer *renderer, SDL_IOStream *src, bool closeio);
# 369 "include/SDL3_image/SDL_image.h"
extern SDL_Texture * IMG_LoadTextureTyped_IO(SDL_Renderer *renderer, SDL_IOStream *src, bool closeio, const char *type);
# 413 "include/SDL3_image/SDL_image.h"
extern bool IMG_isAVIF(SDL_IOStream *src);
# 456 "include/SDL3_image/SDL_image.h"
extern bool IMG_isICO(SDL_IOStream *src);
# 499 "include/SDL3_image/SDL_image.h"
extern bool IMG_isCUR(SDL_IOStream *src);
# 542 "include/SDL3_image/SDL_image.h"
extern bool IMG_isBMP(SDL_IOStream *src);
# 585 "include/SDL3_image/SDL_image.h"
extern bool IMG_isGIF(SDL_IOStream *src);
# 628 "include/SDL3_image/SDL_image.h"
extern bool IMG_isJPG(SDL_IOStream *src);
# 671 "include/SDL3_image/SDL_image.h"
extern bool IMG_isJXL(SDL_IOStream *src);
# 714 "include/SDL3_image/SDL_image.h"
extern bool IMG_isLBM(SDL_IOStream *src);
# 757 "include/SDL3_image/SDL_image.h"
extern bool IMG_isPCX(SDL_IOStream *src);
# 800 "include/SDL3_image/SDL_image.h"
extern bool IMG_isPNG(SDL_IOStream *src);
# 843 "include/SDL3_image/SDL_image.h"
extern bool IMG_isPNM(SDL_IOStream *src);
# 886 "include/SDL3_image/SDL_image.h"
extern bool IMG_isSVG(SDL_IOStream *src);
# 929 "include/SDL3_image/SDL_image.h"
extern bool IMG_isQOI(SDL_IOStream *src);
# 972 "include/SDL3_image/SDL_image.h"
extern bool IMG_isTIF(SDL_IOStream *src);
# 1015 "include/SDL3_image/SDL_image.h"
extern bool IMG_isXCF(SDL_IOStream *src);
# 1058 "include/SDL3_image/SDL_image.h"
extern bool IMG_isXPM(SDL_IOStream *src);
# 1101 "include/SDL3_image/SDL_image.h"
extern bool IMG_isXV(SDL_IOStream *src);
# 1144 "include/SDL3_image/SDL_image.h"
extern bool IMG_isWEBP(SDL_IOStream *src);
# 1178 "include/SDL3_image/SDL_image.h"
extern SDL_Surface * IMG_LoadAVIF_IO(SDL_IOStream *src);
# 1212 "include/SDL3_image/SDL_image.h"
extern SDL_Surface * IMG_LoadICO_IO(SDL_IOStream *src);
# 1246 "include/SDL3_image/SDL_image.h"
extern SDL_Surface * IMG_LoadCUR_IO(SDL_IOStream *src);
# 1280 "include/SDL3_image/SDL_image.h"
extern SDL_Surface * IMG_LoadBMP_IO(SDL_IOStream *src);
# 1314 "include/SDL3_image/SDL_image.h"
extern SDL_Surface * IMG_LoadGIF_IO(SDL_IOStream *src);
# 1348 "include/SDL3_image/SDL_image.h"
extern SDL_Surface * IMG_LoadJPG_IO(SDL_IOStream *src);
# 1382 "include/SDL3_image/SDL_image.h"
extern SDL_Surface * IMG_LoadJXL_IO(SDL_IOStream *src);
# 1416 "include/SDL3_image/SDL_image.h"
extern SDL_Surface * IMG_LoadLBM_IO(SDL_IOStream *src);
# 1450 "include/SDL3_image/SDL_image.h"
extern SDL_Surface * IMG_LoadPCX_IO(SDL_IOStream *src);
# 1484 "include/SDL3_image/SDL_image.h"
extern SDL_Surface * IMG_LoadPNG_IO(SDL_IOStream *src);
# 1518 "include/SDL3_image/SDL_image.h"
extern SDL_Surface * IMG_LoadPNM_IO(SDL_IOStream *src);
# 1552 "include/SDL3_image/SDL_image.h"
extern SDL_Surface * IMG_LoadSVG_IO(SDL_IOStream *src);
# 1586 "include/SDL3_image/SDL_image.h"
extern SDL_Surface * IMG_LoadQOI_IO(SDL_IOStream *src);
# 1620 "include/SDL3_image/SDL_image.h"
extern SDL_Surface * IMG_LoadTGA_IO(SDL_IOStream *src);
# 1654 "include/SDL3_image/SDL_image.h"
extern SDL_Surface * IMG_LoadTIF_IO(SDL_IOStream *src);
# 1688 "include/SDL3_image/SDL_image.h"
extern SDL_Surface * IMG_LoadXCF_IO(SDL_IOStream *src);
# 1722 "include/SDL3_image/SDL_image.h"
extern SDL_Surface * IMG_LoadXPM_IO(SDL_IOStream *src);
# 1756 "include/SDL3_image/SDL_image.h"
extern SDL_Surface * IMG_LoadXV_IO(SDL_IOStream *src);
# 1790 "include/SDL3_image/SDL_image.h"
extern SDL_Surface * IMG_LoadWEBP_IO(SDL_IOStream *src);
# 1811 "include/SDL3_image/SDL_image.h"
extern SDL_Surface * IMG_LoadSizedSVG_IO(SDL_IOStream *src, int width, int height);
# 1830 "include/SDL3_image/SDL_image.h"
extern SDL_Surface * IMG_ReadXPMFromArray(char **xpm);
# 1849 "include/SDL3_image/SDL_image.h"
extern SDL_Surface * IMG_ReadXPMFromArrayToRGB888(char **xpm);
# 1867 "include/SDL3_image/SDL_image.h"
extern bool IMG_SaveAVIF(SDL_Surface *surface, const char *file, int quality);
# 1890 "include/SDL3_image/SDL_image.h"
extern bool IMG_SaveAVIF_IO(SDL_Surface *surface, SDL_IOStream *dst, bool closeio, int quality);
# 1906 "include/SDL3_image/SDL_image.h"
extern bool IMG_SavePNG(SDL_Surface *surface, const char *file);
# 1927 "include/SDL3_image/SDL_image.h"
extern bool IMG_SavePNG_IO(SDL_Surface *surface, SDL_IOStream *dst, bool closeio);
# 1945 "include/SDL3_image/SDL_image.h"
extern bool IMG_SaveJPG(SDL_Surface *surface, const char *file, int quality);
# 1968 "include/SDL3_image/SDL_image.h"
extern bool IMG_SaveJPG_IO(SDL_Surface *surface, SDL_IOStream *dst, bool closeio, int quality);






typedef struct IMG_Animation
{
 int w, h;
 int count;
 SDL_Surface **frames;
 int *delays;
} IMG_Animation;
# 1996 "include/SDL3_image/SDL_image.h"
extern IMG_Animation * IMG_LoadAnimation(const char *file);
# 2017 "include/SDL3_image/SDL_image.h"
extern IMG_Animation * IMG_LoadAnimation_IO(SDL_IOStream *src, bool closeio);
# 2047 "include/SDL3_image/SDL_image.h"
extern IMG_Animation * IMG_LoadAnimationTyped_IO(SDL_IOStream *src, bool closeio, const char *type);
# 2062 "include/SDL3_image/SDL_image.h"
extern void IMG_FreeAnimation(IMG_Animation *anim);
# 2082 "include/SDL3_image/SDL_image.h"
extern IMG_Animation * IMG_LoadGIFAnimation_IO(SDL_IOStream *src);
# 2102 "include/SDL3_image/SDL_image.h"
extern IMG_Animation * IMG_LoadWEBPAnimation_IO(SDL_IOStream *src);





# 1 "include/SDL3/SDL_close_code.h" 1
# 2109 "include/SDL3_image/SDL_image.h" 2
# 20 "include/common_libs.h" 2
# 1 "include/SDL3_ttf/SDL_ttf.h" 1
# 37 "include/SDL3_ttf/SDL_ttf.h"
# 1 "include/SDL3/SDL_begin_code.h" 1
# 38 "include/SDL3_ttf/SDL_ttf.h" 2
# 74 "include/SDL3_ttf/SDL_ttf.h"
extern int TTF_Version(void);
# 91 "include/SDL3_ttf/SDL_ttf.h"
extern void TTF_GetFreeTypeVersion(int *major, int *minor, int *patch);
# 106 "include/SDL3_ttf/SDL_ttf.h"
extern void TTF_GetHarfBuzzVersion(int *major, int *minor, int *patch);






typedef struct TTF_Font TTF_Font;
# 131 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_Init(void);
# 153 "include/SDL3_ttf/SDL_ttf.h"
extern TTF_Font * TTF_OpenFont(const char *file, float ptsize);
# 180 "include/SDL3_ttf/SDL_ttf.h"
extern TTF_Font * TTF_OpenFontIO(SDL_IOStream *src, bool closeio, float ptsize);
# 225 "include/SDL3_ttf/SDL_ttf.h"
extern TTF_Font * TTF_OpenFontWithProperties(SDL_PropertiesID props);
# 256 "include/SDL3_ttf/SDL_ttf.h"
extern TTF_Font * TTF_CopyFont(TTF_Font *existing_font);
# 280 "include/SDL3_ttf/SDL_ttf.h"
extern SDL_PropertiesID TTF_GetFontProperties(TTF_Font *font);
# 301 "include/SDL3_ttf/SDL_ttf.h"
extern Uint32 TTF_GetFontGeneration(TTF_Font *font);
# 326 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_AddFallbackFont(TTF_Font *font, TTF_Font *fallback);
# 344 "include/SDL3_ttf/SDL_ttf.h"
extern void TTF_RemoveFallbackFont(TTF_Font *font, TTF_Font *fallback);
# 361 "include/SDL3_ttf/SDL_ttf.h"
extern void TTF_ClearFallbackFonts(TTF_Font *font);
# 381 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_SetFontSize(TTF_Font *font, float ptsize);
# 404 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_SetFontSizeDPI(TTF_Font *font, float ptsize, int hdpi, int vdpi);
# 421 "include/SDL3_ttf/SDL_ttf.h"
extern float TTF_GetFontSize(TTF_Font *font);
# 439 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_GetFontDPI(TTF_Font *font, int *hdpi, int *vdpi);
# 453 "include/SDL3_ttf/SDL_ttf.h"
typedef Uint32 TTF_FontStyleFlags;
# 485 "include/SDL3_ttf/SDL_ttf.h"
extern void TTF_SetFontStyle(TTF_Font *font, TTF_FontStyleFlags style);
# 507 "include/SDL3_ttf/SDL_ttf.h"
extern TTF_FontStyleFlags TTF_GetFontStyle(const TTF_Font *font);
# 531 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_SetFontOutline(TTF_Font *font, int outline);
# 545 "include/SDL3_ttf/SDL_ttf.h"
extern int TTF_GetFontOutline(const TTF_Font *font);
# 559 "include/SDL3_ttf/SDL_ttf.h"
typedef enum TTF_HintingFlags
{
    TTF_HINTING_INVALID = -1,
    TTF_HINTING_NORMAL,
    TTF_HINTING_LIGHT,
    TTF_HINTING_MONO,
    TTF_HINTING_NONE,
    TTF_HINTING_LIGHT_SUBPIXEL
} TTF_HintingFlags;
# 593 "include/SDL3_ttf/SDL_ttf.h"
extern void TTF_SetFontHinting(TTF_Font *font, TTF_HintingFlags hinting);
# 605 "include/SDL3_ttf/SDL_ttf.h"
extern int TTF_GetNumFontFaces(const TTF_Font *font);
# 628 "include/SDL3_ttf/SDL_ttf.h"
extern TTF_HintingFlags TTF_GetFontHinting(const TTF_Font *font);
# 654 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_SetFontSDF(TTF_Font *font, bool enabled);
# 668 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_GetFontSDF(const TTF_Font *font);
# 681 "include/SDL3_ttf/SDL_ttf.h"
extern int TTF_GetFontWeight(const TTF_Font *font);
# 699 "include/SDL3_ttf/SDL_ttf.h"
typedef enum TTF_HorizontalAlignment
{
    TTF_HORIZONTAL_ALIGN_INVALID = -1,
    TTF_HORIZONTAL_ALIGN_LEFT,
    TTF_HORIZONTAL_ALIGN_CENTER,
    TTF_HORIZONTAL_ALIGN_RIGHT
} TTF_HorizontalAlignment;
# 722 "include/SDL3_ttf/SDL_ttf.h"
extern void TTF_SetFontWrapAlignment(TTF_Font *font, TTF_HorizontalAlignment align);
# 736 "include/SDL3_ttf/SDL_ttf.h"
extern TTF_HorizontalAlignment TTF_GetFontWrapAlignment(const TTF_Font *font);
# 750 "include/SDL3_ttf/SDL_ttf.h"
extern int TTF_GetFontHeight(const TTF_Font *font);
# 764 "include/SDL3_ttf/SDL_ttf.h"
extern int TTF_GetFontAscent(const TTF_Font *font);
# 778 "include/SDL3_ttf/SDL_ttf.h"
extern int TTF_GetFontDescent(const TTF_Font *font);
# 795 "include/SDL3_ttf/SDL_ttf.h"
extern void TTF_SetFontLineSkip(TTF_Font *font, int lineskip);
# 809 "include/SDL3_ttf/SDL_ttf.h"
extern int TTF_GetFontLineSkip(const TTF_Font *font);
# 831 "include/SDL3_ttf/SDL_ttf.h"
extern void TTF_SetFontKerning(TTF_Font *font, bool enabled);
# 845 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_GetFontKerning(const TTF_Font *font);
# 863 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_FontIsFixedWidth(const TTF_Font *font);
# 879 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_FontIsScalable(const TTF_Font *font);
# 897 "include/SDL3_ttf/SDL_ttf.h"
extern const char * TTF_GetFontFamilyName(const TTF_Font *font);
# 915 "include/SDL3_ttf/SDL_ttf.h"
extern const char * TTF_GetFontStyleName(const TTF_Font *font);
# 928 "include/SDL3_ttf/SDL_ttf.h"
typedef enum TTF_Direction
{
  TTF_DIRECTION_INVALID = 0,
  TTF_DIRECTION_LTR = 4,
  TTF_DIRECTION_RTL,
  TTF_DIRECTION_TTB,
  TTF_DIRECTION_BTT
} TTF_Direction;
# 955 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_SetFontDirection(TTF_Font *font, TTF_Direction direction);
# 970 "include/SDL3_ttf/SDL_ttf.h"
extern TTF_Direction TTF_GetFontDirection(TTF_Font *font);
# 994 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_SetFontCharSpacing(TTF_Font *font, int spacing);
# 1010 "include/SDL3_ttf/SDL_ttf.h"
extern int TTF_GetFontCharSpacing(TTF_Font *font);
# 1024 "include/SDL3_ttf/SDL_ttf.h"
extern Uint32 TTF_StringToTag(const char *string);
# 1041 "include/SDL3_ttf/SDL_ttf.h"
extern void TTF_TagToString(Uint32 tag, char *string, size_t size);
# 1064 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_SetFontScript(TTF_Font *font, Uint32 script);
# 1081 "include/SDL3_ttf/SDL_ttf.h"
extern Uint32 TTF_GetFontScript(TTF_Font *font);
# 1098 "include/SDL3_ttf/SDL_ttf.h"
extern Uint32 TTF_GetGlyphScript(Uint32 ch);
# 1119 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_SetFontLanguage(TTF_Font *font, const char *language_bcp47);
# 1133 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_FontHasGlyph(TTF_Font *font, Uint32 ch);






typedef enum TTF_ImageType
{
    TTF_IMAGE_INVALID,
    TTF_IMAGE_ALPHA,
    TTF_IMAGE_COLOR,
    TTF_IMAGE_SDF,
} TTF_ImageType;
# 1163 "include/SDL3_ttf/SDL_ttf.h"
extern SDL_Surface * TTF_GetGlyphImage(TTF_Font *font, Uint32 ch, TTF_ImageType *image_type);
# 1183 "include/SDL3_ttf/SDL_ttf.h"
extern SDL_Surface * TTF_GetGlyphImageForIndex(TTF_Font *font, Uint32 glyph_index, TTF_ImageType *image_type);
# 1214 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_GetGlyphMetrics(TTF_Font *font, Uint32 ch, int *minx, int *maxx, int *miny, int *maxy, int *advance);
# 1232 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_GetGlyphKerning(TTF_Font *font, Uint32 previous_ch, Uint32 ch, int *kerning);
# 1254 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_GetStringSize(TTF_Font *font, const char *text, size_t length, int *w, int *h);
# 1282 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_GetStringSizeWrapped(TTF_Font *font, const char *text, size_t length, int wrap_width, int *w, int *h);
# 1310 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_MeasureString(TTF_Font *font, const char *text, size_t length, int max_width, int *measured_width, size_t *measured_length);
# 1347 "include/SDL3_ttf/SDL_ttf.h"
extern SDL_Surface * TTF_RenderText_Solid(TTF_Font *font, const char *text, size_t length, SDL_Color fg);
# 1383 "include/SDL3_ttf/SDL_ttf.h"
extern SDL_Surface * TTF_RenderText_Solid_Wrapped(TTF_Font *font, const char *text, size_t length, SDL_Color fg, int wrapLength);
# 1412 "include/SDL3_ttf/SDL_ttf.h"
extern SDL_Surface * TTF_RenderGlyph_Solid(TTF_Font *font, Uint32 ch, SDL_Color fg);
# 1450 "include/SDL3_ttf/SDL_ttf.h"
extern SDL_Surface * TTF_RenderText_Shaded(TTF_Font *font, const char *text, size_t length, SDL_Color fg, SDL_Color bg);
# 1488 "include/SDL3_ttf/SDL_ttf.h"
extern SDL_Surface * TTF_RenderText_Shaded_Wrapped(TTF_Font *font, const char *text, size_t length, SDL_Color fg, SDL_Color bg, int wrap_width);
# 1519 "include/SDL3_ttf/SDL_ttf.h"
extern SDL_Surface * TTF_RenderGlyph_Shaded(TTF_Font *font, Uint32 ch, SDL_Color fg, SDL_Color bg);
# 1555 "include/SDL3_ttf/SDL_ttf.h"
extern SDL_Surface * TTF_RenderText_Blended(TTF_Font *font, const char *text, size_t length, SDL_Color fg);
# 1591 "include/SDL3_ttf/SDL_ttf.h"
extern SDL_Surface * TTF_RenderText_Blended_Wrapped(TTF_Font *font, const char *text, size_t length, SDL_Color fg, int wrap_width);
# 1620 "include/SDL3_ttf/SDL_ttf.h"
extern SDL_Surface * TTF_RenderGlyph_Blended(TTF_Font *font, Uint32 ch, SDL_Color fg);
# 1657 "include/SDL3_ttf/SDL_ttf.h"
extern SDL_Surface * TTF_RenderText_LCD(TTF_Font *font, const char *text, size_t length, SDL_Color fg, SDL_Color bg);
# 1695 "include/SDL3_ttf/SDL_ttf.h"
extern SDL_Surface * TTF_RenderText_LCD_Wrapped(TTF_Font *font, const char *text, size_t length, SDL_Color fg, SDL_Color bg, int wrap_width);
# 1726 "include/SDL3_ttf/SDL_ttf.h"
extern SDL_Surface * TTF_RenderGlyph_LCD(TTF_Font *font, Uint32 ch, SDL_Color fg, SDL_Color bg);
# 1745 "include/SDL3_ttf/SDL_ttf.h"
typedef struct TTF_TextEngine TTF_TextEngine;






typedef struct TTF_TextData TTF_TextData;
# 1763 "include/SDL3_ttf/SDL_ttf.h"
typedef struct TTF_Text
{
    char *text;
    int num_lines;

    int refcount;

    TTF_TextData *internal;

} TTF_Text;
# 1787 "include/SDL3_ttf/SDL_ttf.h"
extern TTF_TextEngine * TTF_CreateSurfaceTextEngine(void);
# 1812 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_DrawSurfaceText(TTF_Text *text, int x, int y, SDL_Surface *surface);
# 1830 "include/SDL3_ttf/SDL_ttf.h"
extern void TTF_DestroySurfaceTextEngine(TTF_TextEngine *engine);
# 1848 "include/SDL3_ttf/SDL_ttf.h"
extern TTF_TextEngine * TTF_CreateRendererTextEngine(SDL_Renderer *renderer);
# 1874 "include/SDL3_ttf/SDL_ttf.h"
extern TTF_TextEngine * TTF_CreateRendererTextEngineWithProperties(SDL_PropertiesID props);
# 1902 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_DrawRendererText(TTF_Text *text, float x, float y);
# 1920 "include/SDL3_ttf/SDL_ttf.h"
extern void TTF_DestroyRendererTextEngine(TTF_TextEngine *engine);
# 1939 "include/SDL3_ttf/SDL_ttf.h"
extern TTF_TextEngine * TTF_CreateGPUTextEngine(SDL_GPUDevice *device);
# 1965 "include/SDL3_ttf/SDL_ttf.h"
extern TTF_TextEngine * TTF_CreateGPUTextEngineWithProperties(SDL_PropertiesID props);
# 1977 "include/SDL3_ttf/SDL_ttf.h"
typedef struct TTF_GPUAtlasDrawSequence
{
    SDL_GPUTexture *atlas_texture;
    SDL_FPoint *xy;
    SDL_FPoint *uv;
    int num_vertices;
    int *indices;
    int num_indices;
    TTF_ImageType image_type;

    struct TTF_GPUAtlasDrawSequence *next;
} TTF_GPUAtlasDrawSequence;
# 2017 "include/SDL3_ttf/SDL_ttf.h"
extern TTF_GPUAtlasDrawSequence * TTF_GetGPUTextDrawData(TTF_Text *text);
# 2035 "include/SDL3_ttf/SDL_ttf.h"
extern void TTF_DestroyGPUTextEngine(TTF_TextEngine *engine);






typedef enum TTF_GPUTextEngineWinding
{
    TTF_GPU_TEXTENGINE_WINDING_INVALID = -1,
    TTF_GPU_TEXTENGINE_WINDING_CLOCKWISE,
    TTF_GPU_TEXTENGINE_WINDING_COUNTER_CLOCKWISE
} TTF_GPUTextEngineWinding;
# 2064 "include/SDL3_ttf/SDL_ttf.h"
extern void TTF_SetGPUTextEngineWinding(TTF_TextEngine *engine, TTF_GPUTextEngineWinding winding);
# 2082 "include/SDL3_ttf/SDL_ttf.h"
extern TTF_GPUTextEngineWinding TTF_GetGPUTextEngineWinding(const TTF_TextEngine *engine);
# 2103 "include/SDL3_ttf/SDL_ttf.h"
extern TTF_Text * TTF_CreateText(TTF_TextEngine *engine, TTF_Font *font, const char *text, size_t length);
# 2117 "include/SDL3_ttf/SDL_ttf.h"
extern SDL_PropertiesID TTF_GetTextProperties(TTF_Text *text);
# 2136 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_SetTextEngine(TTF_Text *text, TTF_TextEngine *engine);
# 2152 "include/SDL3_ttf/SDL_ttf.h"
extern TTF_TextEngine * TTF_GetTextEngine(TTF_Text *text);
# 2175 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_SetTextFont(TTF_Text *text, TTF_Font *font);
# 2191 "include/SDL3_ttf/SDL_ttf.h"
extern TTF_Font * TTF_GetTextFont(TTF_Text *text);
# 2209 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_SetTextDirection(TTF_Text *text, TTF_Direction direction);
# 2224 "include/SDL3_ttf/SDL_ttf.h"
extern TTF_Direction TTF_GetTextDirection(TTF_Text *text);
# 2245 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_SetTextScript(TTF_Text *text, Uint32 script);
# 2265 "include/SDL3_ttf/SDL_ttf.h"
extern Uint32 TTF_GetTextScript(TTF_Text *text);
# 2288 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_SetTextColor(TTF_Text *text, Uint8 r, Uint8 g, Uint8 b, Uint8 a);
# 2311 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_SetTextColorFloat(TTF_Text *text, float r, float g, float b, float a);
# 2336 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_GetTextColor(TTF_Text *text, Uint8 *r, Uint8 *g, Uint8 *b, Uint8 *a);
# 2361 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_GetTextColorFloat(TTF_Text *text, float *r, float *g, float *b, float *a);
# 2384 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_SetTextPosition(TTF_Text *text, int x, int y);
# 2404 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_GetTextPosition(TTF_Text *text, int *x, int *y);
# 2424 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_SetTextWrapWidth(TTF_Text *text, int wrap_width);
# 2442 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_GetTextWrapWidth(TTF_Text *text, int *wrap_width);
# 2467 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_SetTextWrapWhitespaceVisible(TTF_Text *text, bool visible);
# 2483 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_TextWrapWhitespaceVisible(TTF_Text *text);
# 2506 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_SetTextString(TTF_Text *text, const char *string, size_t length);
# 2533 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_InsertTextString(TTF_Text *text, int offset, const char *string, size_t length);
# 2556 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_AppendTextString(TTF_Text *text, const char *string, size_t length);
# 2582 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_DeleteTextString(TTF_Text *text, int offset, int length);
# 2603 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_GetTextSize(TTF_Text *text, int *w, int *h);
# 2612 "include/SDL3_ttf/SDL_ttf.h"
typedef Uint32 TTF_SubStringFlags;
# 2632 "include/SDL3_ttf/SDL_ttf.h"
typedef struct TTF_SubString
{
    TTF_SubStringFlags flags;
    int offset;
    int length;
    int line_index;
    int cluster_index;
    SDL_Rect rect;
} TTF_SubString;
# 2663 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_GetTextSubString(TTF_Text *text, int offset, TTF_SubString *substring);
# 2686 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_GetTextSubStringForLine(TTF_Text *text, int line, TTF_SubString *substring);
# 2707 "include/SDL3_ttf/SDL_ttf.h"
extern TTF_SubString ** TTF_GetTextSubStringsForRange(TTF_Text *text, int offset, int length, int *count);
# 2729 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_GetTextSubStringForPoint(TTF_Text *text, int x, int y, TTF_SubString *substring);
# 2749 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_GetPreviousTextSubString(TTF_Text *text, const TTF_SubString *substring, TTF_SubString *previous);
# 2768 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_GetNextTextSubString(TTF_Text *text, const TTF_SubString *substring, TTF_SubString *next);
# 2786 "include/SDL3_ttf/SDL_ttf.h"
extern bool TTF_UpdateText(TTF_Text *text);
# 2800 "include/SDL3_ttf/SDL_ttf.h"
extern void TTF_DestroyText(TTF_Text *text);
# 2824 "include/SDL3_ttf/SDL_ttf.h"
extern void TTF_CloseFont(TTF_Font *font);
# 2846 "include/SDL3_ttf/SDL_ttf.h"
extern void TTF_Quit(void);
# 2870 "include/SDL3_ttf/SDL_ttf.h"
extern int TTF_WasInit(void);





# 1 "include/SDL3/SDL_close_code.h" 1
# 2877 "include/SDL3_ttf/SDL_ttf.h" 2
# 21 "include/common_libs.h" 2
# 1 "include/MemTrack.h" 1



# 1 "include/MemTrack_export.h" 1
# 5 "include/MemTrack.h" 2
# 1 "include/MemTrack_linked_list.h" 1






# 1 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/15.2.0/include/stddef.h" 1 3 4
# 1 "C:/msys64/mingw64/include/stddef.h" 1 3 4
# 2 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/15.2.0/include/stddef.h" 2 3 4
# 8 "include/MemTrack_linked_list.h" 2


typedef struct Mem_Info{

    struct Mem_Info *next;
    size_t size;
    void *ptr;
    char *file_name;
    int file_line;

} Mem_Info;


typedef struct{

    void (*fail_handler)(void*);
    void *handler_arg;
    struct{
        bool memory_failure_abort;
        bool auto_null_pointers;
        bool print_error_info;
    } config;


} MemTrack_Context;


__attribute__((dllimport)) size_t check_memory_usage();
__attribute__((dllimport)) void print_tracking_info();
__attribute__((dllimport)) void free_tracking_info();
__attribute__((dllimport)) int check_memory_leak();
int append_allocation(void *ptr, char *file, int line, size_t size);
int delete_allocation(void *check_ptr);
# 6 "include/MemTrack.h" 2

# 1 "C:/msys64/mingw64/include/stdlib.h" 1 3
# 11 "C:/msys64/mingw64/include/stdlib.h" 3
# 1 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/15.2.0/include/limits.h" 1 3 4
# 34 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/15.2.0/include/limits.h" 3 4
# 1 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/15.2.0/include/syslimits.h" 1 3 4






#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpedantic"
# 1 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/15.2.0/include/limits.h" 1 3 4
# 210 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/15.2.0/include/limits.h" 3 4
# 1 "C:/msys64/mingw64/include/limits.h" 1 3 4
# 211 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/15.2.0/include/limits.h" 2 3 4
# 10 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/15.2.0/include/syslimits.h" 2 3 4
#pragma GCC diagnostic pop
# 35 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/15.2.0/include/limits.h" 2 3 4
# 12 "C:/msys64/mingw64/include/stdlib.h" 2 3
# 26 "C:/msys64/mingw64/include/stdlib.h" 3
#pragma pack(push,_CRT_PACKING)
# 50 "C:/msys64/mingw64/include/stdlib.h" 3
  typedef int (__attribute__((__cdecl__)) *_onexit_t)(void);
# 60 "C:/msys64/mingw64/include/stdlib.h" 3
  typedef struct _div_t {
    int quot;
    int rem;
  } div_t;

  typedef struct _ldiv_t {
    long quot;
    long rem;
  } ldiv_t;





#pragma pack(4)
  typedef struct {
    unsigned char ld[10];
  } _LDOUBLE;
#pragma pack()



  typedef struct {
    double x;
  } _CRT_DOUBLE;

  typedef struct {
    float f;
  } _CRT_FLOAT;

       


  typedef struct {
    long double x;
  } _LONGDOUBLE;

       

#pragma pack(4)
  typedef struct {
    unsigned char ld12[12];
  } _LDBL12;
#pragma pack()
# 113 "C:/msys64/mingw64/include/stdlib.h" 3
__attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) ___mb_cur_max_func(void);
# 135 "C:/msys64/mingw64/include/stdlib.h" 3
  typedef void (__attribute__((__cdecl__)) *_purecall_handler)(void);

  __attribute__ ((__dllimport__)) _purecall_handler __attribute__((__cdecl__)) _set_purecall_handler(_purecall_handler _Handler);
  __attribute__ ((__dllimport__)) _purecall_handler __attribute__((__cdecl__)) _get_purecall_handler(void);

  typedef void (__attribute__((__cdecl__)) *_invalid_parameter_handler)(const wchar_t *,const wchar_t *,const wchar_t *,unsigned int,uintptr_t);
  __attribute__ ((__dllimport__)) _invalid_parameter_handler __attribute__((__cdecl__)) _set_invalid_parameter_handler(_invalid_parameter_handler _Handler);
  __attribute__ ((__dllimport__)) _invalid_parameter_handler __attribute__((__cdecl__)) _get_invalid_parameter_handler(void);
# 151 "C:/msys64/mingw64/include/stdlib.h" 3
  __attribute__ ((__dllimport__)) unsigned long *__attribute__((__cdecl__)) __doserrno(void);

  errno_t __attribute__((__cdecl__)) _set_doserrno(unsigned long _Value);
  errno_t __attribute__((__cdecl__)) _get_doserrno(unsigned long *_Value);
  __attribute__ ((__dllimport__)) char **__attribute__((__cdecl__)) __sys_errlist(void);
  __attribute__ ((__dllimport__)) int *__attribute__((__cdecl__)) __sys_nerr(void);



  __attribute__ ((__dllimport__)) char ***__attribute__((__cdecl__)) __p___argv(void);
  __attribute__ ((__dllimport__)) int *__attribute__((__cdecl__)) __p__fmode(void);
  __attribute__ ((__dllimport__)) int *__attribute__((__cdecl__)) __p___argc(void);
  __attribute__ ((__dllimport__)) wchar_t ***__attribute__((__cdecl__)) __p___wargv(void);
  __attribute__ ((__dllimport__)) char **__attribute__((__cdecl__)) __p__pgmptr(void);
  __attribute__ ((__dllimport__)) wchar_t **__attribute__((__cdecl__)) __p__wpgmptr(void);

  errno_t __attribute__((__cdecl__)) _get_pgmptr(char **_Value);
  errno_t __attribute__((__cdecl__)) _get_wpgmptr(wchar_t **_Value);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _set_fmode(int _Mode);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _get_fmode(int *_PMode);
# 221 "C:/msys64/mingw64/include/stdlib.h" 3
  __attribute__ ((__dllimport__)) char ***__attribute__((__cdecl__)) __p__environ(void);
  __attribute__ ((__dllimport__)) wchar_t ***__attribute__((__cdecl__)) __p__wenviron(void);
# 234 "C:/msys64/mingw64/include/stdlib.h" 3
  __attribute__ ((__dllimport__)) unsigned int *__attribute__((__cdecl__)) __p__osplatform(void);
  __attribute__ ((__dllimport__)) unsigned int *__attribute__((__cdecl__)) __p__osver(void);
  __attribute__ ((__dllimport__)) unsigned int *__attribute__((__cdecl__)) __p__winver(void);
  __attribute__ ((__dllimport__)) unsigned int *__attribute__((__cdecl__)) __p__winmajor(void);
  __attribute__ ((__dllimport__)) unsigned int *__attribute__((__cdecl__)) __p__winminor(void);
# 256 "C:/msys64/mingw64/include/stdlib.h" 3
  errno_t __attribute__((__cdecl__)) _get_osplatform(unsigned int *_Value);
  errno_t __attribute__((__cdecl__)) _get_osver(unsigned int *_Value);
  errno_t __attribute__((__cdecl__)) _get_winver(unsigned int *_Value);
  errno_t __attribute__((__cdecl__)) _get_winmajor(unsigned int *_Value);
  errno_t __attribute__((__cdecl__)) _get_winminor(unsigned int *_Value);
# 296 "C:/msys64/mingw64/include/stdlib.h" 3
  __attribute__ ((__dllimport__)) unsigned int __attribute__((__cdecl__)) _set_abort_behavior(unsigned int _Flags,unsigned int _Mask);



  int __attribute__((__cdecl__)) abs(int _X);
  long __attribute__((__cdecl__)) labs(long _X);


  __extension__ long long __attribute__((__cdecl__)) _abs64(long long);

  extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) long long __attribute__((__cdecl__)) _abs64(long long x) {
    return __builtin_llabs(x);
  }


  int __attribute__((__cdecl__)) atexit(void (__attribute__((__cdecl__)) *)(void));

  int __attribute__((__cdecl__)) at_quick_exit(void (__attribute__((__cdecl__)) *)(void));



  double __attribute__((__cdecl__)) atof(const char *_String);
  double __attribute__((__cdecl__)) _atof_l(const char *_String,_locale_t _Locale);

  int __attribute__((__cdecl__)) atoi(const char *_Str);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _atoi_l(const char *_Str,_locale_t _Locale);
  long __attribute__((__cdecl__)) atol(const char *_Str);
  __attribute__ ((__dllimport__)) long __attribute__((__cdecl__)) _atol_l(const char *_Str,_locale_t _Locale);


  void *__attribute__((__cdecl__)) bsearch(const void *_Key,const void *_Base,size_t _NumOfElements,size_t _SizeOfElements,int (__attribute__((__cdecl__)) *_PtFuncCompare)(const void *,const void *));
  void __attribute__((__cdecl__)) qsort(void *_Base,size_t _NumOfElements,size_t _SizeOfElements,int (__attribute__((__cdecl__)) *_PtFuncCompare)(const void *,const void *));

  unsigned short __attribute__((__cdecl__)) _byteswap_ushort(unsigned short _Short);
  unsigned long __attribute__((__cdecl__)) _byteswap_ulong (unsigned long _Long);
  __extension__ unsigned long long __attribute__((__cdecl__)) _byteswap_uint64(unsigned long long _Int64);
  div_t __attribute__((__cdecl__)) div(int _Numerator,int _Denominator);
  char *__attribute__((__cdecl__)) getenv(const char *_VarName) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _itoa(int _Value,char *_Dest,int _Radix);
  __extension__ __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _i64toa(long long _Val,char *_DstBuf,int _Radix) ;
  __extension__ __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _ui64toa(unsigned long long _Val,char *_DstBuf,int _Radix) ;
  __extension__ __attribute__ ((__dllimport__)) long long __attribute__((__cdecl__)) _atoi64(const char *_String);
  __extension__ __attribute__ ((__dllimport__)) long long __attribute__((__cdecl__)) _atoi64_l(const char *_String,_locale_t _Locale);
  __extension__ __attribute__ ((__dllimport__)) long long __attribute__((__cdecl__)) _strtoi64(const char *_String,char **_EndPtr,int _Radix);
  __extension__ __attribute__ ((__dllimport__)) long long __attribute__((__cdecl__)) _strtoi64_l(const char *_String,char **_EndPtr,int _Radix,_locale_t _Locale);
  __extension__ __attribute__ ((__dllimport__)) unsigned long long __attribute__((__cdecl__)) _strtoui64(const char *_String,char **_EndPtr,int _Radix);
  __extension__ __attribute__ ((__dllimport__)) unsigned long long __attribute__((__cdecl__)) _strtoui64_l(const char *_String,char **_EndPtr,int _Radix,_locale_t _Locale);
  ldiv_t __attribute__((__cdecl__)) ldiv(long _Numerator,long _Denominator);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _ltoa(long _Value,char *_Dest,int _Radix) ;
  int __attribute__((__cdecl__)) mblen(const char *_Ch,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _mblen_l(const char *_Ch,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _mbstrlen(const char *_Str);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _mbstrlen_l(const char *_Str,_locale_t _Locale);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _mbstrnlen(const char *_Str,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _mbstrnlen_l(const char *_Str,size_t _MaxCount,_locale_t _Locale);
  int __attribute__((__cdecl__)) mbtowc(wchar_t * __restrict__ _DstCh,const char * __restrict__ _SrcCh,size_t _SrcSizeInBytes);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _mbtowc_l(wchar_t * __restrict__ _DstCh,const char * __restrict__ _SrcCh,size_t _SrcSizeInBytes,_locale_t _Locale);
  size_t __attribute__((__cdecl__)) mbstowcs(wchar_t * __restrict__ _Dest,const char * __restrict__ _Source,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _mbstowcs_l(wchar_t * __restrict__ _Dest,const char * __restrict__ _Source,size_t _MaxCount,_locale_t _Locale);
  int __attribute__((__cdecl__)) mkstemp(char *template_name);
  int __attribute__((__cdecl__)) rand(void);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _set_error_mode(int _Mode);
  void __attribute__((__cdecl__)) srand(unsigned int _Seed);
# 385 "C:/msys64/mingw64/include/stdlib.h" 3
  double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtod(const char * __restrict__ _Str,char ** __restrict__ _EndPtr);
  float __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtof(const char * __restrict__ nptr, char ** __restrict__ endptr);

  long double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtold(const char * __restrict__ , char ** __restrict__ );


  extern double __attribute__((__cdecl__)) __attribute__ ((__nothrow__))
  __strtod (const char * __restrict__ , char ** __restrict__);







  float __attribute__((__cdecl__)) __mingw_strtof (const char * __restrict__, char ** __restrict__);
  double __attribute__((__cdecl__)) __mingw_strtod (const char * __restrict__, char ** __restrict__);
  long double __attribute__((__cdecl__)) __mingw_strtold(const char * __restrict__, char ** __restrict__);

  __attribute__ ((__dllimport__)) float __attribute__((__cdecl__)) _strtof_l(const char * __restrict__ _Str,char ** __restrict__ _EndPtr,_locale_t _Locale);
  __attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) _strtod_l(const char * __restrict__ _Str,char ** __restrict__ _EndPtr,_locale_t _Locale);
  long __attribute__((__cdecl__)) strtol(const char * __restrict__ _Str,char ** __restrict__ _EndPtr,int _Radix);
  __attribute__ ((__dllimport__)) long __attribute__((__cdecl__)) _strtol_l(const char * __restrict__ _Str,char ** __restrict__ _EndPtr,int _Radix,_locale_t _Locale);
  unsigned long __attribute__((__cdecl__)) strtoul(const char * __restrict__ _Str,char ** __restrict__ _EndPtr,int _Radix);
  __attribute__ ((__dllimport__)) unsigned long __attribute__((__cdecl__)) _strtoul_l(const char * __restrict__ _Str,char ** __restrict__ _EndPtr,int _Radix,_locale_t _Locale);




  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _ultoa(unsigned long _Value,char *_Dest,int _Radix) ;
  int __attribute__((__cdecl__)) wctomb(char *_MbCh,wchar_t _WCh) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wctomb_l(char *_MbCh,wchar_t _WCh,_locale_t _Locale) ;
  size_t __attribute__((__cdecl__)) wcstombs(char * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _MaxCount) ;
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _wcstombs_l(char * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _MaxCount,_locale_t _Locale) ;
# 452 "C:/msys64/mingw64/include/stdlib.h" 3
  void *__attribute__((__cdecl__)) calloc(size_t _NumOfElements,size_t _SizeOfElements);
  void __attribute__((__cdecl__)) free(void *_Memory);
  void *__attribute__((__cdecl__)) malloc(size_t _Size);
  void *__attribute__((__cdecl__)) realloc(void *_Memory,size_t _NewSize);
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _aligned_free(void *_Memory);
  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _aligned_malloc(size_t _Size,size_t _Alignment);
  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _aligned_offset_malloc(size_t _Size,size_t _Alignment,size_t _Offset);
  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _aligned_realloc(void *_Memory,size_t _Size,size_t _Alignment);
  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _aligned_offset_realloc(void *_Memory,size_t _Size,size_t _Alignment,size_t _Offset);
  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _recalloc(void *_Memory,size_t _Count,size_t _Size);
  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _aligned_recalloc(void *_Memory,size_t _Count,size_t _Size,size_t _Alignment);
  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _aligned_offset_recalloc(void *_Memory,size_t _Count,size_t _Size,size_t _Alignment,size_t _Offset);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _aligned_msize(void *_Memory,size_t _Alignment,size_t _Offset);


  size_t __attribute__((__cdecl__)) memalignment(const void *_Memory);
# 544 "C:/msys64/mingw64/include/stdlib.h" 3
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _putenv(const char *_EnvString);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wputenv(const wchar_t *_EnvString);
# 554 "C:/msys64/mingw64/include/stdlib.h" 3
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _fullpath(char *_FullPath,const char *_Path,size_t _SizeInBytes);




  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _ecvt(double _Val,int _NumOfDigits,int *_PtDec,int *_PtSign) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _fcvt(double _Val,int _NumOfDec,int *_PtDec,int *_PtSign) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _gcvt(double _Val,int _NumOfDigits,char *_DstBuf) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _atodbl(_CRT_DOUBLE *_Result,char *_Str);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _atoldbl(_LDOUBLE *_Result,char *_Str);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _atoflt(_CRT_FLOAT *_Result,char *_Str);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _atodbl_l(_CRT_DOUBLE *_Result,char *_Str,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _atoldbl_l(_LDOUBLE *_Result,char *_Str,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _atoflt_l(_CRT_FLOAT *_Result,char *_Str,_locale_t _Locale);
# 583 "C:/msys64/mingw64/include/stdlib.h" 3
unsigned long __attribute__((__cdecl__)) _lrotl(unsigned long,int);
unsigned long __attribute__((__cdecl__)) _lrotr(unsigned long,int);





  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _makepath(char *_Path,const char *_Drive,const char *_Dir,const char *_Filename,const char *_Ext);
  _onexit_t __attribute__((__cdecl__)) _onexit(_onexit_t _Func);



  void __attribute__((__cdecl__)) perror(const char *_ErrMsg);

       
       


  __extension__ unsigned long long __attribute__((__cdecl__)) _rotl64(unsigned long long _Val,int _Shift);
  __extension__ unsigned long long __attribute__((__cdecl__)) _rotr64(unsigned long long Value,int Shift);
       
       
       
       


  unsigned int __attribute__((__cdecl__)) _rotr(unsigned int _Val,int _Shift);
  unsigned int __attribute__((__cdecl__)) _rotl(unsigned int _Val,int _Shift);
       
       
  __extension__ unsigned long long __attribute__((__cdecl__)) _rotr64(unsigned long long _Val,int _Shift);
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _searchenv(const char *_Filename,const char *_EnvVar,char *_ResultPath) ;
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _splitpath(const char *_FullPath,char *_Drive,char *_Dir,char *_Filename,char *_Ext) ;
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _swab(char *_Buf1,char *_Buf2,int _SizeInBytes);
# 637 "C:/msys64/mingw64/include/stdlib.h" 3
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _beep(unsigned _Frequency,unsigned _Duration) __attribute__ ((__deprecated__));

  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _seterrormode(int _Mode) __attribute__ ((__deprecated__));
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _sleep(unsigned long _Duration) __attribute__ ((__deprecated__));
# 661 "C:/msys64/mingw64/include/stdlib.h" 3
  char *__attribute__((__cdecl__)) ecvt(double _Val,int _NumOfDigits,int *_PtDec,int *_PtSign) ;
  char *__attribute__((__cdecl__)) fcvt(double _Val,int _NumOfDec,int *_PtDec,int *_PtSign) ;
  char *__attribute__((__cdecl__)) gcvt(double _Val,int _NumOfDigits,char *_DstBuf) ;
  char *__attribute__((__cdecl__)) itoa(int _Val,char *_DstBuf,int _Radix) ;
  char *__attribute__((__cdecl__)) ltoa(long _Val,char *_DstBuf,int _Radix) ;
  int __attribute__((__cdecl__)) putenv(const char *_EnvString) ;



  void __attribute__((__cdecl__)) swab(char *_Buf1,char *_Buf2,int _SizeInBytes) ;


  char *__attribute__((__cdecl__)) ultoa(unsigned long _Val,char *_Dstbuf,int _Radix) ;
  _onexit_t __attribute__((__cdecl__)) onexit(_onexit_t _Func);





  typedef struct { __extension__ long long quot, rem; } lldiv_t;

  __extension__ lldiv_t __attribute__((__cdecl__)) lldiv(long long, long long);

  __extension__ long long __attribute__((__cdecl__)) llabs(long long);




  __extension__ long long __attribute__((__cdecl__)) strtoll(const char * __restrict__, char ** __restrict, int);
  __extension__ unsigned long long __attribute__((__cdecl__)) strtoull(const char * __restrict__, char ** __restrict__, int);


  __extension__ long long __attribute__((__cdecl__)) atoll (const char *);


  __extension__ long long __attribute__((__cdecl__)) wtoll (const wchar_t *);
  __extension__ char *__attribute__((__cdecl__)) lltoa (long long, char *, int);
  __extension__ char *__attribute__((__cdecl__)) ulltoa (unsigned long long , char *, int);
  __extension__ wchar_t *__attribute__((__cdecl__)) lltow (long long, wchar_t *, int);
  __extension__ wchar_t *__attribute__((__cdecl__)) ulltow (unsigned long long, wchar_t *, int);
# 718 "C:/msys64/mingw64/include/stdlib.h" 3
#pragma pack(pop)

# 1 "C:/msys64/mingw64/include/sec_api/stdlib_s.h" 1 3
# 9 "C:/msys64/mingw64/include/sec_api/stdlib_s.h" 3
# 1 "C:/msys64/mingw64/include/stdlib.h" 1 3
# 10 "C:/msys64/mingw64/include/sec_api/stdlib_s.h" 2 3
# 19 "C:/msys64/mingw64/include/sec_api/stdlib_s.h" 3
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _dupenv_s(char **_PBuffer,size_t *_PBufferSizeInBytes,const char *_VarName);




  __attribute__ ((__dllimport__)) void * __attribute__((__cdecl__)) bsearch_s(const void *_Key,const void *_Base,rsize_t _NumOfElements,rsize_t _SizeOfElements,int (__attribute__((__cdecl__)) * _PtFuncCompare)(void *, const void *, const void *), void *_Context);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) getenv_s(size_t *_ReturnSize,char *_DstBuf,rsize_t _DstSize,const char *_VarName);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _itoa_s(int _Value,char *_DstBuf,size_t _Size,int _Radix);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _i64toa_s(long long _Val,char *_DstBuf,size_t _Size,int _Radix);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _ui64toa_s(unsigned long long _Val,char *_DstBuf,size_t _Size,int _Radix);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _ltoa_s(long _Val,char *_DstBuf,size_t _Size,int _Radix);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) mbstowcs_s(size_t *_PtNumOfCharConverted,wchar_t *_DstBuf,size_t _SizeInWords,const char *_SrcBuf,size_t _MaxCount);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _mbstowcs_s_l(size_t *_PtNumOfCharConverted,wchar_t *_DstBuf,size_t _SizeInWords,const char *_SrcBuf,size_t _MaxCount,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _ultoa_s(unsigned long _Val,char *_DstBuf,size_t _Size,int _Radix);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wctomb_s(int *_SizeConverted,char *_MbCh,rsize_t _SizeInBytes,wchar_t _WCh);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wctomb_s_l(int *_SizeConverted,char *_MbCh,size_t _SizeInBytes,wchar_t _WCh,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcstombs_s(size_t *_PtNumOfCharConverted,char *_Dst,size_t _DstSizeInBytes,const wchar_t *_Src,size_t _MaxCountInBytes);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcstombs_s_l(size_t *_PtNumOfCharConverted,char *_Dst,size_t _DstSizeInBytes,const wchar_t *_Src,size_t _MaxCountInBytes,_locale_t _Locale);
 


  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _ecvt_s(char *_DstBuf,size_t _Size,double _Val,int _NumOfDights,int *_PtDec,int *_PtSign);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _fcvt_s(char *_DstBuf,size_t _Size,double _Val,int _NumOfDec,int *_PtDec,int *_PtSign);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _gcvt_s(char *_DstBuf,size_t _Size,double _Val,int _NumOfDigits);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _makepath_s(char *_PathResult,size_t _Size,const char *_Drive,const char *_Dir,const char *_Filename,const char *_Ext);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _putenv_s(const char *_Name,const char *_Value);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _searchenv_s(const char *_Filename,const char *_EnvVar,char *_ResultPath,size_t _SizeInBytes);

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _splitpath_s(const char *_FullPath,char *_Drive,size_t _DriveSize,char *_Dir,size_t _DirSize,char *_Filename,size_t _FilenameSize,char *_Ext,size_t _ExtSize);
 



  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) qsort_s(void *_Base,size_t _NumOfElements,size_t _SizeOfElements,int (__attribute__((__cdecl__)) *_PtFuncCompare)(void *,const void *,const void *),void *_Context);
# 721 "C:/msys64/mingw64/include/stdlib.h" 2 3
# 1 "C:/msys64/mingw64/include/malloc.h" 1 3
# 11 "C:/msys64/mingw64/include/malloc.h" 3
#pragma pack(push,_CRT_PACKING)
# 52 "C:/msys64/mingw64/include/malloc.h" 3
  typedef struct _heapinfo {
    int *_pentry;
    size_t _size;
    int _useflag;
  } _HEAPINFO;



  __attribute__ ((__dllimport__)) unsigned int *__attribute__((__cdecl__)) __p__amblksiz(void);
# 129 "C:/msys64/mingw64/include/malloc.h" 3
void * __mingw_aligned_malloc (size_t _Size, size_t _Alignment);
void __mingw_aligned_free (void *_Memory);
void * __mingw_aligned_offset_realloc (void *_Memory, size_t _Size, size_t _Alignment, size_t _Offset);
void * __mingw_aligned_offset_malloc (size_t, size_t, size_t);
void * __mingw_aligned_realloc (void *_Memory, size_t _Size, size_t _Offset);
size_t __mingw_aligned_msize (void *memblock, size_t alignment, size_t offset);



# 1 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/15.2.0/include/mm_malloc.h" 1 3 4
# 29 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/15.2.0/include/mm_malloc.h" 3 4
# 1 "C:/msys64/mingw64/include/errno.h" 1 3 4
# 30 "C:/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/15.2.0/include/mm_malloc.h" 2 3 4


static __inline__ void *
_mm_malloc (size_t __size, size_t __align)
{
  void * __malloc_ptr;
  void * __aligned_ptr;


  if (__align & (__align - 1))
    {

      (*_errno()) = 22;

      return ((void *) 0);
    }

  if (__size == 0)
    return ((void *) 0);





    if (__align < 2 * sizeof (void *))
      __align = 2 * sizeof (void *);

  __malloc_ptr = malloc (__size + __align);
  if (!__malloc_ptr)
    return ((void *) 0);


  __aligned_ptr = (void *) (((size_t) __malloc_ptr + __align)
       & ~((size_t) (__align) - 1));


  ((void **) __aligned_ptr)[-1] = __malloc_ptr;

  return __aligned_ptr;
}

static __inline__ void
_mm_free (void *__aligned_ptr)
{
  if (__aligned_ptr)
    free (((void **) __aligned_ptr)[-1]);
}
# 139 "C:/msys64/mingw64/include/malloc.h" 2 3





  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _resetstkoflw (void);

  __attribute__ ((__dllimport__)) unsigned long __attribute__((__cdecl__)) _set_malloc_crt_max_wait(unsigned long _NewValue);







  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _expand(void *_Memory,size_t _NewSize);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _msize(void *_Memory);
# 167 "C:/msys64/mingw64/include/malloc.h" 3
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _get_sbh_threshold(void);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _set_sbh_threshold(size_t _NewValue);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _set_amblksiz(size_t _Value);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _get_amblksiz(size_t *_Value);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _heapadd(void *_Memory,size_t _Size);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _heapchk(void);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _heapmin(void);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _heapset(unsigned int _Fill);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _heapwalk(_HEAPINFO *_EntryInfo);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _heapused(size_t *_Used,size_t *_Commit);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _get_heap_handle(void);
# 190 "C:/msys64/mingw64/include/malloc.h" 3
  static __inline void *_MarkAllocaS(void *_Ptr,unsigned int _Marker) {
    if(_Ptr) {
      *((unsigned int*)_Ptr) = _Marker;
      _Ptr = (char*)_Ptr + 16;
    }
    return _Ptr;
  }
# 218 "C:/msys64/mingw64/include/malloc.h" 3
  static __inline void __attribute__((__cdecl__)) _freea(void *_Memory) {
    unsigned int _Marker;
    if(_Memory) {
      _Memory = (char*)_Memory - 16;
      _Marker = *(unsigned int *)_Memory;
      if(_Marker==0xDDDD) {
 free(_Memory);
      }





    }
  }
# 264 "C:/msys64/mingw64/include/malloc.h" 3
#pragma pack(pop)
# 722 "C:/msys64/mingw64/include/stdlib.h" 2 3
# 8 "include/MemTrack.h" 2



__attribute__((dllimport)) void Set_Malloc_Error_Function(void(*function)(void*), void *function_arg);

__attribute__((dllimport)) void Set_MemTrack_Context(MemTrack_Context *e_ctx);

__attribute__((dllimport)) void safe_free(void **mem);
__attribute__((dllimport)) void* safe_malloc(size_t size);
__attribute__((dllimport)) void* safe_realloc(void *memory, size_t size);
__attribute__((dllimport)) char* safe_strdup(const char *src);

__attribute__((dllimport)) void debug_free(void **mem, char *file, int line);
__attribute__((dllimport)) void* debug_malloc(size_t size, char *file, int line);
__attribute__((dllimport)) void* debug_realloc(void *mem, size_t size, char *file, int line);
__attribute__((dllimport)) char* debug_strdup(const char* src, char *file, int line);
# 22 "include/common_libs.h" 2

# 1 "C:/msys64/mingw64/include/stdio.h" 1 3
# 11 "C:/msys64/mingw64/include/stdio.h" 3
#pragma pack(push,_CRT_PACKING)

       

       

       

       
# 101 "C:/msys64/mingw64/include/stdio.h" 3

# 101 "C:/msys64/mingw64/include/stdio.h" 3 4
__attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) __acrt_iob_func(unsigned index);

  __attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) __iob_func(void);
# 112 "C:/msys64/mingw64/include/stdio.h" 3
  __extension__ typedef long long fpos_t;
# 156 "C:/msys64/mingw64/include/stdio.h" 3
extern
  __attribute__((__format__(__gnu_scanf__, 2,3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_sscanf(const char * __restrict__ _Src,const char * __restrict__ _Format,...);
extern
  __attribute__((__format__(__gnu_scanf__, 2,0))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_vsscanf (const char * __restrict__ _Str,const char * __restrict__ Format,va_list argp);
extern
  __attribute__((__format__(__gnu_scanf__, 1,2))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __mingw_scanf(const char * __restrict__ _Format,...);
extern
  __attribute__((__format__(__gnu_scanf__, 1,0))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __mingw_vscanf(const char * __restrict__ Format, va_list argp);
extern
  __attribute__((__format__(__gnu_scanf__, 2,3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_fscanf(FILE * __restrict__ _File,const char * __restrict__ _Format,...);
extern
  __attribute__((__format__(__gnu_scanf__, 2,0))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_vfscanf (FILE * __restrict__ fp, const char * __restrict__ Format,va_list argp);

extern
  __attribute__((__format__(__gnu_printf__,3,0))) __attribute__ ((__nonnull__ (3)))
  int __attribute__((__cdecl__)) __mingw_vsnprintf(char * __restrict__ _DstBuf,size_t _MaxCount,const char * __restrict__ _Format,
                               va_list _ArgList);
extern
  __attribute__((__format__(__gnu_printf__,3,4))) __attribute__ ((__nonnull__ (3)))
  int __attribute__((__cdecl__)) __mingw_snprintf(char * __restrict__ s, size_t n, const char * __restrict__ format, ...);
extern
  __attribute__((__format__(__gnu_printf__,1,2))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __mingw_printf(const char * __restrict__ , ... ) __attribute__ ((__nothrow__));
extern
  __attribute__((__format__(__gnu_printf__,1,0))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __mingw_vprintf (const char * __restrict__ , va_list) __attribute__ ((__nothrow__));
extern
  __attribute__((__format__(__gnu_printf__,2,3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_fprintf (FILE * __restrict__ , const char * __restrict__ , ...) __attribute__ ((__nothrow__));
extern
  __attribute__((__format__(__gnu_printf__,2,0))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_vfprintf (FILE * __restrict__ , const char * __restrict__ , va_list) __attribute__ ((__nothrow__));
extern
  __attribute__((__format__(__gnu_printf__,2,3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_sprintf (char * __restrict__ , const char * __restrict__ , ...) __attribute__ ((__nothrow__));
extern
  __attribute__((__format__(__gnu_printf__,2,0))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_vsprintf (char * __restrict__ , const char * __restrict__ , va_list) __attribute__ ((__nothrow__));
extern
  __attribute__((__format__(__gnu_printf__,2,3))) __attribute__((nonnull (1,2)))
  int __attribute__((__cdecl__)) __mingw_asprintf(char ** __restrict__ , const char * __restrict__ , ...) __attribute__ ((__nothrow__));
extern
  __attribute__((__format__(__gnu_printf__,2,0))) __attribute__((nonnull (1,2)))
  int __attribute__((__cdecl__)) __mingw_vasprintf(char ** __restrict__ , const char * __restrict__ , va_list) __attribute__ ((__nothrow__));

extern
  __attribute__((__format__(__ms_scanf__, 2,3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_sscanf(const char * __restrict__ _Src,const char * __restrict__ _Format,...)
  __asm__("sscanf");
extern
  __attribute__((__format__(__ms_scanf__, 2,0))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_vsscanf(const char * __restrict__ _Str,const char * __restrict__ _Format,va_list argp)
  __asm__("vsscanf");
extern
  __attribute__((__format__(__ms_scanf__, 1,2))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __ms_scanf(const char * __restrict__ _Format,...)
  __asm__("scanf");
extern
  __attribute__((__format__(__ms_scanf__, 1,0))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __ms_vscanf(const char * __restrict__ _Format,va_list argp)
  __asm__("vscanf");
extern
  __attribute__((__format__(__ms_scanf__, 2,3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_fscanf(FILE * __restrict__ _File,const char * __restrict__ _Format,...)
  __asm__("fscanf");
extern
  __attribute__((__format__(__ms_scanf__, 2,0))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_vfscanf(FILE * __restrict__ _File,const char * __restrict__ _Format,va_list argp)
  __asm__("vfscanf");

extern
  __attribute__((__format__(__ms_printf__, 1,2))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __ms_printf(const char * __restrict__ , ... )
  __asm__("printf") __attribute__ ((__nothrow__));
extern
  __attribute__((__format__(__ms_printf__, 1,0))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __ms_vprintf (const char * __restrict__ , va_list)
  __asm__("vprintf") __attribute__ ((__nothrow__));
extern
  __attribute__((__format__(__ms_printf__, 2,3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_fprintf (FILE * __restrict__ , const char * __restrict__ , ...)
  __asm__("fprintf") __attribute__ ((__nothrow__));
extern
  __attribute__((__format__(__ms_printf__, 2,0))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_vfprintf (FILE * __restrict__ , const char * __restrict__ , va_list)
  __asm__("vfprintf") __attribute__ ((__nothrow__))
;
extern
  __attribute__((__format__(__ms_printf__, 2,3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_sprintf (char * __restrict__ , const char * __restrict__ , ...)
  __asm__("sprintf") __attribute__ ((__nothrow__));
extern
  __attribute__((__format__(__ms_printf__, 2,0))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_vsprintf (char * __restrict__ , const char * __restrict__ , va_list)
  __asm__("vsprintf") __attribute__ ((__nothrow__));
extern
  __attribute__((__format__(__ms_printf__, 3,4))) __attribute__ ((__nonnull__ (3)))
  int __attribute__((__cdecl__)) __ms_snprintf (char * __restrict__ , size_t , const char * __restrict__ , ...)
  __asm__("snprintf") __attribute__ ((__nothrow__));
extern
  __attribute__((__format__(__ms_printf__, 3,0))) __attribute__ ((__nonnull__ (3)))
  int __attribute__((__cdecl__)) __ms_vsnprintf (char * __restrict__ , size_t , const char * __restrict__ , va_list)
  __asm__("vsnprintf") __attribute__ ((__nothrow__));


  int __attribute__((__cdecl__)) __stdio_common_vsprintf(unsigned long long options, char *str, size_t len, const char *format, _locale_t locale, va_list valist);
  int __attribute__((__cdecl__)) __stdio_common_vfprintf(unsigned long long options, FILE *file, const char *format, _locale_t locale, va_list valist);
  int __attribute__((__cdecl__)) __stdio_common_vsscanf(unsigned long long options, const char *input, size_t length, const char *format, _locale_t locale, va_list valist);
  int __attribute__((__cdecl__)) __stdio_common_vfscanf(unsigned long long options, FILE *file, const char *format, _locale_t locale, va_list valist);
# 444 "C:/msys64/mingw64/include/stdio.h" 3
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wshadow"

  __attribute__((__format__ (__gnu_printf__, 2, 3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) fprintf(FILE * __restrict__ _File,const char * __restrict__ _Format,...);
  __attribute__((__format__ (__gnu_printf__, 1, 2))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) printf(const char * __restrict__ _Format,...);
  __attribute__((__format__ (__gnu_printf__, 2, 3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) sprintf(char * __restrict__ _Dest,const char * __restrict__ _Format,...) ;

  __attribute__((__format__ (__gnu_printf__, 2, 0))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) vfprintf(FILE * __restrict__ _File,const char * __restrict__ _Format,va_list _ArgList);
  __attribute__((__format__ (__gnu_printf__, 1, 0))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) vprintf(const char * __restrict__ _Format,va_list _ArgList);
  __attribute__((__format__ (__gnu_printf__, 2, 0))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) vsprintf(char * __restrict__ _Dest,const char * __restrict__ _Format,va_list _Args) ;

 
  __attribute__((__format__ (__gnu_scanf__, 2, 3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) fscanf(FILE * __restrict__ _File,const char * __restrict__ _Format,...);
 
  __attribute__((__format__ (__gnu_scanf__, 1, 2))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) scanf(const char * __restrict__ _Format,...);
 
  __attribute__((__format__ (__gnu_scanf__, 2, 3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) sscanf(const char * __restrict__ _Src,const char * __restrict__ _Format,...);







  __attribute__((__format__ (__gnu_scanf__, 2, 0))) __attribute__ ((__nonnull__ (2)))
  int vfscanf (FILE *__stream, const char *__format, __builtin_va_list __local_argv);

  __attribute__((__format__ (__gnu_scanf__, 2, 0))) __attribute__ ((__nonnull__ (2)))
  int vsscanf (const char * __restrict__ __source, const char * __restrict__ __format, __builtin_va_list __local_argv);
  __attribute__((__format__ (__gnu_scanf__, 1, 0))) __attribute__ ((__nonnull__ (1)))
  int vscanf(const char *__format, __builtin_va_list __local_argv);


#pragma GCC diagnostic pop
# 535 "C:/msys64/mingw64/include/stdio.h" 3
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _filbuf(FILE *_File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _flsbuf(int _Ch,FILE *_File);



  __attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) _fsopen(const char *_Filename,const char *_Mode,int _ShFlag);

  void __attribute__((__cdecl__)) clearerr(FILE *_File);
  int __attribute__((__cdecl__)) fclose(FILE *_File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fcloseall(void);



  __attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) _fdopen(int _FileHandle,const char *_Mode);

  int __attribute__((__cdecl__)) feof(FILE *_File);
  int __attribute__((__cdecl__)) ferror(FILE *_File);
  int __attribute__((__cdecl__)) fflush(FILE *_File);
  int __attribute__((__cdecl__)) fgetc(FILE *_File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fgetchar(void);
  int __attribute__((__cdecl__)) fgetpos(FILE * __restrict__ _File ,fpos_t * __restrict__ _Pos);
  int __attribute__((__cdecl__)) fgetpos64(FILE * __restrict__ _File ,fpos_t * __restrict__ _Pos);
  char *__attribute__((__cdecl__)) fgets(char * __restrict__ _Buf,int _MaxCount,FILE * __restrict__ _File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fileno(FILE *_File);







  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _tempnam(const char *_DirName,const char *_FilePrefix);



  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _flushall(void);
  FILE *__attribute__((__cdecl__)) fopen(const char * __restrict__ _Filename,const char * __restrict__ _Mode) ;
  FILE *__attribute__((__cdecl__)) fopen64(const char * __restrict__ filename,const char * __restrict__ mode);
  int __attribute__((__cdecl__)) fputc(int _Ch,FILE *_File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fputchar(int _Ch);
  int __attribute__((__cdecl__)) fputs(const char * __restrict__ _Str,FILE * __restrict__ _File);
  size_t __attribute__((__cdecl__)) fread(void * __restrict__ _DstBuf,size_t _ElementSize,size_t _Count,FILE * __restrict__ _File);
  FILE *__attribute__((__cdecl__)) freopen(const char * __restrict__ _Filename,const char * __restrict__ _Mode,FILE * __restrict__ _File) ;
  FILE *__attribute__((__cdecl__)) freopen64(const char * __restrict__ _Filename,const char * __restrict__ _Mode,FILE * __restrict__ _File);
  int __attribute__((__cdecl__)) fsetpos(FILE *_File,const fpos_t *_Pos);
  int __attribute__((__cdecl__)) fsetpos64(FILE *_File,const fpos_t *_Pos);
  int __attribute__((__cdecl__)) fseek(FILE *_File,long _Offset,int _Origin);
  long __attribute__((__cdecl__)) ftell(FILE *_File);

  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fseeki64(FILE *_File,long long _Offset,int _Origin);
  __attribute__ ((__dllimport__)) long long __attribute__((__cdecl__)) _ftelli64(FILE *_File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) fseeko(FILE *_File, _off_t _Offset, int _Origin);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) fseeko64(FILE *_File, _off64_t _Offset, int _Origin);
  __attribute__ ((__dllimport__)) _off_t __attribute__((__cdecl__)) ftello(FILE *_File);
  __attribute__ ((__dllimport__)) _off64_t __attribute__((__cdecl__)) ftello64(FILE *_File);
# 605 "C:/msys64/mingw64/include/stdio.h" 3
  size_t __attribute__((__cdecl__)) fwrite(const void * __restrict__ _Str,size_t _Size,size_t _Count,FILE * __restrict__ _File);
  int __attribute__((__cdecl__)) getc(FILE *_File);
  int __attribute__((__cdecl__)) getchar(void);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _getmaxstdio(void);
  char *__attribute__((__cdecl__)) gets(char *_Buffer)
    __attribute__((__warning__("Using gets() is always unsafe - use fgets() instead")));
  int __attribute__((__cdecl__)) _getw(FILE *_File);





  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _pclose(FILE *_File);
  __attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) _popen(const char *_Command,const char *_Mode);





  int __attribute__((__cdecl__)) putc(int _Ch,FILE *_File);
  int __attribute__((__cdecl__)) putchar(int _Ch);
  int __attribute__((__cdecl__)) puts(const char *_Str);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _putw(int _Word,FILE *_File);


  int __attribute__((__cdecl__)) remove(const char *_Filename);
  int __attribute__((__cdecl__)) rename(const char *_OldFilename,const char *_NewFilename);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _unlink(const char *_Filename);

  int __attribute__((__cdecl__)) unlink(const char *_Filename) ;


  void __attribute__((__cdecl__)) rewind(FILE *_File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _rmtmp(void);
  void __attribute__((__cdecl__)) setbuf(FILE * __restrict__ _File,char * __restrict__ _Buffer) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _setmaxstdio(int _Max);
  __attribute__ ((__dllimport__)) unsigned int __attribute__((__cdecl__)) _set_output_format(unsigned int _Format);
  __attribute__ ((__dllimport__)) unsigned int __attribute__((__cdecl__)) _get_output_format(void);
  int __attribute__((__cdecl__)) setvbuf(FILE * __restrict__ _File,char * __restrict__ _Buf,int _Mode,size_t _Size);

  __attribute__ ((__pure__))
  __attribute__((__format__ (__gnu_printf__, 1, 2))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) _scprintf(const char * __restrict__ _Format,...);
  __attribute__((__format__ (__gnu_scanf__, 3, 4))) __attribute__ ((__nonnull__ (3)))
  int __attribute__((__cdecl__)) _snscanf(const char * __restrict__ _Src,size_t _MaxCount,const char * __restrict__ _Format,...) ;







  __attribute__ ((__pure__))
  __attribute__((__format__(__ms_printf__, 1,0))) __attribute__ ((__nonnull__ (1)))
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _vscprintf(const char * __restrict__ _Format,va_list _ArgList);
  FILE *__attribute__((__cdecl__)) tmpfile(void) ;
  FILE *__attribute__((__cdecl__)) tmpfile64(void);
  char *__attribute__((__cdecl__)) tmpnam(char *_Buffer);
  int __attribute__((__cdecl__)) ungetc(int _Ch,FILE *_File);


  __attribute__((__format__ (__gnu_printf__, 3, 0))) __attribute__ ((__nonnull__ (3)))
  int __attribute__((__cdecl__)) _vsnprintf(char * __restrict__ _Dest,size_t _Count,const char * __restrict__ _Format,va_list _Args) ;
  __attribute__((__format__ (__gnu_printf__, 3, 4))) __attribute__ ((__nonnull__ (3)))
  int __attribute__((__cdecl__)) _snprintf(char * __restrict__ _Dest,size_t _Count,const char * __restrict__ _Format,...) ;
# 721 "C:/msys64/mingw64/include/stdio.h" 3
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wshadow"

  __attribute__((__format__ (__gnu_printf__, 3, 0))) __attribute__ ((__nonnull__ (3)))
  int vsnprintf (char * __restrict__ __stream, size_t __n, const char * __restrict__ __format, va_list __local_argv);

  __attribute__((__format__ (__gnu_printf__, 3, 4))) __attribute__ ((__nonnull__ (3)))
  int snprintf (char * __restrict__ __stream, size_t __n, const char * __restrict__ __format, ...);
# 787 "C:/msys64/mingw64/include/stdio.h" 3
#pragma GCC diagnostic pop
# 889 "C:/msys64/mingw64/include/stdio.h" 3
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _set_printf_count_output(int _Value);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _get_printf_count_output(void);
# 1210 "C:/msys64/mingw64/include/stdio.h" 3
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fgetc_nolock(FILE *_File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fputc_nolock(int _Char, FILE *_File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _getc_nolock(FILE *_File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _putc_nolock(int _Char, FILE *_File);
# 1225 "C:/msys64/mingw64/include/stdio.h" 3
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _lock_file(FILE *_File);
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _unlock_file(FILE *_File);

  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fclose_nolock(FILE *_File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fflush_nolock(FILE *_File);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _fread_nolock(void * __restrict__ _DstBuf,size_t _ElementSize,size_t _Count,FILE * __restrict__ _File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fseek_nolock(FILE *_File,long _Offset,int _Origin);
  __attribute__ ((__dllimport__)) long __attribute__((__cdecl__)) _ftell_nolock(FILE *_File);
  __extension__ __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fseeki64_nolock(FILE *_File,long long _Offset,int _Origin);
  __extension__ __attribute__ ((__dllimport__)) long long __attribute__((__cdecl__)) _ftelli64_nolock(FILE *_File);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _fwrite_nolock(const void * __restrict__ _DstBuf,size_t _Size,size_t _Count,FILE * __restrict__ _File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _ungetc_nolock(int _Ch,FILE *_File);
# 1247 "C:/msys64/mingw64/include/stdio.h" 3
  char *__attribute__((__cdecl__)) tempnam(const char *_Directory,const char *_FilePrefix) ;



  int __attribute__((__cdecl__)) fcloseall(void) ;
  FILE *__attribute__((__cdecl__)) fdopen(int _FileHandle,const char *_Format) ;
  int __attribute__((__cdecl__)) fgetchar(void) ;
  int __attribute__((__cdecl__)) fileno(FILE *_File) ;
  int __attribute__((__cdecl__)) flushall(void) ;
  int __attribute__((__cdecl__)) fputchar(int _Ch) ;
  int __attribute__((__cdecl__)) getw(FILE *_File) ;
  int __attribute__((__cdecl__)) putw(int _Ch,FILE *_File) ;
  int __attribute__((__cdecl__)) rmtmp(void) ;
# 1341 "C:/msys64/mingw64/include/stdio.h" 3
       
       
       
       

#pragma pack(pop)

# 1 "C:/msys64/mingw64/include/sec_api/stdio_s.h" 1 3
# 9 "C:/msys64/mingw64/include/sec_api/stdio_s.h" 3
# 1 "C:/msys64/mingw64/include/stdio.h" 1 3
# 10 "C:/msys64/mingw64/include/sec_api/stdio_s.h" 2 3
# 29 "C:/msys64/mingw64/include/sec_api/stdio_s.h" 3
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) clearerr_s(FILE *_File);

  size_t __attribute__((__cdecl__)) fread_s(void *_DstBuf,size_t _DstSize,size_t _ElementSize,size_t _Count,FILE *_File);


  int __attribute__((__cdecl__)) __stdio_common_vsprintf_s(unsigned long long _Options, char *_Str, size_t _Len, const char *_Format, _locale_t _Locale, va_list _ArgList);
  int __attribute__((__cdecl__)) __stdio_common_vsprintf_p(unsigned long long _Options, char *_Str, size_t _Len, const char *_Format, _locale_t _Locale, va_list _ArgList);
  int __attribute__((__cdecl__)) __stdio_common_vsnprintf_s(unsigned long long _Options, char *_Str, size_t _Len, size_t _MaxCount, const char *_Format, _locale_t _Locale, va_list _ArgList);
  int __attribute__((__cdecl__)) __stdio_common_vfprintf_s(unsigned long long _Options, FILE *_File, const char *_Format, _locale_t _Locale, va_list _ArgList);
  int __attribute__((__cdecl__)) __stdio_common_vfprintf_p(unsigned long long _Options, FILE *_File, const char *_Format, _locale_t _Locale, va_list _ArgList);

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vfscanf_s_l(FILE *_File, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vfscanf(0x0001ULL, _File, _Format, _Locale, _ArgList);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vfscanf_s(FILE *_File, const char *_Format, va_list _ArgList)
  {
    return _vfscanf_s_l(_File, _Format, ((void *)0), _ArgList);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vscanf_s_l(const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return _vfscanf_s_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vscanf_s(const char *_Format, va_list _ArgList)
  {
    return _vfscanf_s_l((__acrt_iob_func(0)), _Format, ((void *)0), _ArgList);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _fscanf_s_l(FILE *_File, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfscanf_s_l(_File, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) fscanf_s(FILE *_File, const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfscanf_s_l(_File, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _scanf_s_l(const char *_Format, _locale_t _Locale ,...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfscanf_s_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) scanf_s(const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfscanf_s_l((__acrt_iob_func(0)), _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vfscanf_l(FILE *_File, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vfscanf(0, _File, _Format, _Locale, _ArgList);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vscanf_l(const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return _vfscanf_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _fscanf_l(FILE *_File, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfscanf_l(_File, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _scanf_l(const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfscanf_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsscanf_s_l(const char *_Src, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vsscanf(0x0001ULL, _Src, (size_t)-1, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vsscanf_s(const char *_Src, const char *_Format, va_list _ArgList)
  {
    return _vsscanf_s_l(_Src, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _sscanf_s_l(const char *_Src, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsscanf_s_l(_Src, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) sscanf_s(const char *_Src, const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vsscanf_s_l(_Src, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsscanf_l(const char *_Src, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vsscanf(0, _Src, (size_t)-1, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _sscanf_l(const char *_Src, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsscanf_l(_Src, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }


  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snscanf_s_l(const char *_Src, size_t _MaxCount, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = __stdio_common_vsscanf(0x0001ULL, _Src, _MaxCount, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snscanf_s(const char *_Src, size_t _MaxCount, const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = __stdio_common_vsscanf(0x0001ULL, _Src, _MaxCount, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }


  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snscanf_l(const char *_Src, size_t _MaxCount, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = __stdio_common_vsscanf(0, _Src, _MaxCount, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }


  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vfprintf_s_l(FILE *_File, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vfprintf_s((*__local_stdio_printf_options()), _File, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vfprintf_s(FILE *_File, const char *_Format, va_list _ArgList)
  {
    return _vfprintf_s_l(_File, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vprintf_s_l(const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return _vfprintf_s_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vprintf_s(const char *_Format, va_list _ArgList)
  {
    return _vfprintf_s_l((__acrt_iob_func(1)), _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _fprintf_s_l(FILE *_File, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfprintf_s_l(_File, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _printf_s_l(const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfprintf_s_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) fprintf_s(FILE *_File, const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfprintf_s_l(_File, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) printf_s(const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfprintf_s_l((__acrt_iob_func(1)), _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsnprintf_c_l(char *_DstBuf, size_t _MaxCount, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vsprintf((*__local_stdio_printf_options()), _DstBuf, _MaxCount, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsnprintf_c(char *_DstBuf, size_t _MaxCount, const char *_Format, va_list _ArgList)
  {
    return _vsnprintf_c_l(_DstBuf, _MaxCount, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snprintf_c_l(char *_DstBuf, size_t _MaxCount, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsnprintf_c_l(_DstBuf, _MaxCount, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snprintf_c(char *_DstBuf, size_t _MaxCount, const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vsnprintf_c_l(_DstBuf, _MaxCount, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsnprintf_s_l(char *_DstBuf, size_t _DstSize, size_t _MaxCount, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vsnprintf_s((*__local_stdio_printf_options()), _DstBuf, _DstSize, _MaxCount, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vsnprintf_s(char *_DstBuf, size_t _DstSize, size_t _MaxCount, const char *_Format, va_list _ArgList)
  {
    return _vsnprintf_s_l(_DstBuf, _DstSize, _MaxCount, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsnprintf_s(char *_DstBuf, size_t _DstSize, size_t _MaxCount, const char *_Format, va_list _ArgList)
  {
    return _vsnprintf_s_l(_DstBuf, _DstSize, _MaxCount, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snprintf_s_l(char *_DstBuf, size_t _DstSize, size_t _MaxCount, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsnprintf_s_l(_DstBuf, _DstSize, _MaxCount, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snprintf_s(char *_DstBuf, size_t _DstSize, size_t _MaxCount, const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vsnprintf_s_l(_DstBuf, _DstSize, _MaxCount, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsprintf_s_l(char *_DstBuf, size_t _DstSize, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vsprintf_s((*__local_stdio_printf_options()), _DstBuf, _DstSize, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vsprintf_s(char *_DstBuf, size_t _Size, const char *_Format, va_list _ArgList)
  {
    return _vsprintf_s_l(_DstBuf, _Size, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _sprintf_s_l(char *_DstBuf, size_t _DstSize, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsprintf_s_l(_DstBuf, _DstSize, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) sprintf_s(char *_DstBuf, size_t _DstSize, const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vsprintf_s_l(_DstBuf, _DstSize, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vfprintf_p_l(FILE *_File, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vfprintf_p((*__local_stdio_printf_options()), _File, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vfprintf_p(FILE *_File, const char *_Format, va_list _ArgList)
  {
    return _vfprintf_p_l(_File, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vprintf_p_l(const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return _vfprintf_p_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vprintf_p(const char *_Format, va_list _ArgList)
  {
    return _vfprintf_p_l((__acrt_iob_func(1)), _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _fprintf_p_l(FILE *_File, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = __stdio_common_vfprintf_p((*__local_stdio_printf_options()), _File, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _fprintf_p(FILE *_File, const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfprintf_p_l(_File, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _printf_p_l(const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfprintf_p_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _printf_p(const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfprintf_p_l((__acrt_iob_func(1)), _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsprintf_p_l(char *_DstBuf, size_t _MaxCount, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vsprintf_p((*__local_stdio_printf_options()), _DstBuf, _MaxCount, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsprintf_p(char *_Dst, size_t _MaxCount, const char *_Format, va_list _ArgList)
  {
    return _vsprintf_p_l(_Dst, _MaxCount, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _sprintf_p_l(char *_DstBuf, size_t _MaxCount, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsprintf_p_l(_DstBuf, _MaxCount, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _sprintf_p(char *_Dst, size_t _MaxCount, const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vsprintf_p_l(_Dst, _MaxCount, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vscprintf_p_l(const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vsprintf_p(0x0002ULL, ((void *)0), 0, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vscprintf_p(const char *_Format, va_list _ArgList)
  {
    return _vscprintf_p_l(_Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _scprintf_p_l(const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vscprintf_p_l(_Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _scprintf_p(const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vscprintf_p_l(_Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vfprintf_l(FILE *_File, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vfprintf((*__local_stdio_printf_options()), _File, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vprintf_l(const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return _vfprintf_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _fprintf_l(FILE *_File, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfprintf_l(_File, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _printf_l(const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfprintf_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsnprintf_l(char *_DstBuf, size_t _MaxCount, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vsprintf(0x0001ULL, _DstBuf, _MaxCount, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snprintf_l(char *_DstBuf, size_t _MaxCount, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsnprintf_l(_DstBuf, _MaxCount, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsprintf_l(char *_DstBuf, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return _vsnprintf_l(_DstBuf, (size_t)-1, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _sprintf_l(char *_DstBuf, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsprintf_l(_DstBuf, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vscprintf_l(const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vsprintf(0x0002ULL, ((void *)0), 0, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _scprintf_l(const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vscprintf_l(_Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
# 583 "C:/msys64/mingw64/include/sec_api/stdio_s.h" 3
 
 
 
 
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) fopen_s(FILE **_File,const char *_Filename,const char *_Mode);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) freopen_s(FILE** _File, const char *_Filename, const char *_Mode, FILE *_Stream);

  __attribute__ ((__dllimport__)) char* __attribute__((__cdecl__)) gets_s(char*,rsize_t);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) tmpfile_s(FILE **_File);

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) tmpnam_s(char*,rsize_t);
 
# 912 "C:/msys64/mingw64/include/sec_api/stdio_s.h" 3
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _fread_nolock_s(void *_DstBuf,size_t _DstSize,size_t _ElementSize,size_t _Count,FILE *_File);
# 1349 "C:/msys64/mingw64/include/stdio.h" 2 3
# 24 "include/common_libs.h" 2
# 9 "include/SDK_display.h" 2







# 15 "include/SDK_display.h"
typedef struct{

    SDL_Window *window;
    SDL_WindowFlags window_flag;
    SDL_Renderer *renderer;
    TTF_TextEngine *text_engine;
    int width, height;

} SDK_Display;
# 35 "include/SDK_display.h"
__attribute__((dllimport)) SDK_Display* SDK_CreateDisplay(const char* window_title, int window_width, int window_height, SDL_WindowFlags window_flag);






__attribute__((dllimport)) void SDK_DestroyDisplay(SDK_Display *display);
# 52 "include/SDK_display.h"
__attribute__((dllimport)) int SDK_DisplaySetWindowed(SDK_Display *display, int width, int height);
# 62 "include/SDK_display.h"
__attribute__((dllimport)) int SDK_DisplaySetFullscreen(SDK_Display *display);
# 4 "include/SDK.h" 2
# 1 "include/SDK_input.h" 1
# 17 "include/SDK_input.h"
typedef struct{

    bool *previous_keyboard;
    const bool *current_keyboard;
    int num_keys;

    SDL_MouseButtonFlags previous_mouse, current_mouse;
    float mouse_x, mouse_y;

} SDK_Input;
# 39 "include/SDK_input.h"
__attribute__((dllimport)) SDK_Input* SDK_CreateInput();






__attribute__((dllimport)) void SDK_DestroyInput(SDK_Input *input);





__attribute__((dllimport)) int SDK_Keyboard_Pressed(SDK_Input *input, SDL_Scancode scancode);




__attribute__((dllimport)) int SDK_Keyboard_JustPressed(SDK_Input *input, SDL_Scancode scancode);




__attribute__((dllimport)) int SDK_Keyboard_JustReleased(SDK_Input *input, SDL_Scancode scancode);






__attribute__((dllimport)) void SDK_Update_Previous_KeyboardState(SDK_Input *input);





__attribute__((dllimport)) int SDK_Mouse_Pressed(SDK_Input *input, uint32_t SDL_MouseButtonMask);




__attribute__((dllimport)) int SDK_Mouse_JustPressed(SDK_Input *input, uint32_t SDL_MouseButtonMask);




__attribute__((dllimport)) int SDK_Mouse_JustReleased(SDK_Input *input, uint32_t SDL_MouseButtonMask);




__attribute__((dllimport)) void SDK_Mouse_UpdatePosition(SDK_Input *input);






__attribute__((dllimport)) void SDK_Update_Previous_MouseState(SDK_Input *input);







__attribute__((dllimport)) void SDK_Update_Previous_Inputs(SDK_Input *input);
# 5 "include/SDK.h" 2
# 1 "include/SDK_text.h" 1
# 19 "include/SDK_text.h"
typedef struct SDK_Text{

    void *data;
    SDL_FRect rect;

} SDK_Text;
# 36 "include/SDK_text.h"
__attribute__((dllimport)) SDK_Text* SDK_CreateText(SDK_Display *display, const char *font_path, float font_size, int x, int y, SDL_Color color);







__attribute__((dllimport)) void SDK_DestroyText(SDK_Text *text);
# 53 "include/SDK_text.h"
__attribute__((dllimport)) int SDK_Text_UpdateFont(SDK_Text *text, const char *font_path, float font_size);
# 62 "include/SDK_text.h"
__attribute__((dllimport)) int SDK_Text_UpdateFontSize(SDK_Text *text, float font_size);
# 71 "include/SDK_text.h"
__attribute__((dllimport)) int SDK_Text_UpdateString(SDK_Text *text, const char *string);
# 80 "include/SDK_text.h"
__attribute__((dllimport)) int SDK_Text_UpdatePosition(SDK_Text *text, int x, int y);





__attribute__((dllimport)) int SDK_Text_UpdateSize(SDK_Text *text);
# 96 "include/SDK_text.h"
__attribute__((dllimport)) int SDK_Text_UpdateWrapWidth(SDK_Text *text, int wrap_width);
# 105 "include/SDK_text.h"
__attribute__((dllimport)) int SDK_Text_UpdateColor(SDK_Text *text, SDL_Color color);
# 114 "include/SDK_text.h"
__attribute__((dllimport)) int SDK_Render_Text(SDK_Text *text);
# 6 "include/SDK.h" 2
# 1 "include/SDK_time.h" 1
# 21 "include/SDK_time.h"
typedef struct{

    double dt, fps;
    int fps_limit;
    bool fps_updated;
    void *data;

} SDK_Time;
# 40 "include/SDK_time.h"
__attribute__((dllimport)) SDK_Time* SDK_CreateTime(int fps_limit);






__attribute__((dllimport)) void SDK_DestroyTime(SDK_Time *time);
# 66 "include/SDK_time.h"
__attribute__((dllimport)) int SDK_TimeFunctions(SDK_Time *time);







__attribute__((dllimport)) int SDK_CalculateDT(SDK_Time *time);
# 86 "include/SDK_time.h"
__attribute__((dllimport)) int SDK_CalculateFPS(SDK_Time *time);
# 96 "include/SDK_time.h"
__attribute__((dllimport)) int SDK_LimitFPS(SDK_Time *time);
# 7 "include/SDK.h" 2
# 1 "include/SDK_init.h" 1
# 31 "include/SDK_init.h"
__attribute__((dllimport)) int SDK_Init(
    void (*func)(void*), void *func_data, bool memory_failure_abort, bool print_memtrack_info, bool auto_null_pointers);






__attribute__((dllimport)) void SDK_Quit();
# 8 "include/SDK.h" 2
# 1 "include/SDK_collision.h" 1
# 11 "include/SDK_collision.h"
enum SDK_CollisionType{

    SDK_COLLISION_NONE,
    SDK_COLLISION_LEFT,
    SDK_COLLISION_RIGHT,
    SDK_COLLISION_UP,
    SDK_COLLISION_DOWN,
    SDK_COLLISION_ERROR

};






__attribute__((dllimport)) int SDK_RectCollision(const SDL_FRect *a, const SDL_FRect *b);
# 36 "include/SDK_collision.h"
__attribute__((dllimport)) enum SDK_CollisionType SDK_RectCollision_Dir(const SDL_FRect *target, const SDL_FRect *source);
# 9 "include/SDK.h" 2
# 1 "include/SDK_audio.h" 1
# 11 "include/SDK_audio.h"
typedef struct{

    MIX_Track *track;
    SDL_PropertiesID track_prop;
    float track_volume;
    int16_t loops;

} SDK_Track;



typedef struct{

    float master_volume;
    MIX_Mixer *mixer;
    SDK_Track *tracks;
    uint16_t track_capacity;

} SDK_Audio_Handler;



__attribute__((dllimport)) SDK_Audio_Handler* SDK_Create_AudioHandler(uint16_t track_capacity, float master_volume);
__attribute__((dllimport)) void SDK_Destroy_AudioHandler(SDK_Audio_Handler *audio_handler);
__attribute__((dllimport)) SDK_Track* SDK_Audio_GetTrack(SDK_Audio_Handler *audio_handler, uint16_t audio_track);
__attribute__((dllimport)) int SDK_Audio_PlayTrack(SDK_Audio_Handler *audio_handler, uint16_t audio_track);
__attribute__((dllimport)) int SDK_Audio_StopTrack(SDK_Audio_Handler *audio_handler, uint16_t audio_track, int64_t fade_out_frames);
__attribute__((dllimport)) int SDK_Audio_SetTrackAudio(SDK_Audio_Handler *audio_handler, uint16_t audio_track, MIX_Audio *audio);
__attribute__((dllimport)) int SDK_Audio_SetTrackProp(SDK_Audio_Handler *audio_handler, uint16_t audio_track, const char *prop_name, int64_t value);
__attribute__((dllimport)) int SDK_Audio_SetMasterVolume(SDK_Audio_Handler *audio_handler, float master_volume);
__attribute__((dllimport)) int SDK_Audio_SetTrackVolume(SDK_Audio_Handler *audio_handler, uint16_t audio_track, float track_volume);
# 10 "include/SDK.h" 2

# 1 "include/sprite/SDK_sprite.h" 1
# 10 "include/sprite/SDK_sprite.h"
# 1 "include/sprite/../SDK_display.h" 1
# 11 "include/sprite/SDK_sprite.h" 2
# 1 "include/sprite/../SDK_time.h" 1
# 12 "include/sprite/SDK_sprite.h" 2




enum SDK_SpriteType{

    SDK_STATIC_SPRITE,
    SDK_ANIMATED_SPRITE

};
# 31 "include/sprite/SDK_sprite.h"
typedef struct{

    const enum SDK_SpriteType sprite_type;
    void *data;

    SDL_FRect render_rect;
    SDL_FlipMode flip_mode;
    double scale;
    double angle;
    SDL_FPoint pivot_point;


} SDK_Sprite;
# 56 "include/sprite/SDK_sprite.h"
__attribute__((dllimport)) SDK_Sprite* SDK_Create_StaticSprite(SDK_Display *display, const char *texture_path, SDL_FPoint sprite_pos, SDL_FRect src_rect);
# 69 "include/sprite/SDK_sprite.h"
__attribute__((dllimport)) SDK_Sprite* SDK_Create_AnimatedSprite(SDK_Display *display, const char *texture_path, SDL_FPoint sprite_pos, SDL_FRect src_rect);







__attribute__((dllimport)) void SDK_DestroySprite(SDK_Sprite *sprite);







__attribute__((dllimport)) int SDK_Render_Sprite(SDK_Display *display, SDK_Sprite *sprite);







__attribute__((dllimport)) SDL_Texture* SDK_Sprite_GetTexture(SDK_Sprite *sprite);
# 104 "include/sprite/SDK_sprite.h"
__attribute__((dllimport)) int SDK_Sprite_AllocAnimation(SDK_Sprite *animated_sprite, uint16_t animation_capacity);
# 113 "include/sprite/SDK_sprite.h"
__attribute__((dllimport)) int SDK_Sprite_AddAnimation(SDK_Sprite *animated_sprite, SDL_FRect src_rect, uint16_t amount_frames, double fps, double offset_width, uint16_t animation_index);







__attribute__((dllimport)) int SDK_Sprite_UpdateAnimation(SDK_Sprite *animated_sprite, SDK_Time *time);
# 131 "include/sprite/SDK_sprite.h"
__attribute__((dllimport)) int SDK_Sprite_SelectAnimation(SDK_Sprite *animated_sprite, uint16_t animation_index);
# 146 "include/sprite/SDK_sprite.h"
__attribute__((dllimport)) int SDK_Sprite_SetPlayAnimation(SDK_Sprite *animated_sprite, uint16_t animation_index, bool play);
# 159 "include/sprite/SDK_sprite.h"
__attribute__((dllimport)) int SDK_Sprite_SetLoopAnimation(SDK_Sprite *animated_sprite, uint16_t animation_index, bool loop);
# 170 "include/sprite/SDK_sprite.h"
__attribute__((dllimport)) int SDK_Sprite_EnableAnimation(SDK_Sprite *animated_sprite, uint16_t animation_index, bool enabled);
# 181 "include/sprite/SDK_sprite.h"
__attribute__((dllimport)) int SDK_Sprite_UpdateScale(SDK_Sprite *sprite, double new_scale);
# 12 "include/SDK.h" 2
# 1 "include/sprite/SDK_sprite_manager.h" 1
# 11 "include/sprite/SDK_sprite_manager.h"
# 1 "include/sprite/SDK_sprite.h" 1
# 12 "include/sprite/SDK_sprite_manager.h" 2




typedef struct{

    void *data;

} SDK_Sprite_Manager;
# 31 "include/sprite/SDK_sprite_manager.h"
__attribute__((dllimport)) SDK_Sprite_Manager* SDK_Create_SpriteManager(uint64_t max_z_depth, uint64_t max_sprites);






__attribute__((dllimport)) void SDK_Destroy_SpriteManager(SDK_Sprite_Manager *manager);
# 52 "include/sprite/SDK_sprite_manager.h"
__attribute__((dllimport)) int SDK_SpriteManager_QueueSprite(SDK_Sprite_Manager *manager, SDK_Sprite *sprite, uint64_t z_depth);







__attribute__((dllimport)) int SDK_Render_SpriteManager(SDK_Display *display, SDK_Sprite_Manager *manager);
# 13 "include/SDK.h" 2
# 2 "main.c" 2






typedef enum{

    IDLE_ANIMATION,
    MAX_ANIMATIONS

} Player_Animations;




void update_text(SDK_Text *text, double fps){

    char fps_text[40];

    snprintf(fps_text, sizeof(fps_text), "FPS: %.2f", fps);

    SDK_Text_UpdateString(text, fps_text);

}



int main(){

    if(SDK_Init(
# 32 "main.c" 3 4
               ((void *)0)
# 32 "main.c"
                   , 
# 32 "main.c" 3 4
                     ((void *)0)
# 32 "main.c"
                         , true, true, true)){
        return 1;
    }




    SDK_Audio_Handler *audio_handler = SDK_Create_AudioHandler(4, 1.0f);
    SDK_Display *display = SDK_CreateDisplay("SDK window", 800, 800, 0x0000000000000080ULL);
    SDK_Time *time = SDK_CreateTime(144);
    SDK_Input *input = SDK_CreateInput();
    SDK_Text *text = SDK_CreateText(display, 
# 43 "main.c" 3 4
                                            ((void *)0)
# 43 "main.c"
                                                , 20, 5, 5, (SDL_Color){255, 255, 255, 255});
    SDK_Sprite_Manager *manager = SDK_Create_SpriteManager(16, 16);


    MIX_Audio *audio = MIX_LoadAudio(audio_handler->mixer, "SDK1/assets/sample_wav.wav", true);
    if(!audio){
        printf("audio failed to laod\n");
        return 1;
    }



    SDK_Sprite *player = SDK_Create_AnimatedSprite(display, "assets/char_spritesheet.png", (SDL_FPoint){100, 0}, (SDL_FRect){18, 16, 13, 16});
    if(!player){
        SDL_Log("Error loading player: %s\n", SDL_GetError());
        return 1;
    }


    SDK_Sprite_AllocAnimation(player, MAX_ANIMATIONS);
    SDK_Sprite_AddAnimation(player, (SDL_FRect){18, 16, 13, 16}, 6, 5.0f, 3.0f, IDLE_ANIMATION);
    SDK_Sprite_SetLoopAnimation(player, IDLE_ANIMATION, true);
    SDK_Sprite_EnableAnimation(player, IDLE_ANIMATION, true);



    SDK_Sprite *square = SDK_Create_StaticSprite(display, "./assets/blue.bmp", (SDL_FPoint){10.0f, 0.0f}, (SDL_FRect){0.0f, 0.0f, 400.0f, 400.0f});
    if(!square){
        SDL_Log("Error loading square: %s\n", SDL_GetError());
        return 1;
    }

    SDK_Sprite_UpdateScale(player, 8.0f);
    SDL_SetTextureScaleMode(SDK_Sprite_GetTexture(player), SDL_SCALEMODE_NEAREST);


    if(!text){
        return 1;
    }




    SDL_FRect a = {0.0f, 0.0f, 10.0f, 10.0f};
    SDL_FRect b = {0.0f, 9.0f, 10.0f, 10.0f};



    if(SDK_RectCollision(&a, &b)){
        printf("Ayo jit, these rects are lowkey touching my fellow\n");
    } else{
        printf("These hoodlums ain't touching\n");
    }



    switch(SDK_RectCollision_Dir(&a, &b)){

        case(SDK_COLLISION_UP):
            printf("colliding on top\n");
            break;

        case(SDK_COLLISION_DOWN):
            printf("colliding on bottom\n");
            break;

        case(SDK_COLLISION_NONE):
            printf("these jits ain't colliding yo\n");
            break;

        default:
            printf("some collision direction\n");
            break;
    }


    bool running = true;
    SDL_Event e;



    while(running){

        while(SDL_PollEvent(&e)){

            if(e.type == SDL_EVENT_QUIT){
                running = false;
            }

        }

        if(SDK_Keyboard_JustPressed(input, SDL_SCANCODE_ESCAPE)){
            running = false;
        }

        if(SDK_Keyboard_JustPressed(input, SDL_SCANCODE_UP)){

        }


        if(SDK_Keyboard_JustPressed(input, SDL_SCANCODE_1)){
            time->fps_limit = 60.0f;
        }
        if(SDK_Keyboard_JustPressed(input, SDL_SCANCODE_2)){
            time->fps_limit = 144.0f;
        }
        if(SDK_Keyboard_JustPressed(input, SDL_SCANCODE_3)){
            time->fps_limit = 240.0f;
        }


        if(time->fps_updated)
            update_text(text, time->fps);


        SDL_RenderClear(display->renderer);

        SDK_SpriteManager_QueueSprite(manager, player, 1);
        SDK_SpriteManager_QueueSprite(manager, square, 0);


        SDK_Render_SpriteManager(display, manager);
        SDK_Render_Text(text);


        SDL_RenderPresent(display->renderer);


        SDK_Sprite_UpdateAnimation(player, time);
        SDK_TimeFunctions(time);
        SDK_Update_Previous_Inputs(input);
    }

    SDK_DestroyDisplay(display);
    display = 
# 177 "main.c" 3 4
             ((void *)0)
# 177 "main.c"
                 ;
    SDK_DestroyInput(input);
    input = 
# 179 "main.c" 3 4
           ((void *)0)
# 179 "main.c"
               ;
    SDK_DestroyTime(time);
    time = 
# 181 "main.c" 3 4
          ((void *)0)
# 181 "main.c"
              ;
    SDK_DestroyText(text);
    text = 
# 183 "main.c" 3 4
          ((void *)0)
# 183 "main.c"
              ;
    SDK_Destroy_SpriteManager(manager);
    manager = 
# 185 "main.c" 3 4
             ((void *)0)
# 185 "main.c"
                 ;
    SDK_Destroy_AudioHandler(audio_handler);
    audio_handler = 
# 187 "main.c" 3 4
                   ((void *)0)
# 187 "main.c"
                       ;
    SDK_DestroySprite(player);
    player = 
# 189 "main.c" 3 4
            ((void *)0)
# 189 "main.c"
                ;
    SDK_DestroySprite(square);
    square = 
# 191 "main.c" 3 4
            ((void *)0)
# 191 "main.c"
                ;

    SDK_Quit();

    return 0;
}
