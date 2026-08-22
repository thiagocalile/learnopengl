cmake_minimum_required(VERSION 3.23)

project(LearnOpenGL)

add_executable(exercise)
target_sources(exercise
  PRIVATE
    main.cpp
  )

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

target_link_libraries(exercise
  PRIVATE
    GLAD  
  )
