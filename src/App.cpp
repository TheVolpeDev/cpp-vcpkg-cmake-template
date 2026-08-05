#include "CppTemplate/App.hpp"

#include <iostream>

// Ignoring the warning because App might eventually hold state, therefore can not be static
// NOLINTNEXTLINE(readability-convert-member-functions-to-static)
void App::run()
{
    std::cout << "Hello World\n";
}