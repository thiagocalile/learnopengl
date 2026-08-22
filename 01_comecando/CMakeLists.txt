add_executable(01_comecando)

target_sources(01_comecando
PRIVATE
  main.cpp
)

target_link_libraries(01_comecando
  PRIVATE
    GLAD
    glfw
)
