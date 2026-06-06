#include "Input.h"

u32 Input::keysHeld = 0;

void Input::update()
{
    hidScanInput();
    keysHeld = hidKeysHeld();
}

bool Input::left()
{
    return keysHeld & KEY_LEFT;
}

bool Input::right()
{
    return keysHeld & KEY_RIGHT;
}

bool Input::up()
{
    return keysHeld & KEY_UP;
}

bool Input::down()
{
    return keysHeld & KEY_DOWN;
}

bool Input::a()
{
    return keysHeld & KEY_A;
}

bool Input::b()
{
    return keysHeld & KEY_B;
}

bool Input::start()
{
    return keysHeld & KEY_START;
}
