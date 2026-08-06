#include "CppTemplate/App.hpp"

#include <catch2/catch_test_macros.hpp>

TEST_CASE("App default construction", "[app]")
{
    App app;
    SUCCEED();
}

TEST_CASE("App run does not throw", "[app]")
{
    const App app;
    REQUIRE_NOTHROW(app.run());
}
