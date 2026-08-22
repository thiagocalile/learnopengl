cmake_minimum_required(VERSION 3.23)

project(LearnOpenGL)

find_package(glfw3 REQUIRED)

add_library(GLAD)
target_sources(GLAD
  PRIVATE
    glad.c

  PUBLIC
    FILE_SET glad_headers
    TYPE HEADERS
    BASE_DIRS
      includes
    FILES
      includes/glad/glad.h
)

add_subdirectory(01_comecando)
