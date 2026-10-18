/*
 * Strict Comprehensive Automated Test Suite for SDLite & debugSDLite
 *
 * Tests all documented contracts, NULL guards, boundary conditions,
 * resource lifetimes, and memory leak tracking.
 * Uses fork() isolation for tests that may segfault so the entire
 * suite runs to completion and reports every failure clearly.
 */

#include "SDLite/SDLite.h"
#include <math.h>
#ifndef _WIN32
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#endif

#ifdef __cplusplus
extern "C" {
#endif
SDLite_API int SDLite_Input_MouseJustReleased(const SDLite_Input *input, uint32_t SDL_MouseButtonMask);
#ifdef __cplusplus
}
#endif

static int g_tests_run = 0;
static int g_tests_passed = 0;
static int g_tests_failed = 0;

#define TEST_ASSERT(cond, msg)                                                              \
    do {                                                                                    \
        g_tests_run++;                                                                      \
        if (cond) {                                                                         \
            g_tests_passed++;                                                               \
        } else {                                                                            \
            g_tests_failed++;                                                               \
            fprintf(stderr, "  [FAIL] %s:%d: %s (%s)\n", __FILE__, __LINE__, msg, #cond);   \
        }                                                                                   \
    } while (0)

/*
 * Runs `cond` in a forked child process on POSIX to isolate potential segfaults/aborts.
 * Falls back to TEST_ASSERT on Windows.
 */
#ifndef _WIN32
#define TEST_SAFE_ASSERT(cond, msg)                                                         \
    do {                                                                                    \
        g_tests_run++;                                                                      \
        fflush(stdout);                                                                     \
        fflush(stderr);                                                                     \
        pid_t pid = fork();                                                                 \
        if (pid == 0) {                                                                     \
            bool ok = (cond);                                                               \
            _exit(ok ? 0 : 1);                                                              \
        } else if (pid > 0) {                                                               \
            int status = 0;                                                                 \
            waitpid(pid, &status, 0);                                                       \
            if (WIFSIGNALED(status)) {                                                      \
                g_tests_failed++;                                                           \
                fprintf(stderr, "  [FAIL] %s:%d: %s (CRASHED with signal %d: %s)\n",        \
                        __FILE__, __LINE__, msg, WTERMSIG(status), #cond);                  \
            } else if (WIFEXITED(status) && WEXITSTATUS(status) == 0) {                     \
                g_tests_passed++;                                                           \
            } else {                                                                        \
                g_tests_failed++;                                                           \
                fprintf(stderr, "  [FAIL] %s:%d: %s (%s)\n",                                \
                        __FILE__, __LINE__, msg, #cond);                                    \
            }                                                                               \
        }                                                                                   \
    } while (0)
#else
#define TEST_SAFE_ASSERT(cond, msg) TEST_ASSERT(cond, msg)
#endif

#define FLOAT_EQ(a, b, eps) (fabs((double)(a) - (double)(b)) <= (eps))

static int g_err_handler_called = 0;
static void custom_malloc_err_handler(void *arg) {
    if (arg) {
        int *val = (int *)arg;
        (*val)++;
    }
    g_err_handler_called++;
}

static int SDLCALL memtrack_worker_thread(void *data) {
    (void)data;
    for (int i = 0; i < 32; i++) {
        int *arr = (int *)t_malloc(sizeof(int) * 16);
        if (!arr) return 1;
        arr[0] = i;
        arr = (int *)t_realloc(arr, sizeof(int) * 32);
        if (!arr || arr[0] != i) return 1;
        t_free(arr);
    }
    return 0;
}

/* Helper to check if a header file contains a specific symbol declaration */
static bool file_contains_string(const char *path, const char *needle) {
    FILE *fp = fopen(path, "r");
    if (!fp) return false;
    char line[512];
    bool found = false;
    while (fgets(line, sizeof(line), fp)) {
        if (strstr(line, needle) != NULL) {
            found = true;
            break;
        }
    }
    fclose(fp);
    return found;
}

/* =========================================================================
 * 1. Version & Header Contract Tests
 * ========================================================================= */
static void test_version_and_headers(void) {
    printf("[Suite 1] Testing SDLite_version, MemTrack_Get_Version, & Header Contracts...\n");

    int major = -1, minor = -1, micro = -1;
    SDLite_Get_Version(&major, &minor, &micro);
    TEST_ASSERT(major == SDLITE_MAJOR_VERSION, "SDLite major version matches macro");
    TEST_ASSERT(minor == SDLITE_MINOR_VERSION, "SDLite minor version matches macro");
    TEST_ASSERT(micro == SDLITE_MICRO_VERSION, "SDLite micro version matches macro");

    /* Null pointer safety */
    major = 99; minor = 99; micro = 99;
    SDLite_Get_Version(NULL, &minor, &micro);
    TEST_ASSERT(minor == 99 && micro == 99, "SDLite_Get_Version(NULL, ...) does not modify outputs");
    SDLite_Get_Version(&major, NULL, &micro);
    TEST_ASSERT(major == 99 && micro == 99, "SDLite_Get_Version(..., NULL, ...) does not modify outputs");
    SDLite_Get_Version(&major, &minor, NULL);
    TEST_ASSERT(major == 99 && minor == 99, "SDLite_Get_Version(..., NULL) does not modify outputs");
    SDLite_Get_Version(NULL, NULL, NULL);

    int mt_maj = 0, mt_min = 0, mt_mic = 0;
    TEST_ASSERT(MemTrack_Get_Version(&mt_maj, &mt_min, &mt_mic) == 0, "MemTrack_Get_Version succeeds");
    TEST_ASSERT(mt_maj == 1 && mt_min == 4 && mt_mic == 0, "MemTrack version is 1.4.0");
    TEST_ASSERT(MemTrack_Get_Version(NULL, &mt_min, &mt_mic) == 1, "MemTrack_Get_Version rejects NULL major");
    TEST_ASSERT(MemTrack_Get_Version(&mt_maj, NULL, &mt_mic) == 1, "MemTrack_Get_Version rejects NULL minor");
    TEST_ASSERT(MemTrack_Get_Version(&mt_maj, &mt_min, NULL) == 1, "MemTrack_Get_Version rejects NULL micro");

}

/* =========================================================================
 * 2. Init & MemTrack Strict Tests
 * ========================================================================= */
static void test_init_and_memtrack(void) {
    printf("[Suite 2] Testing SDLite_Init parameter wiring & MemTrack...\n");

    /*
     * Strict test for SDLite_Init(..., abort_if_mem_error, auto_null_pointers):
     * main() called SDLite_Init(..., abort_if_mem_error = true, auto_null_pointers = false).
     * Therefore auto_null_pointers MUST be false right now: freeing a pointer via
     * MemTrack_Safe_free / MemTrack_Debug_free should NOT null the pointer!
     */
    void *test_ptr = MemTrack_Safe_malloc(32);
    TEST_ASSERT(test_ptr != NULL, "MemTrack_Safe_malloc(32) succeeds");
    MemTrack_Safe_free(&test_ptr);
    TEST_ASSERT(test_ptr != NULL,
                "SDLite_Init(..., abort_if_mem_error=true, auto_null_pointers=false) must NOT enable auto_null_pointers");

    /* Now re-initialize MemTrack with auto_null_pointers = true, abort_if_mem_error = false */
    MemTrack_Quit();
    TEST_ASSERT(MemTrack_Init(custom_malloc_err_handler, NULL, true, false) == 0,
                "MemTrack_Init with auto_null_pointers=true succeeds");
    TEST_ASSERT(MemTrack_Init(NULL, NULL, true, false) == 1,
                "MemTrack_Init fails when already initialized");

    size_t base_usage = MemTrack_Memory_Usage();
    TEST_ASSERT(base_usage == 0, "Baseline MemTrack_Memory_Usage is 0");
    TEST_ASSERT(MemTrack_Is_Memory_Leak() == 0, "Baseline MemTrack_Is_Memory_Leak is 0");

    /* Direct Debug API tests */
    void *d_ptr = MemTrack_Debug_malloc(128, __FILE__, __LINE__);
    TEST_ASSERT(d_ptr != NULL, "MemTrack_Debug_malloc allocates 128 bytes");
    TEST_ASSERT(MemTrack_Memory_Usage() == 128, "MemTrack_Memory_Usage reflects 128 bytes");
    TEST_ASSERT(MemTrack_Is_Memory_Leak() == 1, "MemTrack_Is_Memory_Leak detects active allocation");

    d_ptr = MemTrack_Debug_realloc(d_ptr, 256, __FILE__, __LINE__);
    TEST_ASSERT(d_ptr != NULL, "MemTrack_Debug_realloc resizes to 256 bytes");
    TEST_ASSERT(MemTrack_Memory_Usage() == 256, "MemTrack_Memory_Usage reflects 256 bytes after realloc");
    TEST_ASSERT(MemTrack_Debug_realloc(NULL, 64, __FILE__, __LINE__) == NULL, "MemTrack_Debug_realloc(NULL) returns NULL");

    int *c_ptr = (int *)MemTrack_Debug_calloc(10, sizeof(int), __FILE__, __LINE__);
    TEST_ASSERT(c_ptr != NULL, "MemTrack_Debug_calloc allocates 10 ints");
    bool all_zero = true;
    for (int i = 0; i < 10; i++) {
        if (c_ptr[i] != 0) all_zero = false;
    }
    TEST_ASSERT(all_zero, "MemTrack_Debug_calloc zero-initializes memory");
    TEST_ASSERT(MemTrack_Memory_Usage() == 256 + 10 * sizeof(int), "MemTrack_Memory_Usage includes calloc");

    char *s_dup = MemTrack_Debug_strdup("hello_sdlite", __FILE__, __LINE__);
    TEST_ASSERT(s_dup != NULL && strcmp(s_dup, "hello_sdlite") == 0, "MemTrack_Debug_strdup duplicates string");
    TEST_ASSERT(MemTrack_Debug_strdup(NULL, __FILE__, __LINE__) == NULL, "MemTrack_Debug_strdup(NULL) returns NULL");

    char *sn_dup = MemTrack_Debug_strndup("hello_sdlite", 5, __FILE__, __LINE__);
    TEST_ASSERT(sn_dup != NULL && strcmp(sn_dup, "hello") == 0, "MemTrack_Debug_strndup truncates at size");
    TEST_ASSERT(MemTrack_Debug_strndup(NULL, 5, __FILE__, __LINE__) == NULL, "MemTrack_Debug_strndup(NULL) returns NULL");

    MemTrack_Debug_free((void **)&sn_dup, __FILE__, __LINE__);
    TEST_ASSERT(sn_dup == NULL, "MemTrack_Debug_free auto-nulls pointer when auto_null_pointers=true");
    MemTrack_Debug_free((void **)&s_dup, __FILE__, __LINE__);
    MemTrack_Debug_free((void **)&c_ptr, __FILE__, __LINE__);
    MemTrack_Debug_free(&d_ptr, __FILE__, __LINE__);
    MemTrack_Debug_free(NULL, __FILE__, __LINE__);
    MemTrack_Debug_free(&d_ptr, __FILE__, __LINE__);

    TEST_ASSERT(MemTrack_Memory_Usage() == 0, "MemTrack_Memory_Usage returns to 0 after freeing all debug allocations");
    TEST_ASSERT(MemTrack_Is_Memory_Leak() == 0, "MemTrack_Is_Memory_Leak returns to 0");

    /* Safe API tests */
    void *safe_m = MemTrack_Safe_malloc(64);
    TEST_ASSERT(safe_m != NULL, "MemTrack_Safe_malloc succeeds");
    safe_m = MemTrack_Safe_realloc(safe_m, 128);
    TEST_ASSERT(safe_m != NULL, "MemTrack_Safe_realloc succeeds");
    TEST_ASSERT(MemTrack_Safe_realloc(NULL, 64) == NULL, "MemTrack_Safe_realloc(NULL) returns NULL");
    MemTrack_Safe_free(&safe_m);
    TEST_ASSERT(safe_m == NULL, "MemTrack_Safe_free auto-nulls pointer");

    void *safe_c = MemTrack_Safe_calloc(4, 8);
    TEST_ASSERT(safe_c != NULL, "MemTrack_Safe_calloc succeeds");
    MemTrack_Safe_free(&safe_c);

    char *safe_s = MemTrack_Safe_strdup("safe_str");
    TEST_ASSERT(safe_s != NULL && strcmp(safe_s, "safe_str") == 0, "MemTrack_Safe_strdup succeeds");
    TEST_ASSERT(MemTrack_Safe_strdup(NULL) == NULL, "MemTrack_Safe_strdup(NULL) returns NULL");
    MemTrack_Safe_free((void **)&safe_s);

    char *safe_sn = MemTrack_Safe_strndup("safe_str", 4);
    TEST_ASSERT(safe_sn != NULL && strcmp(safe_sn, "safe") == 0, "MemTrack_Safe_strndup succeeds");
    TEST_ASSERT(MemTrack_Safe_strndup(NULL, 4) == NULL, "MemTrack_Safe_strndup(NULL) returns NULL");
    MemTrack_Safe_free((void **)&safe_sn);

    /* Multithreaded stress test */
    SDL_Thread *t1 = SDL_CreateThread(memtrack_worker_thread, "mt_worker_1", NULL);
    SDL_Thread *t2 = SDL_CreateThread(memtrack_worker_thread, "mt_worker_2", NULL);
    int r1 = -1, r2 = -1;
    SDL_WaitThread(t1, &r1);
    SDL_WaitThread(t2, &r2);
    TEST_ASSERT(r1 == 0 && r2 == 0, "Multithreaded t_malloc/t_realloc/t_free workers succeeded");
    TEST_ASSERT(MemTrack_Memory_Usage() == 0, "Zero leaked bytes after multithreaded allocations");
}

/* =========================================================================
 * 3. Collision Tests
 * ========================================================================= */
static void test_collision(void) {
    printf("[Suite 3] Testing SDLite_collision...\n");

    SDL_FRect rect = {10.0f, 20.0f, 100.0f, 50.0f};
    SDL_FPoint pt_in = {50.0f, 40.0f};
    SDL_FPoint pt_left = {5.0f, 40.0f};
    SDL_FPoint pt_right = {120.0f, 40.0f};
    SDL_FPoint pt_top = {50.0f, 10.0f};
    SDL_FPoint pt_bottom = {50.0f, 80.0f};
    SDL_FPoint pt_edge_left = {10.0f, 40.0f};
    SDL_FPoint pt_edge_right = {110.0f, 40.0f};
    SDL_FPoint pt_edge_top = {50.0f, 20.0f};
    SDL_FPoint pt_edge_bottom = {50.0f, 70.0f};

    TEST_ASSERT(SDLite_Collision_RectPoint(NULL, &pt_in) == -1, "RectPoint(NULL, pt) returns -1");
    TEST_ASSERT(SDLite_Collision_RectPoint(&rect, NULL) == -1, "RectPoint(rect, NULL) returns -1");
    TEST_ASSERT(SDLite_Collision_RectPoint(NULL, NULL) == -1, "RectPoint(NULL, NULL) returns -1");

    TEST_ASSERT(SDLite_Collision_RectPoint(&rect, &pt_in) == 1, "Point strictly inside rect collides");
    TEST_ASSERT(SDLite_Collision_RectPoint(&rect, &pt_left) == 0, "Point to the left does not collide");
    TEST_ASSERT(SDLite_Collision_RectPoint(&rect, &pt_right) == 0, "Point to the right does not collide");
    TEST_ASSERT(SDLite_Collision_RectPoint(&rect, &pt_top) == 0, "Point above does not collide");
    TEST_ASSERT(SDLite_Collision_RectPoint(&rect, &pt_bottom) == 0, "Point below does not collide");
    TEST_ASSERT(SDLite_Collision_RectPoint(&rect, &pt_edge_left) == 0, "Point on left edge does not collide");
    TEST_ASSERT(SDLite_Collision_RectPoint(&rect, &pt_edge_right) == 0, "Point on right edge does not collide");
    TEST_ASSERT(SDLite_Collision_RectPoint(&rect, &pt_edge_top) == 0, "Point on top edge does not collide");
    TEST_ASSERT(SDLite_Collision_RectPoint(&rect, &pt_edge_bottom) == 0, "Point on bottom edge does not collide");

    /* Rect vs Rect */
    SDL_FRect r_overlap = {50.0f, 40.0f, 100.0f, 50.0f};
    SDL_FRect r_disjoint_left = {-100.0f, 20.0f, 50.0f, 50.0f};
    SDL_FRect r_disjoint_right = {200.0f, 20.0f, 50.0f, 50.0f};
    SDL_FRect r_disjoint_above = {10.0f, -50.0f, 50.0f, 50.0f};
    SDL_FRect r_disjoint_below = {10.0f, 100.0f, 50.0f, 50.0f};
    SDL_FRect r_touching_right = {110.0f, 20.0f, 50.0f, 50.0f};

    TEST_ASSERT(SDLite_Collision_Rect(NULL, &rect) == -1, "Collision_Rect(NULL, b) returns -1");
    TEST_ASSERT(SDLite_Collision_Rect(&rect, NULL) == -1, "Collision_Rect(a, NULL) returns -1");
    TEST_ASSERT(SDLite_Collision_Rect(NULL, NULL) == -1, "Collision_Rect(NULL, NULL) returns -1");

    TEST_ASSERT(SDLite_Collision_Rect(&rect, &r_overlap) == 1, "Overlapping rects collide");
    TEST_ASSERT(SDLite_Collision_Rect(&rect, &rect) == 1, "Identical rects collide");
    TEST_ASSERT(SDLite_Collision_Rect(&rect, &r_disjoint_left) == 0, "Disjoint left rect does not collide");
    TEST_ASSERT(SDLite_Collision_Rect(&rect, &r_disjoint_right) == 0, "Disjoint right rect does not collide");
    TEST_ASSERT(SDLite_Collision_Rect(&rect, &r_disjoint_above) == 0, "Disjoint above rect does not collide");
    TEST_ASSERT(SDLite_Collision_Rect(&rect, &r_disjoint_below) == 0, "Disjoint below rect does not collide");
    TEST_ASSERT(SDLite_Collision_Rect(&rect, &r_touching_right) == 1, "Touching edge rect collides (consistent with RectDir)");
    TEST_ASSERT(SDLite_Collision_RectDir(&rect, &r_touching_right) == SDLITE_COLLISION_RIGHT, "RectDir touching right edge returns RIGHT");

    /* Directional Rect Collision */
    SDL_FRect target = {100.0f, 100.0f, 50.0f, 50.0f};
    SDL_FRect src_from_left  = {60.0f, 105.0f, 45.0f, 40.0f};
    SDL_FRect src_from_right = {145.0f, 105.0f, 45.0f, 40.0f};
    SDL_FRect src_from_top   = {105.0f, 60.0f, 40.0f, 45.0f};
    SDL_FRect src_from_bot   = {105.0f, 145.0f, 40.0f, 45.0f};

    TEST_ASSERT(SDLite_Collision_RectDir(NULL, &target) == SDLITE_COLLISION_ERROR, "RectDir(NULL, src) returns ERROR");
    TEST_ASSERT(SDLite_Collision_RectDir(&target, NULL) == SDLITE_COLLISION_ERROR, "RectDir(target, NULL) returns ERROR");
    TEST_ASSERT(SDLite_Collision_RectDir(&target, &r_disjoint_left) == SDLITE_COLLISION_NONE, "RectDir disjoint left returns NONE");
    TEST_ASSERT(SDLite_Collision_RectDir(&target, &r_disjoint_right) == SDLITE_COLLISION_NONE, "RectDir disjoint right returns NONE");
    TEST_ASSERT(SDLite_Collision_RectDir(&target, &r_disjoint_above) == SDLITE_COLLISION_NONE, "RectDir disjoint above returns NONE");
    TEST_ASSERT(SDLite_Collision_RectDir(&target, &r_disjoint_below) == SDLITE_COLLISION_NONE, "RectDir disjoint below returns NONE");

    TEST_ASSERT(SDLite_Collision_RectDir(&target, &src_from_left) == SDLITE_COLLISION_LEFT, "RectDir detects LEFT collision");
    TEST_ASSERT(SDLite_Collision_RectDir(&target, &src_from_right) == SDLITE_COLLISION_RIGHT, "RectDir detects RIGHT collision");
    TEST_ASSERT(SDLite_Collision_RectDir(&target, &src_from_top) == SDLITE_COLLISION_UP, "RectDir detects UP collision");
    TEST_ASSERT(SDLite_Collision_RectDir(&target, &src_from_bot) == SDLITE_COLLISION_DOWN, "RectDir detects DOWN collision");
}

/* =========================================================================
 * 4. Time Tests
 * ========================================================================= */
static void test_time(void) {
    printf("[Suite 4] Testing SDLite_time...\n");

    TEST_ASSERT(SDLite_CreateTime(0.0) == NULL, "SDLite_CreateTime(0.0) fails as expected");
    SDLite_DestroyTime(NULL);

    TEST_ASSERT(FLOAT_EQ(SDLite_Time_GetFPS(NULL), -1.0, 1e-5), "SDLite_Time_GetFPS(NULL) returns -1.0");
    TEST_ASSERT(FLOAT_EQ(SDLite_Time_GetDT(NULL), -1.0, 1e-5), "SDLite_Time_GetDT(NULL) returns -1.0");
    TEST_ASSERT(SDLite_Time_Is_FPSUpdated(NULL) == false, "SDLite_Time_Is_FPSUpdated(NULL) returns false");
    TEST_ASSERT(FLOAT_EQ(SDLite_Time_Get_FPSLimit(NULL), 0.0, 1e-5), "SDLite_Time_Get_FPSLimit(NULL) returns 0.0");
    TEST_ASSERT(SDLite_Time_Set_FPSLimit(NULL, 60.0) == 1, "SDLite_Time_Set_FPSLimit(NULL, ...) returns 1");
    TEST_ASSERT(SDLite_CalculateDT(NULL) == 1, "SDLite_CalculateDT(NULL) returns 1");
    TEST_ASSERT(SDLite_CalculateFPS(NULL) == 1, "SDLite_CalculateFPS(NULL) returns 1");
    TEST_ASSERT(SDLite_LimitFPS(NULL) == 1, "SDLite_LimitFPS(NULL) returns 1");
    TEST_ASSERT(SDLite_TimeFunctions(NULL) == 1, "SDLite_TimeFunctions(NULL) returns 1");

    SDLite_Time *time = SDLite_CreateTime(240.0);
    TEST_ASSERT(time != NULL, "SDLite_CreateTime(240.0) succeeds");
    TEST_ASSERT(FLOAT_EQ(SDLite_Time_Get_FPSLimit(time), 240.0, 1e-5), "Initial FPSLimit is 240.0");
    TEST_ASSERT(SDLite_Time_Set_FPSLimit(time, 0.0) == 1, "Setting FPSLimit to 0.0 fails");
    TEST_ASSERT(SDLite_Time_Set_FPSLimit(time, 500.0) == 0, "Setting FPSLimit to 500.0 succeeds");
    TEST_ASSERT(FLOAT_EQ(SDLite_Time_Get_FPSLimit(time), 500.0, 1e-5), "Updated FPSLimit is 500.0");

    TEST_ASSERT(SDLite_CalculateDT(time) == 0, "First SDLite_CalculateDT succeeds");
    TEST_ASSERT(FLOAT_EQ(SDLite_Time_GetDT(time), 0.0, 1e-5), "First DT is 0.0");

    for (int i = 0; i < 5; i++) {
        TEST_ASSERT(SDLite_TimeFunctions(time) == 0, "SDLite_TimeFunctions succeeds with capped FPS");
    }
    TEST_ASSERT(SDLite_Time_GetDT(time) > 0.0, "DT > 0 after capped frames");
    TEST_ASSERT(SDLite_Time_GetFPS(time) > 0.0, "FPS > 0 after capped frames");

    TEST_ASSERT(SDLite_Time_Set_FPSLimit(time, -1.0) == 0, "Setting uncapped FPS (-1.0) succeeds");
    SDL_Delay(2);
    TEST_ASSERT(SDLite_TimeFunctions(time) == 0, "SDLite_TimeFunctions succeeds in uncapped mode");

    SDLite_DestroyTime(time);
}

/* =========================================================================
 * 5. Display & Input Strict Tests
 * ========================================================================= */
static void test_display_and_input(SDLite_Display *display) {
    printf("[Suite 5] Testing SDLite_display & SDLite_input...\n");

    TEST_ASSERT(SDLite_CreateDisplay(NULL, 320, 240, 0) == NULL, "SDLite_CreateDisplay(NULL, ...) fails");
    SDLite_DestroyDisplay(NULL);

    TEST_ASSERT(SDLite_DisplayClear(NULL) == 1, "SDLite_DisplayClear(NULL) returns 1");
    TEST_ASSERT(SDLite_DisplayPresent(NULL) == 1, "SDLite_DisplayPresent(NULL) returns 1");
    TEST_ASSERT(SDLite_Display_GetSDLRenderer(NULL) == NULL, "SDLite_Display_GetSDLRenderer(NULL) returns NULL");
    TEST_ASSERT(SDLite_Display_GetSDLWindow(NULL) == NULL, "SDLite_Display_GetSDLWindow(NULL) returns NULL");
    TEST_ASSERT(SDLite_Display_GetTTFTextEngine(NULL) == NULL, "SDLite_Display_GetTTFTextEngine(NULL) returns NULL");
    TEST_ASSERT(SDLite_Display_GetWindowFlags(NULL) == 0, "SDLite_Display_GetWindowFlags(NULL) returns 0");

    /* Strict NULL checks on DisplaySetWindowed and DisplaySetFullscreen */
    TEST_SAFE_ASSERT(SDLite_DisplaySetWindowed(NULL, 400, 300) == 1,
                     "SDLite_DisplaySetWindowed(NULL, 400, 300) returns 1 without crashing");
    TEST_SAFE_ASSERT(SDLite_DisplaySetFullscreen(NULL) == 1,
                     "SDLite_DisplaySetFullscreen(NULL) returns 1 without crashing");

    int w = 0, h = 0;
    TEST_ASSERT(SDLite_Display_GetSize(NULL, &w, &h) == 1, "SDLite_Display_GetSize(NULL, ...) returns 1");
    TEST_ASSERT(SDLite_Display_GetSize(display, NULL, &h) == 1, "SDLite_Display_GetSize(..., NULL, h) returns 1");
    TEST_ASSERT(SDLite_Display_GetSize(display, &w, NULL) == 1, "SDLite_Display_GetSize(..., w, NULL) returns 1");

    TEST_ASSERT(SDLite_Display_GetSDLRenderer(display) != NULL, "Display has valid SDL_Renderer*");
    TEST_ASSERT(SDLite_Display_GetSDLWindow(display) != NULL, "Display has valid SDL_Window*");
    TEST_ASSERT(SDLite_Display_GetTTFTextEngine(display) != NULL, "Display has valid TTF_TextEngine*");
    TEST_ASSERT(SDLite_Display_GetSize(display, &w, &h) == 0, "SDLite_Display_GetSize succeeds");
    TEST_ASSERT(w == 320 && h == 240, "Display initial dimensions match 320x240");

    TEST_ASSERT(SDLite_DisplaySetWindowed(display, 400, 300) == 0, "SDLite_DisplaySetWindowed succeeds");
    TEST_ASSERT(SDLite_DisplayClear(display) == 0, "SDLite_DisplayClear succeeds");
    TEST_ASSERT(SDLite_DisplayPresent(display) == 0, "SDLite_DisplayPresent succeeds");

    /* Input tests */
    SDLite_DestroyInput(NULL);
    TEST_ASSERT(SDLite_Input_KeyPressed(NULL, SDL_SCANCODE_A) == -1, "KeyPressed(NULL) returns -1");
    TEST_ASSERT(SDLite_Input_KeyJustPressed(NULL, SDL_SCANCODE_A) == -1, "KeyJustPressed(NULL) returns -1");
    TEST_ASSERT(SDLite_Input_KeyJustReleased(NULL, SDL_SCANCODE_A) == -1, "KeyJustReleased(NULL) returns -1");
    TEST_ASSERT(SDLite_Input_Update_PrevKeyState(NULL) == 1, "Update_PrevKeyState(NULL) returns 1");
    TEST_ASSERT(SDLite_Input_MousePressed(NULL, SDL_BUTTON_LMASK) == -1, "MousePressed(NULL) returns -1");
    TEST_ASSERT(SDLite_Input_MouseJustPressed(NULL, SDL_BUTTON_LMASK) == -1, "MouseJustPressed(NULL) returns -1");
    TEST_ASSERT(SDLite_Input_MouseJustReleased(NULL, SDL_BUTTON_LMASK) == -1, "MouseJustReleased(NULL) returns -1");
    TEST_ASSERT(SDLite_Input_Poll_Mouse(NULL) == 1, "Poll_Mouse(NULL) returns 1");
    TEST_ASSERT(SDLite_Input_Update_PrevMouseState(NULL) == 1, "Update_PrevMouseState(NULL) returns 1");
    TEST_ASSERT(SDLite_Input_UpdateAllPrev(NULL) == 1, "UpdateAllPrev(NULL) returns 1");

    int mx = -1, my = -1;
    TEST_ASSERT(SDLite_Input_Mouse_GetPosition(NULL, &mx, &my) == 1, "Mouse_GetPosition(NULL, ...) returns 1");

    SDLite_Input *input = SDLite_CreateInput();
    TEST_ASSERT(input != NULL, "SDLite_CreateInput succeeds");
    TEST_ASSERT(SDLite_Input_Mouse_GetPosition(input, NULL, &my) == 1, "Mouse_GetPosition(..., NULL, y) returns 1");
    TEST_ASSERT(SDLite_Input_Mouse_GetPosition(input, &mx, NULL) == 1, "Mouse_GetPosition(..., x, NULL) returns 1");

    TEST_ASSERT(SDLite_Input_UpdateAllPrev(input) == 0, "SDLite_Input_UpdateAllPrev succeeds");
    TEST_ASSERT(SDLite_Input_KeyPressed(input, SDL_SCANCODE_SPACE) >= 0, "KeyPressed returns valid state");
    TEST_ASSERT(SDLite_Input_KeyJustPressed(input, SDL_SCANCODE_SPACE) == 0, "KeyJustPressed is 0 when unchanged");
    TEST_ASSERT(SDLite_Input_KeyJustReleased(input, SDL_SCANCODE_SPACE) == 0, "KeyJustReleased is 0 when unchanged");
    TEST_ASSERT(SDLite_Input_MousePressed(input, SDL_BUTTON_LMASK) >= 0, "MousePressed returns valid state");
    TEST_ASSERT(SDLite_Input_MouseJustPressed(input, SDL_BUTTON_LMASK) == 0, "MouseJustPressed is 0 when unchanged");
    TEST_ASSERT(SDLite_Input_MouseJustReleased(input, SDL_BUTTON_LMASK) == 0, "MouseJustReleased is 0 when unchanged");
    TEST_ASSERT(SDLite_Input_Poll_Mouse(input) == 0, "Poll_Mouse succeeds");
    TEST_ASSERT(SDLite_Input_Mouse_GetPosition(input, &mx, &my) == 0, "Mouse_GetPosition succeeds");
    TEST_ASSERT(SDLite_Input_Update_PrevKeyState(input) == 0, "Update_PrevKeyState succeeds");
    TEST_ASSERT(SDLite_Input_Update_PrevMouseState(input) == 0, "Update_PrevMouseState succeeds");

    SDLite_DestroyInput(input);
}

/* =========================================================================
 * 6. Texture, Sprite, and SpriteManager Strict Tests
 * ========================================================================= */
static void test_textures_and_sprites(SDLite_Display *display) {
    printf("[Suite 6] Testing SDLite_texture, SDLite_sprite, & SDLite_sprite_manager...\n");

    TEST_ASSERT(SDLite_CreateTexture(NULL, "assets/blue.bmp") == NULL, "CreateTexture(NULL, file) fails");
    TEST_ASSERT(SDLite_CreateTexture(display, NULL) == NULL, "CreateTexture(display, NULL) fails");
    TEST_ASSERT(SDLite_CreateTexture(display, "assets/does_not_exist.png") == NULL, "CreateTexture with missing file fails");
    TEST_ASSERT(SDLite_Texture_GetRefs(NULL) == 0, "Texture_GetRefs(NULL) returns 0");
    TEST_ASSERT(SDLite_Texture_GetSDLTexture(NULL) == NULL, "Texture_GetSDLTexture(NULL) returns NULL");
    SDLite_DestroyTexture(NULL);
    SDLite_Texture *null_tex = NULL;
    SDLite_DestroyTexture(&null_tex);

    SDLite_Texture *tex_blue = SDLite_CreateTexture(display, "assets/blue.bmp");
    SDLite_Texture *tex_sheet = SDLite_CreateTexture(display, "assets/char_spritesheet.png");
    TEST_ASSERT(tex_blue != NULL, "Loaded assets/blue.bmp texture");
    TEST_ASSERT(tex_sheet != NULL, "Loaded assets/char_spritesheet.png texture");
    TEST_ASSERT(SDLite_Texture_GetRefs(tex_blue) == 1, "Initial texture ref count is 1");
    TEST_ASSERT(SDLite_Texture_GetSDLTexture(tex_blue) != NULL, "Texture has valid internal SDL_Texture*");

    /* Static Sprite creation & texture ref counting */
    TEST_ASSERT(SDLite_Create_StaticSprite(NULL, "assets/blue.bmp", (SDL_FPoint){0, 0}, (SDL_FRect){0, 0, 10, 10}) == NULL,
                "Create_StaticSprite(NULL, ...) fails");
    TEST_ASSERT(SDLite_Create_StaticSprite(display, "assets/missing.bmp", (SDL_FPoint){0, 0}, (SDL_FRect){0, 0, 10, 10}) == NULL,
                "Create_StaticSprite with missing texture fails");

    SDLite_Sprite *static_no_tex = SDLite_Create_StaticSprite(display, NULL, (SDL_FPoint){10, 20}, (SDL_FRect){0, 0, 32, 64});
    TEST_ASSERT(static_no_tex != NULL, "Create_StaticSprite with NULL texture_path succeeds");
    TEST_ASSERT(SDLite_Sprite_GetSDLTexture(static_no_tex) == NULL, "Static sprite without texture returns NULL SDL_Texture*");
    TEST_ASSERT(SDLite_Render_Sprite(display, static_no_tex) == 1, "Rendering static sprite with NULL texture fails with 1");

    TEST_ASSERT(SDLite_Sprite_SetTexture(static_no_tex, tex_blue) == 0, "SetTexture on static sprite succeeds");
    TEST_ASSERT(SDLite_Texture_GetRefs(tex_blue) == 2, "Texture ref count increments to 2 after SetTexture");
    TEST_ASSERT(SDLite_Sprite_GetSDLTexture(static_no_tex) == SDLite_Texture_GetSDLTexture(tex_blue),
                "Sprite SDL_Texture* matches attached texture");

    TEST_ASSERT(SDLite_Sprite_SetTexture(static_no_tex, tex_sheet) == 0, "Replacing texture on static sprite succeeds");
    TEST_ASSERT(SDLite_Texture_GetRefs(tex_blue) == 1, "Old texture ref count decrements back to 1");
    TEST_ASSERT(SDLite_Texture_GetRefs(tex_sheet) == 2, "New texture ref count increments to 2");

    double scale = 0.0, angle = 0.0;
    SDL_FPoint pivot = {0, 0};
    SDL_FlipMode flip = SDL_FLIP_NONE;
    SDL_FRect rrect = {0, 0, 0, 0};

    TEST_ASSERT(SDLite_Sprite_SetScale(NULL, 2.0) == 1, "SetScale(NULL) fails");
    TEST_ASSERT(SDLite_Sprite_SetScale(static_no_tex, 0.0) == 1, "SetScale(0.0) fails");
    TEST_ASSERT(SDLite_Sprite_SetScale(static_no_tex, -2.0) == 1, "SetScale(-2.0) fails");
    TEST_ASSERT(SDLite_Sprite_SetScale(static_no_tex, 2.0) == 0, "SetScale(2.0) succeeds");
    TEST_ASSERT(SDLite_Sprite_GetScale(static_no_tex, &scale) == 0 && FLOAT_EQ(scale, 2.0, 1e-5), "GetScale returns 2.0");
    TEST_ASSERT(SDLite_Sprite_GetScale(NULL, &scale) == 1 && SDLite_Sprite_GetScale(static_no_tex, NULL) == 1, "GetScale NULL checks");

    TEST_ASSERT(SDLite_Sprite_Get_RenderRect(static_no_tex, &rrect) == 0, "Get_RenderRect succeeds");
    TEST_ASSERT(FLOAT_EQ(rrect.w, 64.0f, 1e-4) && FLOAT_EQ(rrect.h, 128.0f, 1e-4), "SetScale scaled width and height by 2x");
    TEST_ASSERT(SDLite_Sprite_Get_RenderRect(NULL, &rrect) == 1 && SDLite_Sprite_Get_RenderRect(static_no_tex, NULL) == 1, "Get_RenderRect NULL checks");

    TEST_ASSERT(SDLite_Sprite_SetAngle(NULL, 30.0) == 1, "SetAngle(NULL) fails");
    TEST_ASSERT(SDLite_Sprite_SetAngle(static_no_tex, 45.0) == 0, "SetAngle(45.0) succeeds");
    TEST_ASSERT(SDLite_Sprite_GetAngle(static_no_tex, &angle) == 0 && FLOAT_EQ(angle, 45.0, 1e-5), "GetAngle returns 45.0");
    TEST_ASSERT(SDLite_Sprite_GetAngle(NULL, &angle) == 1 && SDLite_Sprite_GetAngle(static_no_tex, NULL) == 1, "GetAngle NULL checks");

    TEST_ASSERT(SDLite_Sprite_SetPivotPoint(NULL, (SDL_FPoint){5, 6}) == 1, "SetPivotPoint(NULL) fails");
    TEST_ASSERT(SDLite_Sprite_SetPivotPoint(static_no_tex, (SDL_FPoint){16.0f, 32.0f}) == 0, "SetPivotPoint succeeds");
    TEST_ASSERT(SDLite_Sprite_GetPivotPoint(static_no_tex, &pivot) == 0 && FLOAT_EQ(pivot.x, 16.0f, 1e-4) && FLOAT_EQ(pivot.y, 32.0f, 1e-4),
                "GetPivotPoint matches set value");
    TEST_ASSERT(SDLite_Sprite_GetPivotPoint(NULL, &pivot) == 1 && SDLite_Sprite_GetPivotPoint(static_no_tex, NULL) == 1, "GetPivotPoint NULL checks");

    TEST_ASSERT(SDLite_Sprite_SetFlipMode(NULL, SDL_FLIP_HORIZONTAL) == 1, "SetFlipMode(NULL) fails");
    TEST_ASSERT(SDLite_Sprite_SetFlipMode(static_no_tex, SDL_FLIP_HORIZONTAL) == 0, "SetFlipMode succeeds");
    TEST_ASSERT(SDLite_Sprite_GetFlipMode(static_no_tex, &flip) == 0 && flip == SDL_FLIP_HORIZONTAL, "GetFlipMode matches set value");
    TEST_ASSERT(SDLite_Sprite_GetFlipMode(NULL, &flip) == 1 && SDLite_Sprite_GetFlipMode(static_no_tex, NULL) == 1, "GetFlipMode NULL checks");

    TEST_ASSERT(SDLite_Sprite_Set_Position(NULL, (SDL_FPoint){100, 150}) == 1, "Set_Position(NULL) fails");
    TEST_ASSERT(SDLite_Sprite_Set_Position(static_no_tex, (SDL_FPoint){100.0f, 150.0f}) == 0, "Set_Position succeeds");
    TEST_ASSERT(SDLite_Sprite_Get_RenderRect(static_no_tex, &rrect) == 0 && FLOAT_EQ(rrect.x, 100.0f, 1e-4) && FLOAT_EQ(rrect.y, 150.0f, 1e-4),
                "Set_Position updated render_rect x and y");

    TEST_ASSERT(SDLite_Render_Sprite(display, static_no_tex) == 0, "Render rotated/flipped static sprite succeeds");
    SDLite_Sprite_SetAngle(static_no_tex, 0.0);
    SDLite_Sprite_SetFlipMode(static_no_tex, SDL_FLIP_NONE);
    TEST_ASSERT(SDLite_Render_Sprite(display, static_no_tex) == 0, "Render standard static sprite succeeds");
    TEST_ASSERT(SDLite_Render_Sprite(NULL, static_no_tex) == 1 && SDLite_Render_Sprite(display, NULL) == 1, "Render_Sprite NULL checks");

    SDLite_Sprite *static_direct = SDLite_Create_StaticSprite(display, "assets/blue.bmp", (SDL_FPoint){0, 0}, (SDL_FRect){0, 0, 50, 50});
    TEST_ASSERT(static_direct != NULL, "Create_StaticSprite with direct path succeeds");
    TEST_ASSERT(SDLite_Render_Sprite(display, static_direct) == 0, "Render static_direct succeeds");

    /* Rect Sprite tests */
    SDLite_Sprite *rect_filled = SDLite_Create_RectSprite((SDL_FRect){10, 10, 40, 30}, (SDL_Color){255, 0, 0, 255}, true);
    SDLite_Sprite *rect_outline = SDLite_Create_RectSprite((SDL_FRect){60, 10, 40, 30}, (SDL_Color){0, 255, 0, 255}, false);
    TEST_ASSERT(rect_filled != NULL && rect_outline != NULL, "Create_RectSprite (filled & outline) succeeds");
    TEST_ASSERT(SDLite_Sprite_SetRectColor(NULL, (SDL_Color){0, 0, 255, 255}) == 1, "SetRectColor(NULL) fails");
    TEST_ASSERT(SDLite_Sprite_SetRectColor(static_direct, (SDL_Color){0, 0, 255, 255}) == 1, "SetRectColor on non-rect sprite fails");
    TEST_ASSERT(SDLite_Sprite_SetRectColor(rect_filled, (SDL_Color){0, 0, 255, 255}) == 0, "SetRectColor on rect sprite succeeds");
    TEST_ASSERT(SDLite_Sprite_SetTexture(rect_filled, tex_blue) == 1, "SetTexture on rect sprite fails");
    TEST_ASSERT(SDLite_Sprite_GetSDLTexture(rect_filled) == NULL, "GetSDLTexture on rect sprite returns NULL");
    TEST_ASSERT(SDLite_Sprite_SetScale(rect_filled, 1.5) == 0, "SetScale on rect sprite succeeds");
    TEST_ASSERT(SDLite_Render_Sprite(display, rect_filled) == 0, "Render filled rect sprite succeeds");
    TEST_ASSERT(SDLite_Render_Sprite(display, rect_outline) == 0, "Render outline rect sprite succeeds");

    /* Animated Sprite tests */
    TEST_ASSERT(SDLite_Create_AnimatedSprite(NULL, "assets/char_spritesheet.png", (SDL_FPoint){0, 0}, (SDL_FRect){0, 0, 16, 16}) == NULL,
                "Create_AnimatedSprite(NULL, ...) fails");
    TEST_ASSERT(SDLite_Create_AnimatedSprite(display, "assets/missing.png", (SDL_FPoint){0, 0}, (SDL_FRect){0, 0, 16, 16}) == NULL,
                "Create_AnimatedSprite with missing texture fails");

    SDLite_Sprite *anim = SDLite_Create_AnimatedSprite(display, "assets/char_spritesheet.png", (SDL_FPoint){20, 20}, (SDL_FRect){18, 16, 13, 16});
    TEST_ASSERT(anim != NULL, "Create_AnimatedSprite succeeds");
    TEST_ASSERT(SDLite_Render_Sprite(display, anim) == 1, "Rendering animated sprite before AllocAnimation fails");

    SDL_FRect frames[] = {
        {18, 16, 13, 16},
        {33, 16, 14, 16},
        {49, 16, 13, 16}
    };
    uint8_t num_frames = (uint8_t)(SDLite_GET_ANIMATION_FRAMES(frames));
    TEST_ASSERT(num_frames == 3, "SDLite_GET_ANIMATION_FRAMES macro computes 3 frames");
    TEST_ASSERT(SDLite_Sprite_AllocAnimation(static_direct, 2) == 1, "AllocAnimation rejects static sprite");
    TEST_ASSERT(SDLite_Sprite_AddAnimation(static_direct, frames, num_frames, 10.0, 0) == 1, "AddAnimation rejects static sprite");
    TEST_ASSERT(SDLite_Sprite_SelectAnimation(static_direct, 0) == 1, "SelectAnimation rejects static sprite");
    TEST_ASSERT(SDLite_Sprite_SetPlayAnimation(static_direct, 0, true) == 1, "SetPlayAnimation rejects static sprite");
    TEST_ASSERT(SDLite_Sprite_SetLoopAnimation(static_direct, 0, true) == 1, "SetLoopAnimation rejects static sprite");
    TEST_ASSERT(SDLite_Sprite_EnableAnimation(static_direct, 0, true) == 1, "EnableAnimation rejects static sprite");

    /* Strict check: AllocAnimation(0) should fail */
    TEST_ASSERT(SDLite_Sprite_AllocAnimation(anim, 0) == 1, "SDLite_Sprite_AllocAnimation(anim, 0) fails");

    TEST_ASSERT(SDLite_Sprite_AllocAnimation(anim, 1) == 0, "First AllocAnimation(1) succeeds");

    /* Strict checks on AddAnimation invalid arguments */
    TEST_SAFE_ASSERT(SDLite_Sprite_AddAnimation(anim, NULL, num_frames, 60.0, 0) == 1,
                     "SDLite_Sprite_AddAnimation with NULL frames returns 1 without crashing");
    TEST_ASSERT(SDLite_Sprite_AddAnimation(anim, frames, 0, 60.0, 0) == 1,
                "SDLite_Sprite_AddAnimation with amount_frames == 0 returns 1");
    TEST_ASSERT(SDLite_Sprite_AddAnimation(anim, frames, num_frames, 0.0, 0) == 1,
                "SDLite_Sprite_AddAnimation with fps <= 0.0 returns 1");

    TEST_ASSERT(SDLite_Sprite_AddAnimation(anim, frames, num_frames, 60.0, 0) == 0, "AddAnimation at index 0 succeeds");

    /*
     * Strict check: calling AddAnimation again on the same index (0) should either
     * free the old frames before replacing or not leak memory!
     */
#ifdef TRACK_ALLOCATIONS
    size_t usage_before_overwrite = MemTrack_Memory_Usage();
    TEST_ASSERT(SDLite_Sprite_AddAnimation(anim, frames, num_frames, 60.0, 0) == 0, "Overwriting animation at index 0 succeeds");
    size_t usage_after_overwrite = MemTrack_Memory_Usage();
    TEST_ASSERT(usage_after_overwrite == usage_before_overwrite,
                "Calling SDLite_Sprite_AddAnimation twice on same index must not leak previous frames array");
#endif

    TEST_ASSERT(SDLite_Sprite_AddAnimation(anim, frames, num_frames, 60.0, 1) == 1, "AddAnimation out-of-bounds index 1 fails");
    TEST_ASSERT(SDLite_Sprite_AllocAnimation(anim, 2) == 0, "Second AllocAnimation(2) via realloc succeeds");
    TEST_ASSERT(SDLite_Sprite_AddAnimation(anim, frames, num_frames, 60.0, 1) == 0, "AddAnimation at index 1 succeeds after realloc");

    /*
     * Strict check: partially populated animation array!
     * Allocate capacity 2, only populate index 0 (leave index 1 unpopulated),
     * then select index 1 or destroy the sprite. Must not crash on uninitialized frames pointer!
     */
    TEST_SAFE_ASSERT(({
        void *dirty = t_malloc(256);
        if (dirty) {
            memset(dirty, 0xAB, 256);
            t_free(dirty);
        }
        SDLite_Sprite *partial_anim = SDLite_Create_AnimatedSprite(display, NULL, (SDL_FPoint){0, 0}, (SDL_FRect){0, 0, 16, 16});
        SDLite_Sprite_AllocAnimation(partial_anim, 2);
        SDLite_Sprite_AddAnimation(partial_anim, frames, num_frames, 30.0, 0);
        /* Index 1 was never populated; selecting and rendering it or destroying should not dereference/free garbage */
        SDLite_Sprite_SelectAnimation(partial_anim, 1);
        int render_unpop = SDLite_Render_Sprite(display, partial_anim);
        SDLite_DestroySprite(partial_anim);
        render_unpop == 1;
    }), "Animated sprite with unpopulated animation slot must zero-initialize slots and not free/dereference garbage");

    TEST_ASSERT(SDLite_Sprite_SelectAnimation(anim, 2) == 1, "SelectAnimation out-of-bounds fails");
    TEST_ASSERT(SDLite_Sprite_SelectAnimation(anim, 1) == 0, "SelectAnimation(1) succeeds");
    TEST_ASSERT(SDLite_Sprite_SelectAnimation(anim, 0) == 0, "SelectAnimation(0) succeeds");

    TEST_ASSERT(SDLite_Sprite_SetLoopAnimation(anim, 2, true) == 1, "SetLoopAnimation out-of-bounds fails");
    TEST_ASSERT(SDLite_Sprite_SetPlayAnimation(anim, 2, true) == 1, "SetPlayAnimation out-of-bounds fails");
    TEST_ASSERT(SDLite_Sprite_EnableAnimation(anim, 2, true) == 1, "EnableAnimation out-of-bounds fails");

    SDLite_Time *anim_time = SDLite_CreateTime(-1.0);
    TEST_ASSERT(SDLite_Sprite_UpdateAnimation(NULL, anim_time) == 1, "UpdateAnimation(NULL, time) fails");
    TEST_ASSERT(SDLite_Sprite_UpdateAnimation(anim, NULL) == 1, "UpdateAnimation(anim, NULL) fails");
    TEST_ASSERT(SDLite_Sprite_UpdateAnimation(static_direct, anim_time) == 0, "UpdateAnimation on static sprite returns 0 safely");
    TEST_ASSERT(SDLite_Sprite_UpdateAnimation(anim, anim_time) == 0, "UpdateAnimation when disabled succeeds");

    TEST_ASSERT(SDLite_Sprite_EnableAnimation(anim, 0, true) == 0, "EnableAnimation(0, true) succeeds");
    TEST_ASSERT(SDLite_Sprite_SetLoopAnimation(anim, 0, true) == 0, "SetLoopAnimation(0, true) succeeds");
    TEST_ASSERT(SDLite_Sprite_SetPlayAnimation(anim, 0, true) == 0, "SetPlayAnimation(0, true) succeeds");

    SDLite_CalculateDT(anim_time);
    SDL_Delay(20);
    SDLite_CalculateDT(anim_time);
    TEST_ASSERT(SDLite_Sprite_UpdateAnimation(anim, anim_time) == 0, "UpdateAnimation advances frame when enabled");
    TEST_ASSERT(SDLite_Sprite_SetScale(anim, 2.0) == 0, "SetScale on animated sprite succeeds");
    TEST_ASSERT(SDLite_Render_Sprite(display, anim) == 0, "Render animated sprite succeeds");

    /* Sprite Manager tests */
    TEST_ASSERT(SDLite_Create_SpriteManager(0, 4) == NULL, "Create_SpriteManager(0, 4) fails");
    TEST_ASSERT(SDLite_Create_SpriteManager(4, 0) == NULL, "Create_SpriteManager(4, 0) fails");
    SDLite_Destroy_SpriteManager(NULL);

    SDLite_Sprite_Manager *mgr = SDLite_Create_SpriteManager(3, 2);
    TEST_ASSERT(mgr != NULL, "Create_SpriteManager(3, 2) succeeds");

    TEST_ASSERT(SDLite_SpriteManager_QueueSprite(NULL, anim, 0) == 1, "QueueSprite(NULL, ...) fails");
    TEST_ASSERT(SDLite_SpriteManager_QueueSprite(mgr, NULL, 0) == 1, "QueueSprite(mgr, NULL, ...) fails");
    TEST_ASSERT(SDLite_SpriteManager_QueueSprite(mgr, anim, 3) == 1, "QueueSprite with z_depth >= max_z_depth fails");

    TEST_ASSERT(SDLite_SpriteManager_QueueSprite(mgr, static_direct, 0) == 0, "Queue 1st sprite at z=0 succeeds");
    TEST_ASSERT(SDLite_SpriteManager_QueueSprite(mgr, rect_filled, 0) == 0, "Queue 2nd sprite at z=0 succeeds");
    TEST_ASSERT(SDLite_SpriteManager_QueueSprite(mgr, rect_outline, 0) == 1, "Queue 3rd sprite at z=0 exceeds max_sprites(2) and fails");
    TEST_ASSERT(SDLite_SpriteManager_QueueSprite(mgr, anim, 2) == 0, "Queue animated sprite at z=2 succeeds");

    TEST_ASSERT(SDLite_Render_SpriteManager(NULL, mgr) == 1, "Render_SpriteManager(NULL, mgr) fails");
    TEST_ASSERT(SDLite_Render_SpriteManager(display, NULL) == 1, "Render_SpriteManager(display, NULL) fails");
    TEST_ASSERT(SDLite_Render_SpriteManager(display, mgr) == 0, "Render_SpriteManager renders all layers and returns 0");

    TEST_ASSERT(SDLite_SpriteManager_QueueSprite(mgr, static_direct, 0) == 0, "Queue at z=0 works again after render cleared queue");
    SDLite_Sprite *untextured = SDLite_Create_StaticSprite(display, NULL, (SDL_FPoint){0, 0}, (SDL_FRect){0, 0, 10, 10});
    TEST_ASSERT(SDLite_SpriteManager_QueueSprite(mgr, untextured, 1) == 0, "Queue untextured sprite at z=1");
    TEST_ASSERT(SDLite_Render_SpriteManager(display, mgr) == 1, "Render_SpriteManager returns 1 when a queued sprite has NULL texture");

    SDLite_DestroySprite(untextured);
    SDLite_Destroy_SpriteManager(mgr);
    SDLite_DestroyTime(anim_time);
    SDLite_DestroySprite(anim);
    SDLite_DestroySprite(rect_filled);
    SDLite_DestroySprite(rect_outline);
    SDLite_DestroySprite(static_direct);

    TEST_ASSERT(SDLite_Texture_GetRefs(tex_sheet) == 2, "tex_sheet has 2 refs before DestroyTexture");
    SDLite_DestroyTexture(&tex_sheet);
    TEST_ASSERT(tex_sheet != NULL && SDLite_Texture_GetRefs(tex_sheet) == 1,
                "DestroyTexture decrements ref to 1 without freeing while sprite still owns a ref");
    SDLite_DestroySprite(static_no_tex);

    TEST_ASSERT(SDLite_Texture_GetRefs(tex_blue) == 1, "tex_blue has 1 ref");
    SDLite_DestroyTexture(&tex_blue);
    TEST_ASSERT(tex_blue == NULL, "DestroyTexture sets pointer to NULL when ref count reaches 0");
}

/* =========================================================================
 * 7. Text & SDLite_Text_Font Ref Sharing Strict Tests
 * ========================================================================= */
static void test_text(SDLite_Display *display) {
    printf("[Suite 7] Testing SDLite_text & SDLite_Text_Font ref sharing...\n");

    SDL_Color white = {255, 255, 255, 255};
    SDLite_DestroyText(NULL);
    SDLite_Destroy_Text_Font(NULL);
    SDLite_Text_Font *null_font = NULL;
    SDLite_Destroy_Text_Font(&null_font);
    TEST_ASSERT(null_font == NULL, "Destroy_Text_Font(&null_font) leaves pointer NULL");

    /* Font creation & NULL / invalid path checks */
    TEST_ASSERT(SDLite_Create_Text_Font(NULL) == NULL, "Create_Text_Font(NULL) returns NULL");
    TEST_ASSERT(SDLite_Create_Text_Font("assets/missing_font.ttf") == NULL, "Create_Text_Font with missing file returns NULL");
    TEST_ASSERT(SDLite_Create_Text_Font("assets/blue.bmp") == NULL, "Create_Text_Font with non-font file returns NULL");
    TEST_ASSERT(SDLite_Text_Font_GetFont(NULL) == NULL, "Text_Font_GetFont(NULL) returns NULL");
    TEST_ASSERT(SDLite_Text_Font_GetRefs(NULL) == 0, "Text_Font_GetRefs(NULL) returns 0");

    /* Standalone font creation & destruction */
    SDLite_Text_Font *standalone_font = SDLite_Create_Text_Font("assets/default.ttf");
    TEST_ASSERT(standalone_font != NULL, "Create_Text_Font(\"assets/default.ttf\") succeeds");
    TEST_ASSERT(SDLite_Text_Font_GetFont(standalone_font) != NULL, "Text_Font_GetFont returns valid TTF_Font*");
    TEST_ASSERT(SDLite_Text_Font_GetRefs(standalone_font) == 1, "Initial SDLite_Text_Font ref count is 1");
    SDLite_Destroy_Text_Font(&standalone_font);
    TEST_ASSERT(standalone_font == NULL, "Destroy_Text_Font nulls pointer when ref count reaches 0");

    /* Primary shared font */
    SDLite_Text_Font *font1 = SDLite_Create_Text_Font("assets/default.ttf");
    SDLite_Text_Font *font2 = SDLite_Create_Text_Font("assets/default.ttf");
    TEST_ASSERT(font1 != NULL && font2 != NULL, "Created font1 and font2 for ref sharing tests");
    TEST_ASSERT(SDLite_Text_Font_GetRefs(font1) == 1 && SDLite_Text_Font_GetRefs(font2) == 1,
                "font1 and font2 start with 1 ref each");

    /* SDLite_CreateText NULL checks */
    TEST_ASSERT(SDLite_CreateText(NULL, "Hi", font1, 20.0f, 0, 0, white) == NULL, "CreateText(NULL, ...) fails");
    TEST_ASSERT(SDLite_Text_Font_GetRefs(font1) == 1, "Failed CreateText does not increment font1 ref count");
    TEST_ASSERT(SDLite_CreateText(display, "Hi", NULL, 20.0f, 0, 0, white) == NULL, "CreateText(display, \"Hi\", NULL, ...) fails");

    /* Create first text with NULL display_text (defaults to "") */
    SDLite_Text *text = SDLite_CreateText(display, NULL, font1, 20.0f, 15, 25, white);
    TEST_ASSERT(text != NULL, "CreateText(display, NULL, font1, ...) succeeds");
    TEST_ASSERT(SDLite_Text_Font_GetRefs(font1) == 2, "font1 ref count increments to 2 after creating 1st SDLite_Text");

    TEST_ASSERT(SDLite_Text_GetTTFText(NULL) == NULL, "GetTTFText(NULL) returns NULL");
    TEST_ASSERT(SDLite_Text_GetTTFFont(NULL) == NULL, "GetTTFFont(NULL) returns NULL");
    TEST_ASSERT(SDLite_Text_GetTTFText(text) != NULL, "GetTTFText returns valid TTF_Text*");
    TEST_ASSERT(SDLite_Text_GetTTFFont(text) == SDLite_Text_Font_GetFont(font1),
                "GetTTFFont(text) matches SDLite_Text_Font_GetFont(font1)");

    /* Create second and third text sharing font1 */
    SDLite_Text *text2 = SDLite_CreateText(display, "Shared Font Text 2", font1, 36.0f, 10, 80, white);
    SDLite_Text *text3 = SDLite_CreateText(display, "Shared Font Text 3", font1, 14.0f, 10, 140, white);
    TEST_ASSERT(text2 != NULL && text3 != NULL, "Created text2 and text3 sharing font1");
    TEST_ASSERT(SDLite_Text_Font_GetRefs(font1) == 4, "font1 ref count increments to 4 when shared across 3 SDLite_Text objects");
    TEST_ASSERT(SDLite_Text_GetTTFFont(text2) == SDLite_Text_Font_GetFont(font1) &&
                SDLite_Text_GetTTFFont(text3) == SDLite_Text_Font_GetFont(font1),
                "All shared SDLite_Text instances reference the same underlying TTF_Font*");
    TEST_ASSERT(SDLite_Text_GetTTFText(text) != SDLite_Text_GetTTFText(text2),
                "Shared font SDLite_Text instances have distinct TTF_Text* objects");

    /* SDLite_Text_SetFont & ref count transitions */
    TEST_ASSERT(SDLite_Text_SetFont(NULL, font2) == 1, "SetFont(NULL, font2) fails");
    TEST_ASSERT(SDLite_Text_SetFont(text, NULL) == 1, "SetFont(text, NULL) fails");
    TEST_ASSERT(SDLite_Text_Font_GetRefs(font1) == 4 && SDLite_Text_Font_GetRefs(font2) == 1,
                "Failed SetFont calls do not alter font1 or font2 ref counts");

    TEST_ASSERT(SDLite_Text_SetFont(text, font2) == 0, "SetFont(text, font2) succeeds");
    TEST_ASSERT(SDLite_Text_Font_GetRefs(font1) == 3, "font1 ref count decrements to 3 after switching text to font2");
    TEST_ASSERT(SDLite_Text_Font_GetRefs(font2) == 2, "font2 ref count increments to 2 after switching text to font2");
    TEST_ASSERT(SDLite_Text_GetTTFFont(text) == SDLite_Text_Font_GetFont(font2),
                "GetTTFFont(text) now matches font2");

    TEST_ASSERT(SDLite_Text_SetFont(text, font1) == 0, "SetFont(text, font1) switches back to font1");
    TEST_ASSERT(SDLite_Text_Font_GetRefs(font1) == 4, "font1 ref count increments back to 4");
    TEST_ASSERT(SDLite_Text_Font_GetRefs(font2) == 1, "font2 ref count decrements back to 1");

    /* Setting the same font that is already attached */
    TEST_ASSERT(SDLite_Text_SetFont(text, font1) == 0, "SetFont(text, font1) with already attached font succeeds");
    TEST_ASSERT(SDLite_Text_Font_GetRefs(font1) == 4, "Setting same font preserves ref count of 4");

    /*
     * Edge case 1: caller destroys their handle to a font while a text object still holds a ref (refs: 2 -> 1),
     * and then SDLite_Text_SetFont replaces that font on the text object (refs: 1 -> 0).
     * Replacing the last reference via SDLite_Text_SetFont must properly free the old SDLite_Text_Font!
     */
#ifdef TRACK_ALLOCATIONS
    size_t mem_before_ephemeral = MemTrack_Memory_Usage();
#endif
    SDLite_Text_Font *ephemeral_font = SDLite_Create_Text_Font("assets/default.ttf");
    TEST_ASSERT(ephemeral_font != NULL, "Created ephemeral_font");
    TEST_ASSERT(SDLite_Text_SetFont(text3, ephemeral_font) == 0, "Attached ephemeral_font to text3");
    TEST_ASSERT(SDLite_Text_Font_GetRefs(ephemeral_font) == 2, "ephemeral_font has 2 refs");
    TEST_ASSERT(SDLite_Text_Font_GetRefs(font1) == 3, "font1 has 3 refs");
    SDLite_Destroy_Text_Font(&ephemeral_font);
    TEST_ASSERT(ephemeral_font != NULL && SDLite_Text_Font_GetRefs(ephemeral_font) == 1,
                "Destroy_Text_Font decrements ephemeral_font to 1 without freeing while text3 holds it");
    TEST_ASSERT(SDLite_Text_SetFont(text3, font1) == 0,
                "Switching text3 back to font1 when text3 held the last ref to ephemeral_font succeeds");
    TEST_ASSERT(SDLite_Text_Font_GetRefs(font1) == 4, "font1 ref count is back to 4");
#ifdef TRACK_ALLOCATIONS
    size_t mem_after_ephemeral = MemTrack_Memory_Usage();
    TEST_ASSERT(mem_after_ephemeral == mem_before_ephemeral,
                "SDLite_Text_SetFont must free old SDLite_Text_Font when its ref count drops to 0");
#endif

    /*
     * Edge case 2: calling SDLite_Text_SetFont(t, f) with the SAME font when refs == 1
     * must not prematurely destroy the font before incrementing/preserving its ref!
     */
    TEST_SAFE_ASSERT(({
        SDLite_Text_Font *self_font = SDLite_Create_Text_Font("assets/default.ttf");
        SDLite_Text *self_text = SDLite_CreateText(display, "Self Font", self_font, 20.0f, 0, 0, white);
        SDLite_Destroy_Text_Font(&self_font); /* refs is now 1 (owned only by self_text) */
        int rc = SDLite_Text_SetFont(self_text, self_font);
        uint64_t refs_after = SDLite_Text_Font_GetRefs(self_font);
        int render_rc = SDLite_Render_Text(self_text);
        SDLite_DestroyText(self_text);
        (rc == 0 && refs_after == 1 && render_rc == 0);
    }), "SDLite_Text_SetFont with same font when refs == 1 must not free font prematurely");

    /*
     * Edge case 3: SDLite_CreateText font_size initialization before any Render_Text or SetFontSize call.
     * A newly created SDLite_Text_Font opens TTF_Font at 1.0f; SDLite_CreateText(..., font_size=48.0f, ...)
     * should reflect font_size=48.0f when querying SDLite_Text_Get_RenderRect immediately after creation.
     */
    SDLite_Text_Font *fresh_font = SDLite_Create_Text_Font("assets/default.ttf");
    SDLite_Text *fresh_text = SDLite_CreateText(display, "Large Initial Text", fresh_font, 48.0f, 0, 0, white);
    SDL_FRect fresh_rect = {0, 0, 0, 0};
    TEST_ASSERT(fresh_text != NULL && SDLite_Text_Get_RenderRect(fresh_text, &fresh_rect) == 0,
                "Get_RenderRect on freshly created 48pt text succeeds");
    TEST_ASSERT(fresh_rect.h >= 20.0f,
                "SDLite_CreateText(font_size=48.0f) should produce render_rect height for 48pt (not 1.0f default)");
    SDLite_DestroyText(fresh_text);
    SDLite_Destroy_Text_Font(&fresh_font);

    /*
     * Edge case 4: Two SDLite_Text instances sharing the same SDLite_Text_Font with different font_sizes
     * (text2 has font_size=36.0f, text3 has font_size=14.0f).
     * Querying SDLite_Text_Get_RenderRect on each should reflect its own font_size, even after rendering the other.
     */
    SDL_FRect rect2 = {0, 0, 0, 0}, rect3 = {0, 0, 0, 0};
    SDLite_Text_SetString(text2, "Same String");
    SDLite_Text_SetString(text3, "Same String");
    SDLite_Render_Text(text2); /* renders at 36.0f */
    SDLite_Render_Text(text3); /* renders at 14.0f */
    TEST_ASSERT(SDLite_Text_Get_RenderRect(text2, &rect2) == 0 && SDLite_Text_Get_RenderRect(text3, &rect3) == 0,
                "Get_RenderRect succeeds on both text2 (36pt) and text3 (14pt) sharing font1");
    TEST_ASSERT(rect2.w > rect3.w && rect2.h > rect3.h,
                "Shared font: text2 (36pt) render_rect must be larger than text3 (14pt) render_rect");

    /* Font size, string, position, wrap width, color, and render rect tests */
    TEST_ASSERT(SDLite_Text_SetFontSize(NULL, 32.0f) == 1, "SetFontSize(NULL, ...) fails");
    TEST_ASSERT(SDLite_Text_SetFontSize(text, 32.0f) == 0, "SetFontSize(32.0f) succeeds");

    /* Strict check: SDLite_text.h says SetString fails if text is NULL OR if string is NULL */
    TEST_ASSERT(SDLite_Text_SetString(NULL, "Hello") == 1, "SetString(NULL, ...) fails");
    TEST_ASSERT(SDLite_Text_SetString(text, NULL) == 1,
                "SDLite_Text_SetString(text, NULL) returns 1 per header contract");
    TEST_ASSERT(SDLite_Text_SetString(text, "Hello SDLite Suite") == 0, "SetString succeeds");

    TEST_ASSERT(SDLite_Text_SetPosition(NULL, 40, 50) == 1, "SetPosition(NULL, ...) fails");
    TEST_ASSERT(SDLite_Text_SetPosition(text, 40, 50) == 0, "SetPosition(40, 50) succeeds");

    SDL_FRect text_rect = {0, 0, 0, 0};
    TEST_ASSERT(SDLite_Text_Get_RenderRect(NULL, &text_rect) == 1, "Text_Get_RenderRect(NULL, ...) fails");
    TEST_ASSERT(SDLite_Text_Get_RenderRect(text, NULL) == 1, "Text_Get_RenderRect(text, NULL) fails");
    TEST_ASSERT(SDLite_Text_Get_RenderRect(text, &text_rect) == 0, "Text_Get_RenderRect succeeds");
    TEST_ASSERT(FLOAT_EQ(text_rect.x, 40.0f, 1e-4) && FLOAT_EQ(text_rect.y, 50.0f, 1e-4), "Text render_rect position matches (40, 50)");
    TEST_ASSERT(text_rect.w > 0.0f && text_rect.h > 0.0f, "Text render_rect has positive width and height");

    TEST_ASSERT(SDLite_Text_SetWrapWidth(NULL, 150) == 1, "SetWrapWidth(NULL, ...) fails");
    TEST_ASSERT(SDLite_Text_SetWrapWidth(text, 150) == 0, "SetWrapWidth(150) succeeds");
    TEST_ASSERT(SDLite_Text_SetWrapWidth(text, 0) == 0, "SetWrapWidth(0) succeeds");

    TEST_ASSERT(SDLite_Text_SetColor(NULL, (SDL_Color){100, 150, 200, 255}) == 1, "SetColor(NULL, ...) fails");
    TEST_ASSERT(SDLite_Text_SetColor(text, (SDL_Color){100, 150, 200, 255}) == 0, "SetColor succeeds");

    TEST_ASSERT(SDLite_Render_Text(NULL) == 1, "Render_Text(NULL) fails");
    TEST_ASSERT(SDLite_Render_Text(text) == 0, "Render_Text(text) succeeds");
    TEST_ASSERT(SDLite_Render_Text(text2) == 0, "Render_Text(text2) with shared font and different font_size succeeds");
    TEST_ASSERT(SDLite_Render_Text(text3) == 0, "Render_Text(text3) with shared font and different font_size succeeds");

    /* Destroy caller's font1 reference first while texts still own refs (like texture ref counting test) */
    SDLite_Destroy_Text_Font(&font2);
    TEST_ASSERT(font2 == NULL, "Destroy_Text_Font(&font2) sets font2 to NULL when refs reach 0");

    TEST_ASSERT(SDLite_Text_Font_GetRefs(font1) == 4, "font1 has 4 refs before Destroy_Text_Font");
    SDLite_Destroy_Text_Font(&font1);
    TEST_ASSERT(font1 != NULL && SDLite_Text_Font_GetRefs(font1) == 3,
                "Destroy_Text_Font decrements ref to 3 without freeing while 3 texts still own refs");

    SDLite_DestroyText(text3);
    TEST_ASSERT(SDLite_Text_Font_GetRefs(font1) == 2, "font1 has 2 refs after destroying text3");
    SDLite_DestroyText(text2);
    TEST_ASSERT(SDLite_Text_Font_GetRefs(font1) == 1, "font1 has 1 ref after destroying text2");
    SDLite_DestroyText(text);
}

/* =========================================================================
 * 8. Audio Strict Tests
 * ========================================================================= */
static void test_audio(void) {
    printf("[Suite 8] Testing SDLite_audio...\n");

    SDLite_Destroy_AudioHandler(NULL);
    TEST_ASSERT(SDLite_Audio_GetMixer(NULL) == NULL, "GetMixer(NULL) returns NULL");
    TEST_ASSERT(SDLite_Audio_GetTrack(NULL, 0) == NULL, "GetTrack(NULL, 0) returns NULL");
    TEST_ASSERT(SDLite_Audio_PlayTrack(NULL, 0) == 1, "PlayTrack(NULL, 0) returns 1");
    TEST_ASSERT(SDLite_Audio_StopTrack(NULL, 0, 0) == 1, "StopTrack(NULL, 0, 0) returns 1");
    TEST_ASSERT(SDLite_Audio_SetTrackAudio(NULL, 0, NULL) == 1, "SetTrackAudio(NULL, ...) returns 1");
    TEST_ASSERT(SDLite_Audio_SetTrackProp(NULL, 0, MIX_PROP_PLAY_LOOPS_NUMBER, 0) == 1, "SetTrackProp(NULL, ...) returns 1");
    TEST_ASSERT(SDLite_Audio_SetMasterVolume(NULL, 1.0f) == 1, "SetMasterVolume(NULL, ...) returns 1");
    float vol = 0.0f;
    TEST_ASSERT(SDLite_Audio_GetMasterVolume(NULL, &vol) == 1, "GetMasterVolume(NULL, ...) returns 1");
    TEST_ASSERT(SDLite_Audio_SetTrackVolume(NULL, 0, 1.0f) == 1, "SetTrackVolume(NULL, ...) returns 1");

    /* Strict check: track_capacity == 0 should fail */
    SDLite_Audio_Handler *zero_audio = SDLite_Create_AudioHandler(0, 1.0f);
    TEST_ASSERT(zero_audio == NULL, "SDLite_Create_AudioHandler(0, 1.0f) with 0 tracks returns NULL");
    if (zero_audio) SDLite_Destroy_AudioHandler(zero_audio);

    SDLite_Audio_Handler *audio = SDLite_Create_AudioHandler(3, 0.75f);
    if (!audio) {
        printf("  [INFO] No playback audio device available (%s); skipping live mixer device checks.\n", SDL_GetError());
        return;
    }

    TEST_ASSERT(SDLite_Audio_GetMixer(audio) != NULL, "GetMixer returns valid MIX_Mixer*");
    TEST_ASSERT(SDLite_Audio_GetTrack(audio, 0) != NULL, "GetTrack(0) returns valid SDLite_Track*");
    TEST_ASSERT(SDLite_Audio_GetTrack(audio, 2) != NULL, "GetTrack(2) returns valid SDLite_Track*");
    TEST_ASSERT(SDLite_Audio_GetTrack(audio, 3) == NULL, "GetTrack(3) out-of-bounds returns NULL");


    /*
     * Strict check: SDLite_audio.h states volume range is between 0.0f - 1.0f
     */
    TEST_ASSERT(SDLite_Audio_SetMasterVolume(audio, -0.5f) == 1,
                "SDLite_Audio_SetMasterVolume rejects negative volume (< 0.0f)");
    TEST_ASSERT(SDLite_Audio_SetTrackVolume(audio, 0, -0.5f) == 1,
                "SDLite_Audio_SetTrackVolume rejects negative volume (< 0.0f)");

    TEST_ASSERT(SDLite_Audio_GetMasterVolume(audio, NULL) == 1, "GetMasterVolume(audio, NULL) returns 1");
    TEST_ASSERT(SDLite_Audio_SetMasterVolume(audio, 0.25f) == 0, "SetMasterVolume(0.25) succeeds");
    TEST_ASSERT(SDLite_Audio_GetMasterVolume(audio, &vol) == 0 && FLOAT_EQ(vol, 0.25f, 1e-4), "Updated master volume is 0.25");

    TEST_ASSERT(SDLite_Audio_SetTrackVolume(audio, 3, 0.5f) == 1, "SetTrackVolume out-of-bounds fails");

    TEST_ASSERT(SDLite_Audio_SetTrackProp(audio, 0, NULL, 0) == 1, "SetTrackProp with NULL prop_name fails");
    TEST_ASSERT(SDLite_Audio_SetTrackProp(audio, 3, MIX_PROP_PLAY_LOOPS_NUMBER, 0) == 1, "SetTrackProp out-of-bounds fails");
    TEST_ASSERT(SDLite_Audio_SetTrackProp(audio, 0, MIX_PROP_PLAY_MAX_MILLISECONDS_NUMBER, 50) == 0, "SetTrackProp succeeds");

    MIX_Mixer *mixer = SDLite_Audio_GetMixer(audio);
    MIX_Audio *wav = MIX_LoadAudio(mixer, "assets/sample_wav.wav", true);
    MIX_Audio *ogg = MIX_LoadAudio(mixer, "assets/sample_ogg.ogg", true);
    MIX_Audio *mp3 = MIX_LoadAudio(mixer, "assets/sample_mp3.mp3", true);
    TEST_ASSERT(wav != NULL, "Loaded assets/sample_wav.wav");
    TEST_ASSERT(ogg != NULL, "Loaded assets/sample_ogg.ogg");
    TEST_ASSERT(mp3 != NULL, "Loaded assets/sample_mp3.mp3");

    TEST_ASSERT(SDLite_Audio_SetTrackAudio(audio, 0, NULL) == 1, "SetTrackAudio with NULL MIX_Audio* fails");
    TEST_ASSERT(SDLite_Audio_SetTrackAudio(audio, 3, wav) == 1, "SetTrackAudio out-of-bounds fails");
    TEST_ASSERT(SDLite_Audio_SetTrackAudio(audio, 0, wav) == 0, "SetTrackAudio(0, wav) succeeds");
    TEST_ASSERT(SDLite_Audio_SetTrackAudio(audio, 1, ogg) == 0, "SetTrackAudio(1, ogg) succeeds");
    TEST_ASSERT(SDLite_Audio_SetTrackAudio(audio, 2, mp3) == 0, "SetTrackAudio(2, mp3) succeeds");

    TEST_ASSERT(SDLite_Audio_PlayTrack(audio, 3) == 1, "PlayTrack out-of-bounds fails");
    TEST_ASSERT(SDLite_Audio_PlayTrack(audio, 0) == 0, "PlayTrack(0) succeeds");
    TEST_ASSERT(SDLite_Audio_StopTrack(audio, 3, 0) == 1, "StopTrack out-of-bounds fails");
    TEST_ASSERT(SDLite_Audio_StopTrack(audio, 0, 0) == 0, "StopTrack(0, 0) succeeds");

    MIX_DestroyAudio(wav);
    MIX_DestroyAudio(ogg);
    MIX_DestroyAudio(mp3);
    SDLite_Destroy_AudioHandler(audio);
}

int main(void) {
#ifdef TRACK_ALLOCATIONS
    const char *build_mode = "debugSDLite (TRACK_ALLOCATIONS)";
#elif defined(STDLIB_ALLOCATIONS)
    const char *build_mode = "SDLite (STDLIB_ALLOCATIONS)";
#else
    const char *build_mode = "SDLite (Safe Mode)";
#endif

    printf("============================================================\n");
    printf("Running SDLite Strict Automated Test Suite [%s]\n", build_mode);
    printf("============================================================\n");

    if (!SDL_getenv("DISPLAY") && !SDL_getenv("WAYLAND_DISPLAY")) {
        SDL_setenv_unsafe("SDL_VIDEODRIVER", "dummy", 0);
    }
    SDL_setenv_unsafe("SDL_AUDIODRIVER", "dummy", 0);

    int handler_arg = 0;
    /* Pass abort_if_mem_error = true, auto_null_pointers = false to test parameter order */
    if (SDLite_Init(custom_malloc_err_handler, &handler_arg, true, false) != 0) {
        SDL_setenv_unsafe("SDL_VIDEODRIVER", "dummy", 1);
        if (SDLite_Init(custom_malloc_err_handler, &handler_arg, true, false) != 0) {
            fprintf(stderr, "FATAL: SDLite_Init failed: %s\n", SDL_GetError());
            return 1;
        }
    }

    test_version_and_headers();
    test_init_and_memtrack();
    test_collision();
    test_time();

    SDLite_Display *display = SDLite_CreateDisplay("SDLite Automated Test Suite", 320, 240, SDL_WINDOW_HIDDEN);
    TEST_ASSERT(display != NULL, "Created hidden test window (320x240)");

    if (display) {
        test_display_and_input(display);
        test_textures_and_sprites(display);
        test_text(display);
        SDLite_DestroyDisplay(display);
        display = NULL;
    }

    test_audio();

    printf("[Suite 9] Verifying zero memory leaks before SDLite_Quit...\n");
    size_t final_bytes = MemTrack_Memory_Usage();
    int has_leak = MemTrack_Is_Memory_Leak();
    if (has_leak) {
        MemTrack_Tracking_Info();
    }
    TEST_ASSERT(final_bytes == 0, "Zero bytes remaining in MemTrack before SDLite_Quit");
    TEST_ASSERT(has_leak == 0, "MemTrack_Is_Memory_Leak() == 0 before SDLite_Quit");

    SDLite_Quit();

    printf("============================================================\n");
    printf("Results [%s]: %d/%d passed, %d failed\n",
           build_mode, g_tests_passed, g_tests_run, g_tests_failed);
    printf("============================================================\n");

    return (g_tests_failed == 0) ? 0 : 1;
}
