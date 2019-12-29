# Display & Window Management

---
Procedure:
>(**sdl-create-window** *title* *x* *y* *w* *h* *flags...*) → SDL_Window

Parameters:
>***title*** : A string. Title of the window.

>***x*** : An integer or `SDL-WINDOWPOS-UNDEFINED`. x-position of the window.

>***y*** : An integer or `SDL-WINDOWPOS-UNDEFINED`. y-position of the window.

>***w*** : An integer. The width of the viewport of the window.

>***h*** : An integer. The height of the viewport of the window.

>| *flags*                       |
 | :---------------------------- |
 | SDL-WINDOW-FULLSCREEN         |
 | SDL-WINDOW-OPENGL             |
 | SDL-WINDOW-SHOWN              |
 | SDL-WINDOW-HIDDEN             |
 | SDL-WINDOW-BORDERLESS         |
 | SDL-WINDOW-RESIZABLE          |
 | SDL-WINDOW-MINIMIZED          |
 | SDL-WINDOW-MAXIMIZED          |
 | SDL-WINDOW-INPUT-GRABBED      |
 | SDL-WINDOW-INPUT-FOCUS        |
 | SDL-WINDOW-MOUSE-FOCUS        |
 | SDL-WINDOW-FULLSCREEN-DESKTOP |
 | SDL-WINDOW-FOREIGN            |
 | SDL-WINDOW-ALLOW-HIGHDPI      |
 | SDL-WINDOW-MOUSE-CAPTURE      |
 | SDL-WINDOW-ALWAYS-ON-TOP      |
 | SDL-WINDOW-SKIP-TASKBAR       |
 | SDL-WINDOW-UTILITY            |
 | SDL-WINDOW-TOOLTIP            |
 | SDL-WINDOW-POPUP-MENU         |
 | SDL-WINDOW-VULKAN             |

Returns:
> A `SDL_Window` object.

C Function Name:
>`SDL_CreateWindow`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_CreateWindow)
>[SDL Wiki](https://wiki.libsdl.org/SDL_WindowFlags)

Examples:
```scheme
(define *window*
  (sdl-create-window
    "SDL2 on Scheme"
    SDL-WINDOWPOS-UNDEFINED
    SDL-WINDOWPOS-UNDEFINED
    800
    600
    SDL-WINDOW-SHOWN
    SDL-WINDOW-OPENGL))
```

---
Procedure:
>(**sdl-destroy-window** *window*) → void

Parameters:
>***window*** : A `SDL_Window` object.

C Function Name:
>`SDL_DestroyWindow`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_DestroyWindow)

---
Procedure:
>(**sdl-disable-screen-saver**) → void

C Function Name:
>`SDL_DisableScreenSaver`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_DisableScreenSaver)

---
Procedure:
>(**sdl-enable-screen-saver**) → void

C Function Name:
>`SDL_EnableScreenSaver`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_EnableScreenSaver)

---
Procedure:
>(**sdl-gl-create-context** *window*) → SDL_GLContext

Parameters:
>***window*** : A `SDL_Window` object.

Returns:
> A `SDL_GLContext` object.

C Function Name:
>`SDL_GL_CreateContext`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GL_CreateContext)

---
Procedure:
>(**sdl-gl-delete-context** *gl-context*) → void

Parameters:
>***gl-context*** : A `SDL_GLContext` object.

C Function Name:
>`SDL_GL_DeleteContext`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GL_DeleteContext)

---
Procedure:
>(**sdl-gl-extension-supported?** *extension*) → boolean

Parameters:
>***extension*** : A string. Name of the OpenGL extension.

Returns:
> `#t` if extension is supported otherwise `#f`.

C Function Name:
>`SDL_GL_ExtensionSupported`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GL_ExtensionSupported)



# 2D Accelerated Rendering



# Pixel Formats & Conversion Routines



# Rectangle Functions



# Surface Creation & Simple Drawing



# Clipboard Handling



# Vulkan Support

