#version 330 core
layout (location = 0) in vec3 pos;
layout (location = 1) in vec3 color;

out vec3 ourColor;
uniform float xOffset;
void main()
{
    gl_Position = vec4(pos.x + xOffset, pos.y, pos.z, 1.0f); // add the xOffset to the x position of the vertex position
    ourColor = color;
}