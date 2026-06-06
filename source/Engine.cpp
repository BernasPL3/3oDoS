#include "Engine.h"
#include <3ds.h>

bool Engine::running()
{
    return aptMainLoop();
}

void Engine::beginFrame()
{
    hidScanInput();
}

void Engine::endFrame()
{
    gspWaitForVBlank();
}
