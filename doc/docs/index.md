SDL2 is a cross platform library for interfacing with multimedia and HID hardware and software devices. The library is free, open-source and, currently has permissive licensing. SDL2 is suitable for professional products and, has found use in both large and small projects.

# Setup Guide

In general, setting up an envirorment to work with Chez-SDL is about the same accross all convential platforms.

* Install Chez Scheme
* Install the SDL2 development libraries
* Install Chez-SDL

It is always recommended to build Chez Scheme from the source.

## Windows

### Installing Chez Scheme

For an installation on Windows, a proper development envirorment should have the following installed:

* [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10)
* [Visual Studio Community](https://visualstudio.microsoft.com/vs/community/)
* [WiX Toolset](https://wixtoolset.org/releases/)
* [SDL2](https://www.libsdl.org/download-2.0.php)

This guide will be using Ubuntu 18.04 and VS2019. The [documentation](https://github.com/cisco/ChezScheme/blob/master/BUILDING#L229) for building Chez has instructions for other versions of these tools.

During the installation of VS2019, or after, install the 'Desktop development with C++' workload. It's also neccesary to go into the 'Compilers, build tools, and runtimes' tab and install 'C++ 2019 Redistributable MSMs'. It will be under the 'Individual components' section.

Change directories into a local directory in your home folder and, clone [Chez's repository](https://github.com/cisco/ChezScheme).

```bash
cd /mnt/c/Users/*username-here*/Desktop
```
```bash
git clone https://github.com/cisco/ChezScheme.git
```

Change directories into the project and, configure the project for a build.

```bash
cd ChezScheme
```
```bash
env OS=Windows_NT ./configure
```
```bash
cd wininstall
```
```bash
make workareas -j
```
```bash
make -j
```

Once the build finishes you should have an exectuable file that will install Chez onto your computer. Proceed to install Chez from that executable.

### Install libSDL2

Navigate to [SDL2's website](https://www.libsdl.org/download-2.0.php) and, download the runtime library. This guide will be using the the 64-bit version. Unzip the library and place the dll file in a directory for libraries. This can be any directory of your choosing. I reccomend placing the file in Chez's installation directory.

Another, highly reccomended, alternative would be to use a package manager for Windows like [MSYS2](https://www.msys2.org/). This will handle downloading, installing, and maintaning the library for you. All that's required for installing the library is a single command.

```bash
pacman -S mingw-w64-x86_64-SDL2
```

### Install Chez-SDL

To install Chez-SDL, simply clone the repository into a directory for your Chez libraries. This can be any directory of your choosing.

```bash
git clone https://github.com/steven741/chez-sdl.git
```

### Configuring the Envirorment Variables

To access the panel for configuring envirorment variables go into the start menu and, do a search for 'Environment Variables'. This is usually sufficent to access the panel. You have 2 'Path' variables; user and system variables. Which one is choosen doesn't matter for this guide.

The directory for your SDL2 dll should be added to the path. A new variable called 'CHEZSCHEMELIBDIRS' should be added. This should contain the directory of Chez-SDL.


## macOS

## Linux

# Navigating Documentation
