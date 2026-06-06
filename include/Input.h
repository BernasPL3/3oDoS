#pragma once

#include <3ds.h>

class Input
{
public:
    static void update();

    static bool left();
    static bool right();
    static bool up();
    static bool down();

    static bool a();
    static bool b();

    static bool start();

private:
    static u32 keysHeld;
};
