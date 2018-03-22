cmake_minimum_required(VERSION 3.9)

project(add_glasses)

FIND_PACKAGE(OpenCV REQUIRED)

add_subdirectory(/usr/lib/dlib-19.9/dlib dlib)

set(CMAKE_CXX_STANDARD 11)

add_executable(add_glasses main.cpp)
#add_executable(add_glasses webcam.cpp)

target_link_libraries(add_glasses ${OpenCV_LIBS})
set_property(TARGET dlib PROPERTY POSITION_INDEPENDENT_CODE ON)
target_link_libraries(add_glasses dlib::dlib)



