#pragma once

class App
{
  public:
    App() = default;
    ~App() = default;

    App(const App&) = delete;
    App& operator=(const App&) = delete;

    App(App&&) noexcept = default;
    App& operator=(App&&) noexcept = default;

    void run() const noexcept;
};