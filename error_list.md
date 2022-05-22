
1. 因為source code 是跑在windows 所以 filesystem.h 不適合用 `FileSystem::getPath`

```c++
- unsigned int cubeTexture  = loadTexture(FileSystem::getPath("resources/textures/marble.jpg").c_str());
+ unsigned int cubeTexture  = loadTexture("resources/textures/marble.jpg");
```
2. 有時要修改路徑 Shader lightingShader("src/path/*.vs", "src/path/*.fs");
3. model [Missing textures on backpack.obj #180](https://github.com/JoeyDeVries/LearnOpenGL/issues/180)
```
// Texture failed to load at path: use.jpg
// Texture failed to load at path: ular.jpg
// Texture failed to load at path: al.png


diffuse.jpg >>> use.jpg
normal.png >>>al.png
specular.jpg >>> ular.jpg

``` 


[Failed to load texture filename using GetTexture in assimp v5.0.0](https://github.com/assimp/assimp/issues/2754)
```
In my case this was caused by the older assimp headers included in the learnopengl repository (includes/assimp). Those headers use size_t for the string length, assimp 5 uses uint32_t.

Once I removed the learnopengl includes/assimp directory and recompiled it worked fine.
在我的情况下，这是由learningopengl信息库（includes / assimp）中包含的较旧assimp标头引起的。这些标题使用size_t作为字符串长度，而assimp 5使用uint32_t。

一旦删除了learningopengl includes / assimp目录并重新编译，它就可以正常工作。


```


- maybe occur redefinition
```c++
// main.cpp
#include <stb_image.h>
#include <learnopengl/model.h>

// model.h
#include <stb_image.h>

```
- [skeletal_animation can work] (https://github.com/JoeyDeVries/LearnOpenGL/blob/636cfae62286b6aa2101a767c7249193a9c8adda/src/8.guest/2020/skeletal_animation/skeletal_animation.cpp)