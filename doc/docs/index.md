SDL2 is a cross platform library for interfacing with multimedia and HID hardware and software devices. The library is free, open-source and, currently has permissive licensing. SDL2 is suitable for professional products and, has found use in both large and small projects.

# Setup Guide

In general, setting up an environment to work with Chez-SDL is about the same across all supported platforms.

* Install Chez Scheme
* Install the SDL2 development library
* Install Chez-SDL

It is always recommended to build Chez Scheme from it's source code.

## Windows

### Installing Chez Scheme

For an installation on Windows, a development environment should have the following installed:

* [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10)
* [Visual Studio Community](https://visualstudio.microsoft.com/vs/community/)
* [WiX Toolset](https://wixtoolset.org/releases/)
* [SDL2](https://www.libsdl.org/download-2.0.php)

The [documentation](https://github.com/cisco/ChezScheme/blob/master/BUILDING#L229) for building Chez provides instructions for building on Windows.

### Install libSDL2

Navigate to [SDL2's website](https://www.libsdl.org/download-2.0.php) and, download the runtime library. This guide will be using the the 64-bit version. Unzip the library and place the dll file in a directory for libraries. This can be any directory of your choosing. I recommend placing the file in Chez's installation directory.

A highly recommended alternative would be to use a package manager for Windows like [MSYS2](https://www.msys2.org/). This will handle downloading, installing, and maintaining the library for you. All that's required for installing the library is a single command.

```bash
pacman -S mingw-w64-x86_64-SDL2
```

### Install Chez-SDL

To install Chez-SDL, simply clone the repository into a directory for your Chez libraries. This can be any directory of your choosing.

```bash
git clone https://github.com/steven741/chez-sdl.git
```

Add the path of the library to `CHEZSCHEMELIBDIRS` and, verify that sdl can be imported in Chez.


## macOS & Linux

Building on macOS and Linux is about the same. For macOS, common development tools should be installed. [Xcode](https://developer.apple.com/xcode/) with CLI tooling and [brew](https://brew.sh/). The most common Linux distributions should have the required tools and libraries avaliable in their package manager.

The [documentation](https://github.com/cisco/ChezScheme/blob/master/BUILDING) for building Chez goes into enough detail for building on a *nix type system and, I will only go over a brief overview here.

Install libuuid, libncurses and, libX. Install the typical GNU build tools like gcc and make. Run `./configure` and `make`. If project builds correctly run `make install`. To install the SDL2 bindings clone the Chez-SDL repo somewhere and, export `CHEZSCHEMELIBDIRS` with the path to the library's source.

# Navigating Documentation

The documentation is seperated into 2 main parts. There is a section containing tutorials and, there is an API reference guide.

The tutorials move at a very fast pace and, try to cover as much useful information as possible. They are provided to give a realistic overview of using SDL2 with Chez.

The API reference guide contains all the SDL2 procedures avaliable in the library. The entries also provide details about any inconsistencies in the interface. The conventional C function names are provided where applicable to help improve searchability of procedures.