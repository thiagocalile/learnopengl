set(
  TARGETS
  hello_window
  hello_triangle
)

foreach(TARGET IN LISTS TARGETS)

  add_executable(${TARGET})

  target_sources(${TARGET}
    PRIVATE
      ${TARGET}.cpp
    )


  target_link_libraries(${TARGET}
    PRIVATE
      GLAD
      glfw
    )
    
endforeach()
