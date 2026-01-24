#pragma once

#include "SDK1/SDK.h"
#include <math.h>





typedef struct{

    SDK_Display *display;
    SDK_Time *time;
    SDK_Input *input;
    SDK_Text *fps_text;

} Appstate;