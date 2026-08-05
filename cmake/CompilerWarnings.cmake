function(set_project_warnings TARGET)

    if(CMAKE_CXX_COMPILER_ID MATCHES "Clang|GNU")

        target_compile_options(
            ${TARGET}

            PRIVATE

            -Wall
            -Wextra
            -Wpedantic
            -Wconversion
            -Wshadow
        )

    elseif(MSVC)

        target_compile_options(
            ${TARGET}

            PRIVATE

            /W4
        )

    endif()

endfunction()