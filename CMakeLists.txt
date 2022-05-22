cmake_minimum_required(VERSION 3.10)

project(hello VERSION 1.0)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)


set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/modules/")

link_directories(${CMAKE_SOURCE_DIR}/lib)
# find the required packages
find_package(GLM REQUIRED)
message(STATUS "GLM included at ${GLM_INCLUDE_DIR}")
find_package(GLFW3 REQUIRED)
message(STATUS "Found GLFW3 in ${GLFW3_INCLUDE_DIR}")
find_package(ASSIMP REQUIRED)
message(STATUS "Found ASSIMP in ${ASSIMP_INCLUDE_DIR}")


set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -Wall")
find_package(OpenGL REQUIRED)
add_definitions(${OPENGL_DEFINITIONS})
find_package(X11 REQUIRED)

set(LIBS ${GLFW3_LIBRARY} X11 Xrandr Xinerama Xi Xxf86vm Xcursor GL dl pthread freetype ${ASSIMP_LIBRARY})
set (CMAKE_CXX_LINK_EXECUTABLE "${CMAKE_CXX_LINK_EXECUTABLE} -ldl")




# the same eith export(PACKAGE LOGL_ROOT_PATH=/home/tim/Desktop/HW/getting_started)
configure_file(configuration/root_directory.h.in configuration/root_directory.h)
include_directories(${CMAKE_BINARY_DIR}/configuration)


# first create relevant static libraries requried for other projects
add_library(STB_IMAGE "src/stb_image.cpp")
set(LIBS ${LIBS} STB_IMAGE)

add_library(GLAD "src/glad.c")
set(LIBS ${LIBS} GLAD)



# add_executable(hello src/1.getting_started/3.3.shaders_class/hello_shader_class.cpp ${SOURCE} )
# add_executable(hello src/1.getting_started/4.1.textures/hello_texture.cpp ${SOURCE} )
# add_executable(hello src/2.lighting/6.multiple_lights/light_casters_spot_soft.cpp ${SOURCE} )
add_executable(hello src/4.advanced_opengl/5.2.framebuffers_exercise1/framebuffers_exercise1.cpp
                ${SOURCE} )

target_link_libraries(hello PUBLIC ${LIBS} )
set_target_properties(hello PROPERTIES RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin/")



include_directories(${CMAKE_SOURCE_DIR}/includes)
