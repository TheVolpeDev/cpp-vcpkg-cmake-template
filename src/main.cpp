#include "CppTemplate/App.hpp"

#include <cstdlib>
#include <exception>
#include <iostream>

int main()
{
    try
    {
        const App app;
        app.run();
    }
    catch (const std::exception& e)
    {
        std::cerr << "Fatal: " << e.what() << '\n';
        return EXIT_FAILURE;
    }
    catch (...)
    {
        std::cerr << "Fatal: unknown exception\n";
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}
