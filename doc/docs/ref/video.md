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
> The list `(x y)` of the window.

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
> The list `(x y)` of the window.

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
>***window*** : A `SDL_Window` object.

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
>***window*** : A `SDL_Window` object.

Returns:
> `0` if no failure.

C Function Name:
>`SDL_UpdateWindowSurface`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_UpdateWindowSurface)



# 2D Accelerated Rendering

---
Procedure:
>(**sdl-compose-custom-blend-mode** *src-color-factor* *dst-color-factor* *color-operation* *src-alpha-factor* *dst-alpha-factor* *alpha-operation*) → number

Parameters:
>***src-color-factor*** : A [blend factor](values.md#blend-factors).

>***dst-color-factor*** : A [blend factor](values.md#blend-factors).

>***color-operation*** : A [blend operations](values.md#blend-operations).

>***src-alpha-factor*** : A [blend factor](values.md#blend-factors).

>***dst-alpha-factor*** : A [blend factor](values.md#blend-factors).

>***alpha-operation*** : A [blend operations](values.md#blend-operations).

Returns:
> A [blend mode](values.md#blend-modes).

C Function Name:
>`SDL_ComposeCustomBlendMode`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_ComposeCustomBlendMode)

>[SDL Wiki](https://wiki.libsdl.org/SDL_BlendFactor)

>[SDL Wiki](https://wiki.libsdl.org/SDL_BlendOperation)

>[SDL Wiki](https://wiki.libsdl.org/SDL_BlendMode)

---
Procedure:
>(**sdl-create-renderer** *window* *index* *flags...*) → SDL_Renderer

Parameters:
>***window*** : A `SDL_Window` object.

>***index*** : An integer. The index of the driver to use or, `-1` to use the first driver that supports the requested flags.

>***flags*** : Zero or more [flags](values.md#renderer-flags).

Returns:
> A `SDL_Renderer` object.

C Function Name:
>`SDL_CreateRenderer`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_CreateRenderer)

>[SDL Wiki](https://wiki.libsdl.org/SDL_RendererFlags)

Examples:
```scheme
(define *renderer*
  (sdl-create-renderer
    *window*
    -1
    SDL-RENDERER-ACCELERATED
    SDL-RENDERER-PRESENTVSYNC))
```

---
Procedure:
>(**sdl-create-software-renderer** *surface*) → SDL_Renderer

Parameters:
>***surface*** : A `SDL_Surface` object.

Returns:
> A `SDL_Renderer` object.

C Function Name:
>`SDL_CreateSoftwareRenderer`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_CreateSoftwareRenderer)

---
Procedure:
>(**sdl-create-texture** *renderer* *format* *access* *w* *h*) → SDL_Texture

Parameters:
>***renderer*** : A `SDL_Renderer` object.

>***format*** : A pixel [format](values.md#pixel-formats).

>***access*** : A texture [access](values.md#texture-access).

>***x*** : An integer. The texture's width.

>***y*** : An integer. The texture's height.

Returns:
> A `SDL_Texture` object.

C Function Name:
>`SDL_CreateTexture`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_CreateTexture)

---
Procedure:
>(**sdl-create-texture-from-surface** *renderer* *surface*) → SDL_Texture

Parameters:
>***renderer*** : A `SDL_Renderer` object.

>***surface*** : A `SDL_Surface` object.

Returns:
> A `SDL_Texture` object.

C Function Name:
>`SDL_CreateTextureFromSurface`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_CreateTextureFromSurface)

---
Procedure:
>(**sdl-destroy-renderer** *renderer*) → void

Parameters:
>***renderer*** : A `SDL_Renderer` object.

C Function Name:
>`SDL_DestroyRenderer`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_DestroyRenderer)

---
Procedure:
>(**sdl-destroy-texture** *texture*) → void

Parameters:
>***texture*** : A `SDL_Texture` object.

C Function Name:
>`SDL_DestroyTexture`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_DestroyTexture)

---
Procedure:
>(**sdl-gl-bind-texture** *texture*) → list

Parameters:
>***texture*** : A `SDL_Texture` object.

Returns:
> A list `(width height)` of the texture or `'()` if operation failed.

C Function Name:
>`SDL_GL_BindTexture`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GL_BindTexture)

---
Procedure:
>(**sdl-gl-unbind-texture** *texture*) → number

Parameters:
>***texture*** : A `SDL_Texture` object.

Returns:
> `0` if the operation didn't fail.

C Function Name:
>`SDL_GL_UnbindTexture`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GL_UnbindTexture)

---
Procedure:
>(**sdl-get-num-render-drivers**) → number

Returns:
> The number of render drivers or a negative number error code.

C Function Name:
>`SDL_GetNumRenderDrivers`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GetNumRenderDrivers)

---
Procedure:
>(**sdl-get-render-draw-blend-mode** *renderer*) → number

Parameters:
>***renderer*** : A `SDL_Renderer` object.

Returns:
> A [blend mode](values.md#blend-modes) or a negative number error code.

C Function Name:
>`SDL_GetRenderDrawBlendMode`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GetRenderDrawBlendMode)

---
Procedure:
>(**sdl-get-render-draw-color** *renderer*) → list

Parameters:
>***renderer*** : A `SDL_Renderer` object.

Returns:
> A list `(r g b a)` or `'()` on failure.

C Function Name:
>`SDL_GetRenderDrawColor`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GetRenderDrawColor)

---
Procedure:
>(**sdl-get-render-driver-info** *index*) → sdl-renderer-info | number

Parameters:
>***index*** : The index of the driver to query.

Returns:
> A `sdl-renderer-info` object or a negative number error code.

C Function Name:
>`SDL_GetRenderDriverInfo`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GetRenderDriverInfo)

---
Procedure:
>(**sdl-get-render-target** *renderer*) → SDL_Texture

Parameters:
>***renderer*** : A `SDL_Renderer` object.

Returns:
> A `SDL_Texture` object.

C Function Name:
>`SDL_GetRenderTarget`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GetRenderTarget)

---
Procedure:
>(**sdl-get-renderer** *window*) → SDL_Renderer

Parameters:
>***window*** : A `SDL_Window` object.

Returns:
> A `SDL_Renderer` object.

C Function Name:
>`SDL_GetRenderer`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GetRenderer)

---
Procedure:
>(**sdl-get-renderer-info** *renderer*) → sdl-renderer-info | number

Parameters:
>***renderer*** : A `SDL_Renderer` object.

Returns:
> A `sdl-renderer-info` object or a negative number error code.

C Function Name:
>`SDL_GetRendererInfo`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GetRendererInfo)

---
Procedure:
>(**sdl-get-renderer-output-size** *renderer*) → list

Parameters:
>***renderer*** : A `SDL_Renderer` object.

Returns:
> A list `(width height)` or `'()` on failure.

C Function Name:
>`SDL_GetRendererOutputSize`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GetRendererOutputSize)

---
Procedure:
>(**sdl-get-texture-alpha-mod** *texture*) → number

Parameters:
>***texture*** : A `SDL_Texture` object.

Returns:
> The value of the alpha modifier or a negative number error code.

C Function Name:
>`SDL_GetTextureAlphaMod`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GetTextureAlphaMod)

---
Procedure:
>(**sdl-get-texture-blend-mode** *texture*) → number

Parameters:
>***texture*** : A `SDL_Texture` object.

Returns:
> A [blend mode](values.md#blend-modes) value or a negative number error code.

C Function Name:
>`SDL_GetTextureBlendMode`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GetTextureBlendMode)

---
Procedure:
>(**sdl-get-texture-color-mod** *texture*) → list

Parameters:
>***texture*** : A `SDL_Texture` object.

Returns:
> A list of `(r g b)` or `'()` on error.

C Function Name:
>`SDL_GetTextureColorMod`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GetTextureColorMod)

---
Procedure:
>(**sdl-render-clear** *renderer*) → number

Parameters:
>***renderer*** : A `SDL_Renderer` object.

Returns:
> `0` or a negative number error code.

C Function Name:
>`SDL_RenderClear`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_RenderClear)

---
Procedure:
>(**sdl-render-copy** *renderer* *texture* *src-rect* *dst-rect*) → number

Parameters:
>***renderer*** : A `SDL_Renderer` object.

>***texture*** : A `SDL_Texture` object.

>***src-rect*** : An `sdl-rect` object or `'()`.

>***dst-rect*** : An `sdl-rect` object or `'()`.

Returns:
> `0` or a negative number error code.

C Function Name:
>`SDL_RenderCopy`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_RenderCopy)


---
Procedure:
>(**sdl-render-copy-ex** *renderer* *texture* *src-rect* *dst-rect* *angle* *center-point* *flip*) → number

Parameters:
>***renderer*** : A `SDL_Renderer` object.

>***texture*** : A `SDL_Texture` object.

>***src-rect*** : An `sdl-rect` object or `'()`.

>***dst-rect*** : An `sdl-rect` object or `'()`.

>***angle*** : A floating point. An angle in degrees clockwise.

>***center-point*** : An `sdl-point` object or `'()`.

>***flip*** : A [flip](values.md#renderer-flip) value.

Returns:
> `0` or a negative number error code.

C Function Name:
>`SDL_RenderCopyEx`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_RenderCopyEx)

---
Procedure:
>(**sdl-render-draw-line** *renderer* *x1* *y1* *x2* *y2*) → number

Parameters:
>***renderer*** : A `SDL_Renderer` object.

>***x1*** : x-coordinate of the first point.

>***y1*** : y-coordinate of the first point.

>***x2*** : x-coordinate of the second point.

>***y2*** : y-coordinate of the second point.

Returns:
> `0` or a negative number error code.

C Function Name:
>`SDL_RenderDrawLine`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_RenderDrawLine)

---
Procedure:
>(**sdl-render-draw-lines** *renderer* *points*) → number

Parameters:
>***renderer*** : A `SDL_Renderer` object.

>***points*** : A list of `sdl-point`.

Returns:
> `0` or a negative number error code.

C Function Name:
>`SDL_RenderDrawLines`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_RenderDrawLines)

---
Procedure:
>(**sdl-render-draw-point** *renderer* *x* *y*) → number

Parameters:
>***renderer*** : A `SDL_Renderer` object.

>***x*** : x-coordinate of the point.

>***y*** : y-coordinate of the point.

Returns:
> `0` or a negative number error code.

C Function Name:
>`SDL_RenderDrawPoint`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_RenderDrawPoint)

---
Procedure:
>(**sdl-render-draw-points** *renderer* *points*) → number

Parameters:
>***renderer*** : A `SDL_Renderer` object.

>***points*** : A list of `sdl-point`.

Returns:
> `0` or a negative number error code.

C Function Name:
>`SDL_RenderDrawPoints`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_RenderDrawPoints)

---
Procedure:
>(**sdl-render-draw-rect** *renderer* *rect*) → number

Parameters:
>***renderer*** : A `SDL_Renderer` object.

>***x*** : A `sdl-rect` or `'()`.

Returns:
> `0` or a negative number error code.

C Function Name:
>`SDL_RenderDrawRect`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_RenderDrawRect)

---
Procedure:
>(**sdl-render-draw-rects** *renderer* *rects*) → number

Parameters:
>***renderer*** : A `SDL_Renderer` object.

>***x*** : A list of `sdl-rect`.

Returns:
> `0` or a negative number error code.

C Function Name:
>`SDL_RenderDrawRects`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_RenderDrawRects)

---
Procedure:
>(**sdl-render-fill-rect** *renderer* *rect*) → number

Parameters:
>***renderer*** : A `SDL_Renderer` object.

>***x*** : A `sdl-rect` or `'()`.

Returns:
> `0` or a negative number error code.

C Function Name:
>`SDL_RenderFillRect`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_RenderFillRect)

---
Procedure:
>(**sdl-render-fill-rects** *renderer* *rects*) → number

Parameters:
>***renderer*** : A `SDL_Renderer` object.

>***x*** : A list of `sdl-rect`.

Returns:
> `0` or a negative number error code.

C Function Name:
>`SDL_RenderFillRects`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_RenderFillRects)

---
Procedure:
>(**sdl-render-get-integer-scale** *renderer*) → number

Parameters:
>***renderer*** : A `SDL_Renderer` object.

Returns:
> `SDL-TRUE` or `SDL-FALSE`.

C Function Name:
>`SDL_RenderGetIntegerScale`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_RenderGetIntegerScale)

---
Procedure:
>(**sdl-render-get-logical-size** *renderer*) → list

Parameters:
>***renderer*** : A `SDL_Renderer` object.

Returns:
> A list `(width height)`.

C Function Name:
>`SDL_RenderGetLogicalSize`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_RenderGetLogicalSize)

---
Procedure:
>(**sdl-render-get-scale** *renderer*) → list

Parameters:
>***renderer*** : A `SDL_Renderer` object.

Returns:
> A list `(scale-x scale-y)`.

C Function Name:
>`SDL_RenderGetScale`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_RenderGetScale)

---
Procedure:
>(**sdl-render-get-viewport** *renderer*) → sdl-rect

Parameters:
>***renderer*** : A `SDL_Renderer` object.

Returns:
> A `sdl-rect` of the viewport.

C Function Name:
>`SDL_RenderGetViewport`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_RenderGetViewport)

---
Procedure:
>(**sdl-render-is-clip-enabled?** *renderer*) → boolean

Parameters:
>***renderer*** : A `SDL_Renderer` object.

Returns:
> `#t` or `#f`.

C Function Name:
>`SDL_RenderIsClipEnabled`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_RenderIsClipEnabled)

---
Procedure:
>(**sdl-render-present** *renderer*) → void

Parameters:
>***renderer*** : A `SDL_Renderer` object.

C Function Name:
>`SDL_RenderPresent`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_RenderPresent)

---
Procedure:
>(**sdl-render-set-clip!** *renderer* *rect*) → number

Parameters:
>***renderer*** : A `SDL_Renderer` object.

>***rect*** : A `sdl-rect` object or `'()`.

Returns:
> `0` or a negative number error code.

C Function Name:
>`SDL_RenderSetClipRect`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_RenderSetClipRect)

---
Procedure:
>(**sdl-render-set-integer-scale!** *renderer* *enable*) → number

Parameters:
>***renderer*** : A `SDL_Renderer` object.

>***enable*** : `SDL-TRUE` or `SDL-FALSE`.

Returns:
> `0` or a negative number error code.

C Function Name:
>`SDL_RenderSetIntegerScale`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_RenderSetIntegerScale)

---
Procedure:
>(**sdl-render-set-logical-size!** *renderer* *w* *h*) → number

Parameters:
>***renderer*** : A `SDL_Renderer` object.

>***w*** : An integer. Width of logical resolution.

>***h*** : An integer. Height of logical resolution.

Returns:
> `0` or a negative number error code.

C Function Name:
>`SDL_RenderSetLogicalSize`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_RenderSetLogicalSize)

---
Procedure:
>(**sdl-render-set-scale!** *renderer* *scale-x* *scale-y*) → number

Parameters:
>***renderer*** : A `SDL_Renderer` object.

>***scale-x*** : An float. Scale with respect to the x-axis.

>***scale-y*** : An float. Scale with respect to the y-axis.

Returns:
> `0` or a negative number error code.

C Function Name:
>`SDL_RenderSetScale`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_RenderSetScale)

---
Procedure:
>(**sdl-render-set-viewport!** *renderer* *rect*) → number

Parameters:
>***renderer*** : A `SDL_Renderer` object.

>***rect*** : A `sdl-rect` object or `'()`.

Returns:
> `0` or a negative number error code.

C Function Name:
>`SDL_RenderSetViewport`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_RenderSetViewport)

---
Procedure:
>(**sdl-render-target-supported?** *renderer*) → boolean

Parameters:
>***renderer*** : A `SDL_Renderer` object.

Returns:
> `#t` or `#f`.

C Function Name:
>`SDL_RenderTargetSupported`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_RenderTargetSupported)

---
Procedure:
>(**sdl-set-render-draw-blend-mode!** *renderer* *blend-mode*) → number

Parameters:
>***renderer*** : A `SDL_Renderer` object.

>***blend-mode*** : A [blend mode](values.md#blend-modes).

Returns:
> `0` or a negative number error code.

C Function Name:
>`SDL_SetRenderDrawBlendMode`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_SetRenderDrawBlendMode)

---
Procedure:
>(**sdl-set-render-draw-color!** *renderer* *r* *g* *b* *a*) → number

Parameters:
>***renderer*** : A `SDL_Renderer` object.

>***r*** : An integer. Red value.

>***g*** : An integer. Green value.

>***b*** : An integer. Blue value.

>***a*** : An integer. Alpha value.

Returns:
> `0` or a negative number error code.

C Function Name:
>`SDL_SetRenderDrawColor`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_SetRenderDrawColor)

---
Procedure:
>(**sdl-set-render-target!** *renderer* *target*) → number

Parameters:
>***renderer*** : A `SDL_Renderer` object.

>***target*** : A `SDL_Texture` object.

Returns:
> `0` or a negative number error code.

C Function Name:
>`SDL_SetRenderTarget`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_SetRenderTarget)

---
Procedure:
>(**sdl-set-texture-alpha-mod!** *texture* *alpha*) → number

Parameters:
>***texture*** : A `SDL_texture` object.

>***alpha*** : An integer. The texture's alpha modifier.

Returns:
> `0` or a negative number error code.

C Function Name:
>`SDL_SetTextureAlphaMod`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_SetTextureAlphaMod)


---
Procedure:
>(**sdl-set-texture-blend-mode!** *texture* *blend-mode*) → number

Parameters:
>***texture*** : A `SDL_Texture` object.

>***blend-mode*** : A [blend mode](values.md#blend-modes).

Returns:
> `0` or a negative number error code.

C Function Name:
>`SDL_SetTextureBlendMode`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_SetTextureBlendMode)

---
Procedure:
>(**sdl-set-texture-color-mod!** *texture* *r* *g* *b*) → number

Parameters:
>***texture*** : A `SDL_Texture` object.

>***r*** : An integer. Red value.

>***g*** : An integer. Green value.

>***b*** : An integer. Blue value.

Returns:
> `0` or a negative number error code.

C Function Name:
>`SDL_SetTextureColorMod`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_SetTextureColorMod)



# Pixel Formats & Conversion Routines



# Rectangle Functions



# Surface Creation & Simple Drawing



# Clipboard Handling



# Vulkan Support

