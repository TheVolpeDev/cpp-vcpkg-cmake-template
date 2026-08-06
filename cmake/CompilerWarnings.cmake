function(set_project_warnings TARGET)

    option(WARNINGS_AS_ERRORS "Treat warnings as errors" OFF)

    if(CMAKE_CXX_COMPILER_ID MATCHES "Clang|GNU")

        set(GCC_CLANG_WARNINGS
            -Wall
            -Wextra
            -Wpedantic
            -Wconversion
            -Wshadow
            -Wnon-virtual-dtor
            -Woverloaded-virtual
            -Wold-style-cast
            -Wcast-align
            -Wformat=2
            -Wnull-dereference
            -Wmisleading-indentation
            -Wduplicated-cond
        )

        if(WARNINGS_AS_ERRORS)
            list(APPEND GCC_CLANG_WARNINGS -Werror)
        endif()

        target_compile_options(
            ${TARGET}

            PRIVATE
            ${GCC_CLANG_WARNINGS}
        )

    elseif(MSVC)

        set(MSVC_WARNINGS
            /W4
            /permissive-
        )

        if(WARNINGS_AS_ERRORS)
            list(APPEND MSVC_WARNINGS /WX)
        endif()

        target_compile_options(
            ${TARGET}

            PRIVATE
            ${MSVC_WARNINGS}
        )

    endif()

endfunction()
