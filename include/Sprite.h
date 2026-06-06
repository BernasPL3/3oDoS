#pragma once

class Sprite
{
public:
    float x;
    float y;
    int width;
    int height;

    Sprite()
    {
        x = 0;
        y = 0;
        width = 16;
        height = 16;
    }

    void draw();
};
