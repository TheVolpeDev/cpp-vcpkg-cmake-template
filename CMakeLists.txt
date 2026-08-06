cmake_minimum_required(VERSION 3.25)

project(
    CppTemplate
    VERSION 0.1.0
    LANGUAGES CXX
)

add_library(${PROJECT_NAME}_lib STATIC src/App.cpp)

target_compile_features(${PROJECT_NAME}_lib PUBLIC cxx_std_23)

target_include_directories(
    ${PROJECT_NAME}_lib

    PUBLIC
    ${PROJECT_SOURCE_DIR}/include
)

add_executable(
    ${PROJECT_NAME}

    src/main.cpp
)

target_link_libraries(${PROJECT_NAME} PRIVATE ${PROJECT_NAME}_lib)

include(cmake/CompilerWarnings.cmake)

set_project_warnings(${PROJECT_NAME}_lib)
set_project_warnings(${PROJECT_NAME})

option(ENABLE_SANITIZERS "Enable ASan + UBSan" OFF)
if(ENABLE_SANITIZERS)
    add_compile_options(-fsanitize=address,undefined -fno-omit-frame-pointer)
    add_link_options(-fsanitize=address,undefined)
endif()

enable_testing()
add_subdirectory(tests)

install(TARGETS ${PROJECT_NAME} DESTINATION bin)
