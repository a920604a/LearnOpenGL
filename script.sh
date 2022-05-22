#! /bin/zsh
export LOGL_ROOT_PATH=/home/tim/Desktop/HW/getting_started

# Triangle
g++ src/1.getting_started/2.1.hello_triangle/hello_triangle.cpp src/glad.c -lglfw3 -lGL -lX11 -lpthread -lXrandr -lXi -ldl  -o main && ./main
# g++ src/1.getting_started/1.1.hello_window/hello_window.cpp src/glad.c -lglfw3 -lGL -lX11 -lpthread -lXrandr -lXi -ldl  -o main && ./main


# Shader
# g++ hello_shader_class.cpp glad.c ./shaders/shader_class.cpp -lglfw3 -lGL -lX11 -lpthread -lXrandr -lXi -ldl -o main && ./main
# g++ src/1.getting_started/3.3.shaders_class/hello_shader_class.cpp  -lglfw3 -lGL -lX11 -lpthread -lXrandr -lXi -ldl -o main && ./main


# Texture

# g++ hello_texture.cpp glad.c -lglfw3 -lGL -lX11 -lpthread -lXrandr -lXi -ldl -o main && ./main

# Transformation
# g++ hello_transformations_exercise2.cpp glad.c -lglfw3 -lGL -lX11 -lpthread -lXrandr -lXi -ldl -o main && ./main

# Coordinate System
# g++ hello_coordinate_system_multuple.cpp glad.c -lglfw3 -lGL -lX11 -lpthread -lXrandr -lXi -ldl -o main && ./main

# Camera
# g++ hello_camera_class.cpp glad.c -lglfw3 -lGL -lX11 -lpthread -lXrandr -lXi -ldl -o main && ./main

# Color
# g++ ./2.lighting/1.colors/colors.cpp glad.c -lglfw3 -lGL -lX11 -lpthread -lXrandr -lXi -ldl -o main && ./main

# depth
# g++ src/4.advanced_opengl/1.2.depth_testing_view/depth_testing_view.cpp src/glad.c lglfw3 -lGL -lX11 -lpthread -lXrandr -lXi -ldl -o main && ./main
