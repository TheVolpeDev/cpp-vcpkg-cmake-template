# C++ CMake + vcpkg Template

A modern C++23 project template using:

- CMake
- vcpkg (Manifest Mode)
- Ninja
- clangd
- clang-format
- clang-tidy

The template is Linux-first but fully supports Windows.

>![IMPORTANT]
>In case VSCode or another editor is acting up in regards to files not being found or classes not existing, make sure to restart the clangd language server, that should fix the issue. Also note that you should first run one of the build scripts (build.sh for Unix systems, build.bat for Windows) to generate the compiler commands.

---

# Features

- C++23
- vcpkg dependency management
- CMake Presets
- clangd-ready
- VS Code ready
- Neovim friendly
- GCC, Clang and MSVC support

---

# Requirements

## Fedora

```bash
sudo dnf install \
git \
gcc-c++ \
clang \
clang-tools-extra \
cmake \
ninja-build \
lldb \
python3
```

---

## Ubuntu / Debian

```bash
sudo apt install \
git \
build-essential \
clang \
clang-tools \
cmake \
ninja-build \
lldb \
python3
```

---

## Arch Linux

```bash
sudo pacman -S \
git \
base-devel \
clang \
cmake \
ninja \
lldb \
python
```

---

## openSUSE

```bash
sudo zypper install \
git \
gcc-c++ \
clang \
clang-tools \
cmake \
ninja \
lldb \
python3
```

---

## Windows

Install:

- Visual Studio 2022 Build Tools (Desktop development with C++)
- CMake
- Ninja
- Git
- LLVM (clang, clang-format, clang-tidy, lldb)

---

# Install vcpkg

Clone vcpkg somewhere permanent.

```bash
git clone https://github.com/microsoft/vcpkg.git ~/Development/tools/vcpkg
```

Bootstrap it.

Linux/macOS:

```bash
cd ~/Development/tools/vcpkg
./bootstrap-vcpkg.sh
```

Windows:

```bat
bootstrap-vcpkg.bat
```

---

# Configure VCPKG_ROOT

Linux:

```bash
export VCPKG_ROOT=$HOME/Development/tools/vcpkg
```

Add that to your shell configuration (`~/.bashrc`, `~/.zshrc`, etc.).

Windows:

```bat
setx VCPKG_ROOT C:\Development\vcpkg
```

Restart your terminal afterwards.

---

# Clone

```bash
git clone <your-template>
cd cpp-template
```

---

# Build

Debug

```bash
./build.sh
```

Release

```bash
./build.sh release
```

Windows

```bat
build.bat
build.bat release
```

---

# Adding Dependencies

Edit `vcpkg.json`.

Example:

```json
{
  "dependencies": ["fmt", "spdlog", "entt"]
}
```

Re-run the build script.

vcpkg will automatically install any missing dependencies.

---

# Recommended VS Code Extensions

- clangd
- CMake Tools
- CodeLLDB

The repository already recommends these extensions automatically.

---

# Neovim & Other Editors

The template generates `compile_commands.json`, allowing `clangd` to work without any additional configuration.

---
