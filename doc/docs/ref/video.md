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

>***flags*** : Zero or more [flags](values.md#window-flags).

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

---
Procedure:
>(**sdl-gl-get-attribute** *attribute*) → number

Parameters:
>***attribute*** : A SDL OpenGL [attribute](values.md#opengl-attributes).

Returns:
> The value of the attribute or a negative value.

C Function Name:
>`SDL_GL_GetAttribute`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GL_GetAttribute)

>[SDL Wiki](https://wiki.libsdl.org/SDL_GLattr)

---
Procedure:
>(**sdl-gl-get-current-context**) → SDL_GLContext

Returns:
> The window with an OpenGL context.

C Function Name:
>`SDL_GL_GetCurrentWindow`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GL_GetCurrentWindow)

---
Procedure:
>(**sdl-gl-get-current-window**) → SDL_Window

Returns:
> The current OpenGL context.

C Function Name:
>`SDL_GL_GetCurrentContext`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GL_GetCurrentContext)

---
Procedure:
>(**sdl-gl-get-drawable-size** *window*) → list

Parameters:
>***window*** : A SDL_Window.

Returns:
> The list `(x, y)` of the window.

C Function Name:
>`SDL_GL_GetDrawableSize`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GL_GetDrawableSize)

---
Procedure:
>(**sdl-gl-get-drawable-size** *window*) → list

Parameters:
>***window*** : A SDL_Window.

Returns:
> The list `(x, y)` of the window.

C Function Name:
>`SDL_GL_GetDrawableSize`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GL_GetDrawableSize)

---
Procedure:
>(**sdl-gl-get-swap-interval**) → number

Returns:
> `0` if no v-sync; `1` if v-sync; `-1` if adaptive v-sync;

C Function Name:
>`SDL_GL_GetSwapInterval`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GL_GetSwapInterval)

---
Procedure:
>(**sdl-gl-make-current** *window* *context*) → number

Parameters:
>***window*** : A SDL_Window.

>***context*** : A SDL_GLContext.

Returns:
> Result code. `0` for no failure.

C Function Name:
>`SDL_GL_MakeCurrent`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GL_MakeCurrent)

---
Procedure:
>(**sdl-gl-reset-attributes!**) → void

C Function Name:
>`SDL_GL_ResetAttributes`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GL_ResetAttributes)

---
Procedure:
>(**sdl-gl-set-attribute!** *attribute* *value*) → number

Parameters:
>***attribute*** : A SDL OpenGL [attribute](values.md#opengl-attributes).

>***value*** : A number to set the attribute.

Returns:
> Result code. `0` if no failure.

C Function Name:
>`SDL_GL_SetAttribute`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GL_SetAttribute)

>[SDL Wiki](https://wiki.libsdl.org/SDL_GLattr)

---
Procedure:
>(**sdl-gl-set-swap-interval!** *interval*) → number

Parameters:
>***interval*** : `0` for no v-sync; `1` for v-sync; `-1` for adaptive v-sync;

Returns:
> Result code. `0` for no failure.

C Function Name:
>`SDL_GL_SetSwapInterval`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GL_SetSwapInterval)

---
Procedure:
>(**sdl-gl-swap-window** *window*) → void

Parameters:
>***window*** : A SDL_Window.

C Function Name:
>`SDL_GL_SwapWindow`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GL_SwapWindow)

---
Procedure:
>(**sdl-get-current-video-driver**) → string

Returns:
> Name of current video driver.

C Function Name:
>`SDL_GetCurrentVideoDriver`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GetCurrentVideoDriver)

---
Procedure:
>(**sdl-get-display-bounds** *display-index*) → sdl-rect | number

Parameters:
>***display-index*** : A number. The index to query.

Returns:
> An `sdl-rect` or an error code.

C Function Name:
>`SDL_GetDisplayBounds`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GetDisplayBounds)

---
Procedure:
>(**sdl-get-display-dpi** *display-index*) → list | number

Parameters:
>***display-index*** : A number. The index to query.

Returns:
> A list `(ddpi hdpi vdpi)` or an error code.

C Function Name:
>`SDL_GetDisplayDPI`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GetDisplayDPI)

---
Procedure:
>(**sdl-get-display-name** *display-index*) → string

Parameters:
>***display-index*** : A number. The index to query.

Returns:
> The display name.

C Function Name:
>`SDL_GetDisplayName`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GetDisplayName)

---
Procedure:
>(**sdl-get-display-usable-bounds** *display-index*) → sdl-rect | number

Parameters:
>***display-index*** : A number. The index to query.

Returns:
> A `sdl-rect` or and error code.

C Function Name:
>`SDL_GetDisplayUsableBounds`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GetDisplayUsableBounds)

---
Procedure:
>(**sdl-get-grabbed-window**) → SDL_Window

Returns:
> The `SDL_Window` that's grabbed.

C Function Name:
>`SDL_GetGrabbedWindow`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GetGrabbedWindow)

---
Procedure:
>(**sdl-get-num-display-modes** *display-index*) → number

Parameters:
>***display-index*** : A number. The index to query.

Returns:
> Number of display modes or a negative number error code.

C Function Name:
>`SDL_GetNumDisplayModes`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GetNumDisplayModes)

---
Procedure:
>(**sdl-get-num-video-displays**) → number

Returns:
> Number of video modes or a negative number error code.

C Function Name:
>`SDL_GetNumVideoDisplays`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GetNumVideoDisplays)

---
Procedure:
>(**sdl-get-num-video-drivers**) → number

Returns:
> Number of video modes or a negative number error code.

C Function Name:
>`SDL_GetNumVideoDrivers`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GetNumVideoDrivers)

---
Procedure:
>(**sdl-get-video-driver** *index*) → string

Parameters:
>***index*** : A number. The index to query.

Returns:
> The video driver name.

C Function Name:
>`SDL_GetVideoDriver`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GetVideoDriver)

---
Procedure:
>(**sdl-get-window-surface** *window*) → SDL_Surface

Parameters:
>***window*** : A `SDL_Window`.

Returns:
> The `SDL_Surface` of the window.

C Function Name:
>`SDL_GetWindowSurface`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GetWindowSurface)

---
Procedure:
>(**sdl-show-window** *window*) → void

Parameters:
>***window*** : A `SDL_Window`.

C Function Name:
>`SDL_ShowWindow`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_ShowWindow)

---
Procedure:
>(**sdl-update-window-surface** *window*) → number

Parameters:
>***window*** : A `SDL_Window`.

Returns:
> `0` if no failure.

C Function Name:
>`SDL_UpdateWindowSurface`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_UpdateWindowSurface)



# 2D Accelerated Rendering



# Pixel Formats & Conversion Routines



# Rectangle Functions



# Surface Creation & Simple Drawing



# Clipboard Handling



# Vulkan Support

