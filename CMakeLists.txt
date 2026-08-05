cmake_minimum_required(VERSION 3.25)

project(
    CppTemplate
    VERSION 0.1.0
    LANGUAGES CXX
)


set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)


add_executable(
    ${PROJECT_NAME}

    src/main.cpp
    src/App.cpp
)


target_include_directories(
    ${PROJECT_NAME}

    PRIVATE
    include
)


include(cmake/CompilerWarnings.cmake)

set_project_warnings(${PROJECT_NAME})