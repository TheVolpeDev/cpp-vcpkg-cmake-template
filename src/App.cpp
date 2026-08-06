#include "CppTemplate/App.hpp"

#include <cstdio>

// App will eventually hold state, so run() must remain a member function.
// NOLINTNEXTLINE(readability-convert-member-functions-to-static)
void App::run() const noexcept
{
    std::puts("Hello World");
}
