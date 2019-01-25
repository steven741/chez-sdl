;;;; -*- mode: Scheme; -*-

;;;;;;;;;;;;;;;;;;;;;;;
;;; Foreign C Types ;;;
;;;;;;;;;;;;;;;;;;;;;;;

(define-ftype sdl-c-rect
  (struct
    [x int]
    [y int]
    [w int]
    [h int]))

(define-ftype sdl-c-point
  (struct
    [x int]
    [y int]))

(define-ftype sdl-c-color
  (struct
    [r unsigned-8]
    [g unsigned-8]
    [b unsigned-8]
    [a unsigned-8]))

(define-ftype sdl-c-palette
  (struct
    [ncolors  int]
    [colors   (* sdl-c-color)]
    [version  unsigned-32]
    [refcount int]))

(define-ftype sdl-c-pixel-format
  (struct
    [format          unsigned-32]
    [palette         (* sdl-c-palette)]
    [bits-per-pixel  unsigned-8]
    [bytes-per-pixel unsigned-8]
    [padding         (array 2 unsigned-8)]
    [r-mask          unsigned-32]
    [g-mask          unsigned-32]
    [b-mask          unsigned-32]
    [a-mask          unsigned-32]
    [r-loss          unsigned-8]
    [g-loss          unsigned-8]
    [b-loss          unsigned-8]
    [a-loss          unsigned-8]
    [r-shift         unsigned-8]
    [g-shift         unsigned-8]
    [b-shift         unsigned-8]
    [a-shift         unsigned-8]
    [refcount        int]
    [next            (* sdl-c-pixel-format)]))

(define-ftype sdl-c-surface
  (struct
    [flags     unsigned-32]
    [format    (* sdl-c-pixel-format)]
    [w         int]
    [h         int]
    [pitch     int]
    [pixels    void*]
    [userdata  void*]
    [locked    int]
    [lock-data void*]
    [clip-rect sdl-c-rect]
    [b-map     void*]
    [refcount  int]))

(define-ftype sdl-c-display-mode
  (struct
   [format unsigned-32]))

(define-ftype sdl-c-renderer-info
  (struct
   [flags unsigned-32]))

(define-ftype sdl-c-sys-wm-info
  (struct
   [format unsigned-32]))

(define-ftype sdl-c-message-box-data
  (struct
   [format unsigned-32]))

(define-ftype sdl-c-window   void*)
(define-ftype sdl-c-renderer void*)
(define-ftype sdl-c-texture  void*)
(define-ftype sdl-gl-context void*)


;;;;;;;;;;;;;;;;;;;;;;
;;; Scheme Records ;;;
;;;;;;;;;;;;;;;;;;;;;;

(define-record-type sdl-rect
  (fields x y w h))

(define-record-type sdl-point
  (fields x y))


;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; C Function Bindings ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define *sdl-create-window*               (sdl-procedure "SDL_CreateWindow" (string int int int int unsigned-32) (* sdl-c-window)))
(define *sdl-create-window-from*          (sdl-procedure "SDL_CreateWindowFrom" (void*) (* sdl-c-window)))
(define *sdl-destroy-window*              (sdl-procedure "SDL_DestroyWindow" ((* sdl-c-window)) void))
(define *sdl-disable-screen-saver*        (sdl-procedure "SDL_DisableScreenSaver" () void))
(define *sdl-enable-screen-saver*         (sdl-procedure "SDL_EnableScreenSaver" () void))
(define *sdl-gl-create-context*           (sdl-procedure "SDL_GL_CreateContext" ((* sdl-c-window)) (* sdl-gl-context)))
(define *sdl-gl-delete-context*           (sdl-procedure "SDL_GL_DeleteContext" ((* sdl-gl-context)) void))
(define *sdl-gl-extension-supported*      (sdl-procedure "SDL_GL_ExtensionSupported" (string) int))
(define *sdl-gl-get-attribute*            (sdl-procedure "SDL_GL_GetAttribute" (int (* int)) int))
(define *sdl-gl-get-current-context*      (sdl-procedure "SDL_GL_GetCurrentContext" () (* sdl-gl-context)))
(define *sdl-gl-get-current-window*       (sdl-procedure "SDL_GL_GetCurrentWindow" () (* sdl-c-window)))
(define *sdl-gl-get-drawable-size*        (sdl-procedure "SDL_GL_GetDrawableSize" ((* sdl-c-window) (* int) (* int)) void))
(define *sdl-gl-get-proc-address*         (sdl-procedure "SDL_GL_GetProcAddress" (string) void*))
(define *sdl-gl-get-swap-interval*        (sdl-procedure "SDL_GL_GetSwapInterval" () int))
(define *sdl-gl-load-library*             (sdl-procedure "SDL_GL_LoadLibrary" (string) int))
(define *sdl-gl-make-current*             (sdl-procedure "SDL_GL_MakeCurrent" ((* sdl-c-window) (* sdl-gl-context)) int))
(define *sdl-gl-reset-attributes*         (sdl-procedure "SDL_GL_ResetAttributes" () void))
(define *sdl-gl-set-attribute*            (sdl-procedure "SDL_GL_SetAttribute" (int int) int))
(define *sdl-gl-set-swap-interval*        (sdl-procedure "SDL_GL_SetSwapInterval" (int) int))
(define *sdl-gl-swap-window*              (sdl-procedure "SDL_GL_SwapWindow" ((* sdl-c-window)) void))
(define *sdl-gl-unload-library*           (sdl-procedure "SDL_GL_UnloadLibrary" () void))
(define *sdl-get-closest-display-mode*    (sdl-procedure "SDL_GetClosestDisplayMode" (int (* sdl-c-display-mode) (* sdl-c-display-mode)) (* sdl-c-display-mode)))
(define *sdl-get-current-display-mode*    (sdl-procedure "SDL_GetCurrentDisplayMode" (int (* sdl-c-display-mode)) int))
(define *sdl-get-current-video-driver*    (sdl-procedure "SDL_GetCurrentVideoDriver" () string))
(define *sdl-get-desktop-display-mode*    (sdl-procedure "SDL_GetDesktopDisplayMode" (int (* sdl-c-display-mode)) int))
(define *sdl-get-display-bounds*          (sdl-procedure "SDL_GetDisplayBounds" (int (* sdl-c-rect)) int))
(define *sdl-get-display-dpi*             (sdl-procedure "SDL_GetDisplayDPI" (int (* float) (* float) (* float)) int))
(define *sdl-get-display-name*            (sdl-procedure "SDL_GetDisplayName" (int) string))
(define *sdl-get-display-usable-bounds*   (sdl-procedure "SDL_GetDisplayUsableBounds" (int (* sdl-c-rect)) int))
(define *sdl-get-grabbed-window*          (sdl-procedure "SDL_GetGrabbedWindow" () (* sdl-c-window)))
(define *sdl-get-num-display-modes*       (sdl-procedure "SDL_GetNumDisplayModes" () int))
(define *sdl-get-num-video-displays*      (sdl-procedure "SDL_GetNumVideoDisplays" () int))
(define *sdl-get-num-video-drivers*       (sdl-procedure "SDL_GetNumVideoDrivers" () int))
(define *sdl-get-video-driver*            (sdl-procedure "SDL_GetVideoDriver" (int) string))
(define *sdl-get-window-borders-size*     (sdl-procedure "SDL_GetWindowBordersSize" ((* sdl-c-window) (* int) (* int) (* int) (* int)) int))
(define *sdl-get-window-brightness*       (sdl-procedure "SDL_GetWindowBrightness" ((* sdl-c-window)) float))
(define *sdl-get-window-data*             (sdl-procedure "SDL_GetWindowData" ((* sdl-c-window) string) void*))
(define *sdl-get-window-display-index*    (sdl-procedure "SDL_GetWindowDisplayIndex" ((* sdl-c-window)) int))
(define *sdl-get-window-display-mode*     (sdl-procedure "SDL_GetWindowDisplayMode" ((* sdl-c-window) (* sdl-c-display-mode)) int))
(define *sdl-get-window-flags*            (sdl-procedure "SDL_GetWindowFlags" ((* sdl-c-window)) unsigned-32))
(define *sdl-get-window-from-id*          (sdl-procedure "SDL_GetWindowFromID" (unsigned-32) (* sdl-c-window)))
(define *sdl-get-window-gamma-ramp*       (sdl-procedure "SDL_GetWindowGammaRamp" ((* sdl-c-window) (* unsigned-16) (* unsigned-16) (* unsigned-16)) int))
(define *sdl-get-window-grab*             (sdl-procedure "SDL_GetWindowGrab" ((* sdl-c-window)) int))
(define *sdl-get-window-id*               (sdl-procedure "SDL_GetWindowID" ((* sdl-c-window)) unsigned-32))
(define *sdl-get-window-maximum-size*     (sdl-procedure "SDL_GetWindowMaximumSize" ((* sdl-c-window) (* int) (* int)) void))
(define *sdl-get-window-minimum-size*     (sdl-procedure "SDL_GetWindowMinimumSize" ((* sdl-c-window) (* int) (* int)) void))
(define *sdl-get-window-opacity*          (sdl-procedure "SDL_GetWindowOpacity" ((* sdl-c-window) (* float)) int))
(define *sdl-get-window-pixel-format*     (sdl-procedure "SDL_GetWindowPixelFormat" ((* sdl-c-window)) unsigned-32))
(define *sdl-get-window-position*         (sdl-procedure "SDL_GetWindowPosition" ((* sdl-c-window) (* int) (* int)) void))
(define *sdl-get-window-size*             (sdl-procedure "SDL_GetWindowSize" ((* sdl-c-window) (* int) (* int)) void))
(define *sdl-get-window-surface*          (sdl-procedure "SDL_GetWindowSurface" ((* sdl-c-window)) (* sdl-c-surface)))
(define *sdl-get-window-title*            (sdl-procedure "SDL_GetWindowTitle" ((* sdl-c-window)) string))
(define *sdl-get-window-wm-info*          (sdl-procedure "SDL_GetWindowWMInfo" ((* sdl-c-window) (* sdl-c-sys-wm-info)) int))
(define *sdl-hide-window*                 (sdl-procedure "SDL_HideWindow" ((* sdl-c-window)) void))
(define *sdl-is-screen-saver-enabled*     (sdl-procedure "SDL_IsScreenSaverEnabled" () int))
(define *sdl-maximize-window*             (sdl-procedure "SDL_MaximizeWindow" ((* sdl-c-window)) void))
(define *sdl-minimize-window*             (sdl-procedure "SDL_MinimizeWindow" ((* sdl-c-window)) void))
(define *sdl-raise-window*                (sdl-procedure "SDL_RaiseWindow" ((* sdl-c-window)) void))
(define *sdl-restore-window*              (sdl-procedure "SDL_RestoreWindow" ((* sdl-c-window)) void))
(define *sdl-set-window-bordered*         (sdl-procedure "SDL_SetWindowBordered" ((* sdl-c-window) int) void))
(define *sdl-set-window-brightness*       (sdl-procedure "SDL_SetWindowBrightness" ((* sdl-c-window) float) int))
(define *sdl-set-window-data*             (sdl-procedure "SDL_SetWindowData" ((* sdl-c-window) string void*) void*))
(define *sdl-set-window-display-mode*     (sdl-procedure "SDL_SetWindowDisplayMode" ((* sdl-c-window) (* sdl-c-display-mode)) int))
(define *sdl-set-window-fullscreen*       (sdl-procedure "SDL_SetWindowFullscreen" ((* sdl-c-window) unsigned-32) int))
(define *sdl-set-window-gamma-ramp*       (sdl-procedure "SDL_SetWindowGammaRamp" ((* sdl-c-window) (* unsigned-16) (* unsigned-16) (* unsigned-16)) int))
(define *sdl-set-window-grab*             (sdl-procedure "SDL_SetWindowGrab" ((* sdl-c-window) int) void))
(define *sdl-set-window-icon*             (sdl-procedure "SDL_SetWindowIcon" ((* sdl-c-window) (* sdl-c-surface)) void))
(define *sdl-set-window-input-focus*      (sdl-procedure "SDL_SetWindowInputFocus" ((* sdl-c-window)) int))
(define *sdl-set-window-maximum-size*     (sdl-procedure "SDL_SetWindowMaximumSize" ((* sdl-c-window) int int) void))
(define *sdl-set-window-minimum-size*     (sdl-procedure "SDL_SetWindowMinimumSize" ((* sdl-c-window) int int) void))
(define *sdl-set-window-modal-for*        (sdl-procedure "SDL_SetWindowModalFor" ((* sdl-c-window) (* sdl-c-window)) int))
(define *sdl-set-window-opacity*          (sdl-procedure "SDL_SetWindowOpacity" ((* sdl-c-window) float) int))
(define *sdl-set-window-position*         (sdl-procedure "SDL_SetWindowPosition" ((* sdl-c-window) int int) void))
(define *sdl-set-window-resizable*        (sdl-procedure "SDL_SetWindowResizable" ((* sdl-c-window) int) void))
(define *sdl-set-window-size*             (sdl-procedure "SDL_SetWindowSize" ((* sdl-c-window) int int) void))
(define *sdl-set-window-title*            (sdl-procedure "SDL_SetWindowTitle" ((* sdl-c-window) string) void))
(define *sdl-show-message-box*            (sdl-procedure "SDL_ShowMessageBox" ((* sdl-c-message-box-data) (* int)) int))
(define *sdl-show-simple-message-box*     (sdl-procedure "SDL_ShowSimpleMessageBox" (unsigned-32 string string (* sdl-c-window)) int))
(define *sdl-show-window*                 (sdl-procedure "SDL_ShowWindow" ((* sdl-c-window)) void))
(define *sdl-update-window-surface*       (sdl-procedure "SDL_UpdateWindowSurface" ((* sdl-c-window)) int))
(define *sdl-update-window-surface-rects* (sdl-procedure "SDL_UpdateWindowSurfaceRects" ((* sdl-c-window) (* sdl-c-rect) int) int))
(define *sdl-video-init*                  (sdl-procedure "SDL_VideoInit" (string) int))
(define *sdl-video-quit*                  (sdl-procedure "SDL_VideoQuit" () void))

(define *sdl-compose-custom-blend-mode*   (sdl-procedure "SDL_ComposeCustomBlendMode" (int int int int int int) int))
(define *sdl-create-renderer*             (sdl-procedure "SDL_CreateRenderer" ((* sdl-c-window) int unsigned-32) (* sdl-c-renderer)))
(define *sdl-create-software-renderer*    (sdl-procedure "SDL_CreateSoftwareRenderer" ((* sdl-c-surface)) (* sdl-c-renderer)))
(define *sdl-create-texture*              (sdl-procedure "SDL_CreateTexture" ((* sdl-c-renderer) unsigned-32 int int int) (* sdl-c-texture)))
(define *sdl-create-texture-from-surface* (sdl-procedure "SDL_CreateTextureFromSurface" ((* sdl-c-renderer) (* sdl-c-surface)) (* sdl-c-texture)))
(define *sdl-create-window-and-renderer*  (sdl-procedure "SDL_CreateWindowAndRenderer" (int int unsigned-32 (* void*) (* void*)) int))
(define *sdl-destroy-renderer*            (sdl-procedure "SDL_DestroyRenderer" ((* sdl-c-renderer)) void))
(define *sdl-destroy-texture*             (sdl-procedure "SDL_DestroyTexture" ((* sdl-c-texture)) void))
(define *sdl-gl-bind-texture*             (sdl-procedure "SDL_GL_BindTexture" ((* sdl-c-texture) (* float) (* float)) int))
(define *sdl-gl-unbind-texture*           (sdl-procedure "SDL_GL_UnbindTexture" ((* sdl-c-texture)) int))
(define *sdl-get-num-render-drivers*      (sdl-procedure "SDL_GetNumRenderDrivers" () int))
(define *sdl-get-render-draw-blend-mode*  (sdl-procedure "SDL_GetRenderDrawBlendMode" ((* sdl-c-renderer) (* int)) int))
(define *sdl-get-render-draw-color*       (sdl-procedure "SDL_GetRenderDrawColor" ((* sdl-c-renderer) (* unsigned-8) (* unsigned-8) (* unsigned-8) (* unsigned-8)) int))
(define *sdl-get-render-driver-info*      (sdl-procedure "SDL_GetRenderDriverInfo" (int (* sdl-c-renderer-info)) int))
(define *sdl-get-render-target*           (sdl-procedure "SDL_GetRenderTarget" ((* sdl-c-renderer)) (* sdl-c-texture)))
(define *sdl-get-renderer*                (sdl-procedure "SDL_GetRenderer" ((* sdl-c-window)) (* sdl-c-renderer)))
(define *sdl-get-renderer-info*           (sdl-procedure "SDL_GetRendererInfo" ((* sdl-c-renderer) (* sdl-c-renderer-info)) int))
(define *sdl-get-renderer-output-size*    (sdl-procedure "SDL_GetRendererOutputSize" ((* sdl-c-renderer) (* int) (* int)) int))
(define *sdl-get-texture-alpha-mod*       (sdl-procedure "SDL_GetTextureAlphaMod" ((* sdl-c-texture) (* unsigned-8)) int))
(define *sdl-get-texture-blend-mode*      (sdl-procedure "SDL_GetTextureBlendMode" ((* sdl-c-texture) (* int)) int))
(define *sdl-get-texture-color-mod*       (sdl-procedure "SDL_GetTextureColorMod" ((* sdl-c-texture) (* unsigned-8) (* unsigned-8) (* unsigned-8)) int))
(define *sdl-lock-texture*                (sdl-procedure "SDL_LockTexture" ((* sdl-c-texture) (* sdl-c-rect) (* void*) (* int)) int))
(define *sdl-query-texture*               (sdl-procedure "SDL_QueryTexture" ((* sdl-c-texture) (* unsigned-32) (* int) (* int) (* int)) int))
(define *sdl-render-clear*                (sdl-procedure "SDL_RenderClear" ((* sdl-c-renderer)) int))
(define *sdl-render-copy*                 (sdl-procedure "SDL_RenderCopy" ((* sdl-c-renderer) (* sdl-c-texture) (* sdl-c-rect) (* sdl-c-rect)) int))
(define *sdl-render-copy-ex*              (sdl-procedure "SDL_RenderCopyEx" ((* sdl-c-renderer) (* sdl-c-texture) (* sdl-c-rect) (* sdl-c-rect) double (* sdl-c-point) int) int))
(define *sdl-render-draw-line*            (sdl-procedure "SDL_RenderDrawLine" ((* sdl-c-renderer) int int int int) int))
(define *sdl-render-draw-lines*           (sdl-procedure "SDL_RenderDrawLines" ((* sdl-c-renderer) (* sdl-c-point) int) int))
(define *sdl-render-draw-point*           (sdl-procedure "SDL_RenderDrawPoint" ((* sdl-c-renderer) int int) int))
(define *sdl-render-draw-points*          (sdl-procedure "SDL_RenderDrawPoints" ((* sdl-c-renderer) (* sdl-c-point) int) int))
(define *sdl-render-draw-rect*            (sdl-procedure "SDL_RenderDrawRect" ((* sdl-c-renderer) (* sdl-c-rect)) int))
(define *sdl-render-draw-rects*           (sdl-procedure "SDL_RenderDrawRects" ((* sdl-c-renderer) (* sdl-c-rect) int) int))
(define *sdl-render-fill-rect*            (sdl-procedure "SDL_RenderFillRect" ((* sdl-c-renderer) (* sdl-c-rect)) int))
(define *sdl-render-fill-rects*           (sdl-procedure "SDL_RenderFillRects" ((* sdl-c-renderer) (* sdl-c-rect) int) int))
(define *sdl-render-get-clip-rect*        (sdl-procedure "SDL_RenderGetClipRect" ((* sdl-c-renderer) (* sdl-c-rect)) void))
(define *sdl-render-get-integer-scale*    (sdl-procedure "SDL_RenderGetIntegerScale" ((* sdl-c-renderer)) int))
(define *sdl-render-get-logical-size*     (sdl-procedure "SDL_RenderGetLogicalSize" ((* sdl-c-renderer) (* int) (* int)) void))
(define *sdl-render-get-scale*            (sdl-procedure "SDL_RenderGetScale" ((* sdl-c-renderer) (* float) (* float)) void))
(define *sdl-render-get-viewport*         (sdl-procedure "SDL_RenderGetViewport" ((* sdl-c-renderer) (* sdl-c-rect)) void))
(define *sdl-render-is-clip-enabled*      (sdl-procedure "SDL_RenderIsClipEnabled" ((* sdl-c-renderer)) int))
(define *sdl-render-present*              (sdl-procedure "SDL_RenderPresent" ((* sdl-c-renderer)) void))
(define *sdl-render-read-pixels*          (sdl-procedure "SDL_RenderReadPixels" ((* sdl-c-renderer) (* sdl-c-rect) unsigned-32 void* int) int))
(define *sdl-render-set-clip-rect*        (sdl-procedure "SDL_RenderSetClipRect" ((* sdl-c-renderer) (* sdl-c-rect)) int))
(define *sdl-render-set-integer-scale*    (sdl-procedure "SDL_RenderSetIntegerScale" ((* sdl-c-renderer) int) int))
(define *sdl-render-set-logical-size*     (sdl-procedure "SDL_RenderSetLogicalSize" ((* sdl-c-renderer) int int) int))
(define *sdl-render-set-scale*            (sdl-procedure "SDL_RenderSetScale" ((* sdl-c-renderer) int int) int))
(define *sdl-render-set-viewport*         (sdl-procedure "SDL_RenderSetViewport" ((* sdl-c-renderer) (* sdl-c-rect)) int))
(define *sdl-render-target-supported*     (sdl-procedure "SDL_RenderTargetSupported" ((* sdl-c-renderer)) int))
(define *sdl-set-render-draw-blend-mode*  (sdl-procedure "SDL_SetRenderDrawBlendMode" ((* sdl-c-renderer) int) int))
(define *sdl-set-render-draw-color*       (sdl-procedure "SDL_SetRenderDrawColor" ((* sdl-c-renderer) unsigned-8 unsigned-8 unsigned-8 unsigned-8) int))
(define *sdl-set-render-target*           (sdl-procedure "SDL_SetRenderTarget" ((* sdl-c-renderer) (* sdl-c-texture)) int))
(define *sdl-set-texture-alpha-mod*       (sdl-procedure "SDL_SetTextureAlphaMod" ((* sdl-c-texture) unsigned-8) int))
(define *sdl-set-texture-blend-mode*      (sdl-procedure "SDL_SetTextureBlendMode" ((* sdl-c-texture) int) int))
(define *sdl-set-texture-color-mod*       (sdl-procedure "SDL_SetTextureColorMod" ((* sdl-c-texture) unsigned-8 unsigned-8 unsigned-8) int))
(define *sdl-unlock-texture*              (sdl-procedure "SDL_UnlockTexture" ((* sdl-c-texture)) void))
(define *sdl-update-texture*              (sdl-procedure "SDL_UpdateTexture" ((* sdl-c-texture) (* sdl-c-rect) void* int) int))
(define *sdl-update-yuv-texture*          (sdl-procedure "SDL_UpdateYUVTexture" ((* sdl-c-texture) (* sdl-c-rect) u8* int u8* int u8* int) int))

(define *sdl-alloc-format*                (sdl-procedure "SDL_AllocFormat" () void))
(define *sdl-alloc-palette*               (sdl-procedure "SDL_AllocPalette" () void))
(define *sdl-calculate-gamma-ramp*        (sdl-procedure "SDL_CalculateGammaRamp" () void))
(define *sdl-free-format*                 (sdl-procedure "SDL_FreeFormat" () void))
(define *sdl-free-palette*                (sdl-procedure "SDL_FreePalette" () void))
(define *sdl-get-pixel-format-name*       (sdl-procedure "SDL_GetPixelFormatName" () void))
(define *sdl-get-rgb*                     (sdl-procedure "SDL_GetRGB" () void))
(define *sdl-get-rgba*                    (sdl-procedure "SDL_GetRGBA" () void))
(define *sdl-map-rgb*                     (sdl-procedure "SDL_MapRGB" () void))
(define *sdl-map-rgba*                    (sdl-procedure "SDL_MapRGBA" () void))
(define *sdl-masks-to-pixel-format-enum*  (sdl-procedure "SDL_MasksToPixelFormatEnum" () void))
(define *sdl-pixel-format-enum-to-masks*  (sdl-procedure "SDL_PixelFormatEnumToMasks" () void))
(define *sdl-set-palette-colors*          (sdl-procedure "SDL_SetPaletteColors" () void))
(define *sdl-set-pixel-format-palette*    (sdl-procedure "SDL_SetPixelFormatPalette" () void))

(define *sdl-blit-scaled*                         (sdl-procedure "SDL_UpperBlitScaled" ((* sdl-c-surface) (* sdl-c-rect) (* sdl-c-surface) (* sdl-c-rect)) int))
(define *sdl-blit-surface*                        (sdl-procedure "SDL_UpperBlit" ((* sdl-c-surface) (* sdl-c-rect) (* sdl-c-surface) (* sdl-c-rect)) int))
(define *sdl-convet-pixels*                       (sdl-procedure "SDL_ConvertPixels" () void))
(define *sdl-convert-surface*                     (sdl-procedure "SDL_ConvertSurface" () void))
(define *sdl-convert-surface-format*              (sdl-procedure "SDL_ConvertSurfaceFormat" () void))
(define *sdl-create-rgb-surface*                  (sdl-procedure "SDL_CreateRGBSurface" () void))
(define *sdl-create-rgb-surface-from*             (sdl-procedure "SDL_CreateRGBSurfaceFrom" () void))
(define *sdl-create-rgb-surface-with-fromat*      (sdl-procedure "SDL_CreateRGBSurfaceWithFormat" () void))
(define *sdl-create-rgb-surface-with-fromat-from* (sdl-procedure "SDL_CreateRGBSurfaceWithFormatFrom" () void))
(define *sdl-fill-rect*                           (sdl-procedure "SDL_FillRect" () void))
(define *sdl-fill-rects*                          (sdl-procedure "SDL_FillRects" () void))
(define *sdl-free-surface*                        (sdl-procedure "SDL_FreeSurface" () void))
(define *sdl-get-clip-rect*                       (sdl-procedure "SDL_GetClipRect" () void))
(define *sdl-get-color-key*                       (sdl-procedure "SDL_GetColorKey" () void))
(define *sdl-get-surface-alpha-mod*               (sdl-procedure "SDL_GetSurfaceAlphaMod" () void))
(define *sdl-get-surface-blend-mode*              (sdl-procedure "SDL_GetSurfaceBlendMode" () void))
(define *sdl-get-surface-color-mod*               (sdl-procedure "SDL_GetSurfaceColorMod" () void))
(define *sdl-load-bmp*                            (lambda (path) (*sdl-load-bmp-rw* (sdl-rw-from-file path "rb") 1)))
(define *sdl-load-bmp-rw*                         (sdl-procedure "SDL_LoadBMP_RW" (void* int) (* sdl-c-surface)))
(define *sdl-lock-surface*                        (sdl-procedure "SDL_LockSurface" () void))
(define *sdl-lower-blit*                          (sdl-procedure "SDL_LowerBlit" () void))
(define *sdl-lower-blit-scaled*                   (sdl-procedure "SDL_LowerBlitScaled" () void))
(define *sdl-must-lock*                           (lambda (surface) (not (= (bitwise-and (ftype-ref sdl-c-surface (flags) surface) SDL-RLEACCEL) 0))))
(define *sdl-save-bmp*                            (lambda (surface path) (*sdl-save-bmp-rw* surface (sdl-rw-from-file path "wb") 1)))
(define *sdl-save-bmp-rw*                         (sdl-procedure "SDL_SaveBMP_RW" ((* sdl-c-surface) void* int) int))
(define *sdl-set-clip-rect*                       (sdl-procedure "SDL_SetClipRect" () void))
(define *sdl-set-color-key*                       (sdl-procedure "SDL_SetColorKey" () void))
(define *sdl-set-surface-alpha-mod*               (sdl-procedure "SDL_SetSurfaceAlphaMod" () void))
(define *sdl-set-surface-blend-mode*              (sdl-procedure "SDL_SetSurfaceBlendMode" () void))
(define *sdl-set-surface-color-mod*               (sdl-procedure "SDL_SetSurfaceColorMod" () void))
(define *sdl-set-surface-palette*                 (sdl-procedure "SDL_SetSurfacePalette" () void))
(define *sdl-set-surface-rle*                     (sdl-procedure "SDL_SetSurfaceRLE" () void))
(define *sdl-unlock-surface*                      (sdl-procedure "SDL_UnlockSurface" () void))

(define *sdl-get-clipboard-text* (sdl-procedure "SDL_GetClipboardText" () void))
(define *sdl-has-clipboard-text* (sdl-procedure "SDL_HasClipboardText" () void))
(define *sdl-set-clipboard-text* (sdl-procedure "SDL_SetClipboardText" () void))

(define *sdl-vulkan-create-surface*                (sdl-procedure "SDL_Vulkan_CreateSurface" () void))
(define *sdl-vulkan-get-drawable-size*             (sdl-procedure "SDL_Vulkan_GetDrawableSize" () void))
(define *sdl-vulkan-get-instance-extensions*       (sdl-procedure "SDL_Vulkan_GetInstanceExtensions" () void))
(define *sdl-vulkan-get-vk-get-instance-proc-addr* (sdl-procedure "SDL_Vulkan_GetVkGetInstanceProcAddr" () void))
(define *sdl-vulkan-load-library*                  (sdl-procedure "SDL_Vulkan_LoadLibrary" () void))
(define *sdl-vulkan-unload-library*                (sdl-procedure "SDL_Vulkan_UnloadLibrary" () void))


;;;;;;;;;;;;;;;;;;;
;;; Marshalling ;;;
;;;;;;;;;;;;;;;;;;;

(define sdl-show-window              *sdl-show-window*)
(define sdl-destroy-window           *sdl-destroy-window*)
(define sdl-disable-screen-saver     *sdl-disable-screen-saver*)
(define sdl-enable-screen-saver      *sdl-enable-screen-saver*)
(define sdl-get-current-video-driver *sdl-get-current-video-driver*)
(define sdl-get-window-surface       *sdl-get-window-surface*)
(define sdl-get-display-name         *sdl-get-display-name*)
(define sdl-get-grabbed-window       *sdl-get-grabbed-window*)
(define sdl-get-num-display-modes    *sdl-get-num-display-modes*)
(define sdl-get-num-video-displays   *sdl-get-num-video-displays*)
(define sdl-get-num-video-drivers    *sdl-get-num-video-drivers*)
(define sdl-get-video-driver         *sdl-get-video-driver*)
(define sdl-update-window-surface    *sdl-update-window-surface*)
(define sdl-gl-create-context        *sdl-gl-create-context*)
(define sdl-gl-delete-context        *sdl-gl-delete-context*)
(define sdl-gl-get-current-context   *sdl-gl-get-current-context*)
(define sdl-gl-get-current-window    *sdl-gl-get-current-window*)
(define sdl-gl-get-swap-interval     *sdl-gl-get-swap-interval*)
(define sdl-gl-make-current          *sdl-gl-make-current*)
(define sdl-gl-reset-attributes!     *sdl-gl-reset-attributes*)
(define sdl-gl-set-attribute!        *sdl-gl-set-attribute*)
(define sdl-gl-set-swap-interval!    *sdl-gl-set-swap-interval*)
(define sdl-gl-swap-window           *sdl-gl-swap-window*)


(define (sdl-create-window title x y w h . flags)
  (*sdl-create-window* title x y w h (fold-left bitwise-ior 0 flags)))


(define (sdl-gl-extension-supported? extension)
  (= SDL-TRUE (*sdl-gl-extension-supported* extension)))


(define (sdl-gl-get-attribute attribute)
  (let*
      ([c-val (make-ftype-pointer int (foreign-alloc (ftype-sizeof int)))]
       [ret   (*sdl-gl-get-attribute* attribute c-val)]
       [value (ftype-ref int () c-val)])
    (foreign-free (ftype-pointer-address c-val))
    (if (= ret 0) value ret)))


(define (sdl-gl-get-drawable-size window)
  (let
      ([c-w (make-ftype-pointer int (foreign-alloc (ftype-sizeof int)))]
       [c-h (make-ftype-pointer int (foreign-alloc (ftype-sizeof int)))])
    (*sdl-gl-get-drawable-size* window c-w c-h)
    (let
	([w (ftype-ref int () c-w)]
	 [h (ftype-ref int () c-h)])
      (foreign-free (ftype-pointer-address c-w))
      (foreign-free (ftype-pointer-address c-h))
      (list w h))))


(define (sdl-get-display-bounds display-index)
  (let*
      ([c-rect (make-ftype-pointer sdl-c-rect
				   (foreign-alloc (ftype-sizeof sdl-c-rect)))]
       [ret (*sdl-get-display-bounds* display-index c-rect)]
       [val (if (= ret 0)
		(make-sdl-rect (ftype-ref sdl-c-rect (x) c-rect)
			       (ftype-ref sdl-c-rect (y) c-rect)
			       (ftype-ref sdl-c-rect (w) c-rect)
			       (ftype-ref sdl-c-rect (h) c-rect))
		ret)])
    (foreign-free (ftype-pointer-address c-rect))
    val))


(define (sdl-get-display-dpi display-index)
  (let*
      ([c-ddpi (make-ftype-pointer float (foreign-alloc (ftype-sizeof float)))]
       [c-hdpi (make-ftype-pointer float (foreign-alloc (ftype-sizeof float)))]
       [c-vdpi (make-ftype-pointer float (foreign-alloc (ftype-sizeof float)))]
       [f-ret  (*sdl-get-display-dpi* display-index c-ddpi c-hdpi c-vdpi)]
       [val (if (= f-ret 0)
		(list (ftype-ref float () c-ddpi)
		      (ftype-ref float () c-hdpi)
		      (ftype-ref float () c-vdpi))
		f-ret)])
    (foreign-free (ftype-pointer-address c-ddpi))
    (foreign-free (ftype-pointer-address c-hdpi))
    (foreign-free (ftype-pointer-address c-vdpi))
    val))


(define (sdl-get-display-usable-bounds display-index)
  (let*
      ([c-rect (make-ftype-pointer sdl-c-rect
				   (foreign-alloc (ftype-sizeof sdl-c-rect)))]
       [ret (*sdl-get-display-usable-bounds* display-index c-rect)]
       [val (if (= ret 0)
		(make-sdl-rect (ftype-ref sdl-c-rect (x) c-rect)
			       (ftype-ref sdl-c-rect (y) c-rect)
			       (ftype-ref sdl-c-rect (w) c-rect)
			       (ftype-ref sdl-c-rect (h) c-rect))
		ret)])
    (foreign-free (ftype-pointer-address c-rect))
    val))



























































































































(define sdl-rw-from-file!
  (sdl-procedure "SDL_RWFromFile" (string string) void*))

(define sdl-load-bmp-rw!
  (sdl-procedure "SDL_LoadBMP_RW" (void* int) (* sdl-c-surface)))

(define (c-point->point c-point)
  (make-sdl-point (ftype-ref sdl-c-point (x) c-point)
		  (ftype-ref sdl-c-point (y) c-point)))

(define (point->c-point point)
  (let ((c-point (make-ftype-pointer
		  sdl-c-point
		  (foreign-alloc (ftype-sizeof sdl-c-point)))))
    (ftype-set! sdl-c-point (x) c-point (sdl-point-x point))
    (ftype-set! sdl-c-point (y) c-point (sdl-point-y point))
    c-point))

(define (points->c-points points count)
  (define (load-point point c-point)
    (ftype-set! sdl-c-point (x) c-point (sdl-point-x point))
    (ftype-set! sdl-c-point (y) c-point (sdl-point-y point))
    c-point)

  (define (load-all points mem index)
    (if (= index count)
	mem
	(let ([c-point (ftype-&ref sdl-c-point () mem index)]
	      [point   (car points)])
	  (load-point point c-point)
	  (load-all (cdr points) mem (+ index 1)))))

  (let ([c-points (make-ftype-pointer
		   sdl-c-point
                   (foreign-alloc (* count
                                     (ftype-sizeof sdl-c-point))))])
    (load-all points c-points 0)))


(define (c-rect->rect c-rect)
  (make-sdl-rect (ftype-ref sdl-c-rect (x) c-rect)
		 (ftype-ref sdl-c-rect (y) c-rect)
		 (ftype-ref sdl-c-rect (w) c-rect)
		 (ftype-ref sdl-c-rect (h) c-rect)))

(define (rect->c-rect rect)
  (let ((c-rect (make-ftype-pointer
		 sdl-c-rect
		 (foreign-alloc (ftype-sizeof sdl-c-rect)))))
    (ftype-set! sdl-c-rect (x) c-rect (sdl-rect-x rect))
    (ftype-set! sdl-c-rect (y) c-rect (sdl-rect-y rect))
    (ftype-set! sdl-c-rect (w) c-rect (sdl-rect-w rect))
    (ftype-set! sdl-c-rect (h) c-rect (sdl-rect-h rect))
    c-rect))


(define (rects->c-rects rects count)
  (define (load-rect rect c-rect)
    (ftype-set! sdl-c-rect (x) c-rect (sdl-rect-x rect))
    (ftype-set! sdl-c-rect (y) c-rect (sdl-rect-y rect))
    (ftype-set! sdl-c-rect (w) c-rect (sdl-rect-w rect))
    (ftype-set! sdl-c-rect (h) c-rect (sdl-rect-h rect))
    c-rect)

  (define (load-all rects mem index)
    (if (= index count)
	mem
	(let ([c-rect (ftype-&ref sdl-c-rect () mem index)]
	      [rect   (car rects)])
	  (load-rect rect c-rect)
	  (load-all (cdr rects) mem (+ index 1)))))

  (let ([c-rects (make-ftype-pointer
		  sdl-c-rect
                  (foreign-alloc (* count
                                    (ftype-sizeof sdl-c-rect))))])
    (load-all rects c-rects 0)))


;;;          ;;;
;;; Renderer ;;;
;;;          ;;;

(define (sdl-create-renderer window index . flags)
  (let ([func (sdl-procedure "SDL_CreateRenderer"
				 ((* sdl-c-window) int unsigned-32)
				 (* sdl-c-renderer))])
    (if (null? flags)
	(error 'SDL-CREATE-RENDERER "No flags set.")
	(func window index (fold-left bitwise-ior 0 flags)))))


(define sdl-create-software-renderer
  (sdl-procedure "SDL_CreateSoftwareRenderer"
		     ((* sdl-c-surface))
		     (* sdl-c-renderer)))


(define sdl-create-texture
  (sdl-procedure "SDL_CreateTexture"
		     ((* sdl-c-renderer) unsigned-32 int int int)
		     (* sdl-c-texture)))


(define sdl-create-texture-from-surface
  (sdl-procedure "SDL_CreateTextureFromSurface"
		     ((* sdl-c-renderer) (* sdl-c-surface))
		     (* sdl-c-texture)))


(define sdl-destroy-renderer
  (sdl-procedure "SDL_DestroyRenderer" ((* sdl-c-renderer)) void))


(define sdl-destroy-texture
  (sdl-procedure "SDL_DestroyTexture" ((* sdl-c-texture)) void))


(define sdl-get-num-render-drivers
  (sdl-procedure "SDL_GetNumRenderDrivers" () int))


(define _sdl-get-render-draw-blend-mode
  (sdl-procedure "SDL_GetRenderDrawBlendMode"
		     ((* sdl-c-renderer) (* int))
		     int))

(define (sdl-get-render-draw-blend-mode renderer)
  (let* ((blend (make-ftype-pointer int (foreign-alloc (ftype-sizeof int))))
	 (error (_sdl-get-render-draw-blend-mode renderer blend))
	 (blend-val (ftype-ref int () blend)))
    (foreign-free (ftype-pointer-address blend))
    (if (= 0 error)
	blend-val
	'())))


(define _sdl-get-render-draw-color
  (sdl-procedure "SDL_GetRenderDrawColor"
		     ((* sdl-c-renderer)
		      (* unsigned-8)
		      (* unsigned-8)
		      (* unsigned-8)
		      (* unsigned-8))
		     int))

(define (sdl-get-render-draw-color renderer)
  (let* ((r (make-ftype-pointer unsigned-8 (foreign-alloc 1)))
	 (g (make-ftype-pointer unsigned-8 (foreign-alloc 1)))
	 (b (make-ftype-pointer unsigned-8 (foreign-alloc 1)))
	 (a (make-ftype-pointer unsigned-8 (foreign-alloc 1)))

	 (error   (_sdl-get-render-draw-color renderer r g b a))
	 (color-r (ftype-ref unsigned-8 () r))
	 (color-g (ftype-ref unsigned-8 () g))
	 (color-b (ftype-ref unsigned-8 () b))
	 (color-a (ftype-ref unsigned-8 () a)))
    (foreign-free (ftype-pointer-address color-r))
    (foreign-free (ftype-pointer-address color-g))
    (foreign-free (ftype-pointer-address color-b))
    (foreign-free (ftype-pointer-address color-a))
    (if (= 0 error)
	(list color-r color-g color-b color-a)
	'())))


(define sdl-get-render-target
  (sdl-procedure "SDL_GetRenderTarget"
		     ((* sdl-c-renderer))
		     (* sdl-c-texture)))


(define sdl-get-renderer
  (sdl-procedure "SDL_GetRenderer"
		     ((* sdl-c-window))
		     (* sdl-c-renderer)))


(define _sdl-render-clear
  (sdl-procedure "SDL_RenderClear" ((* sdl-c-renderer)) int))

(define (sdl-render-clear renderer)
  (= 0 (_sdl-render-clear renderer)))


(define _sdl-render-copy
  (sdl-procedure "SDL_RenderCopy"
		     ((* sdl-c-renderer)
		      (* sdl-c-texture)
		      (* sdl-c-rect)
		      (* sdl-c-rect))
		     int))

(define (sdl-render-copy renderer texture . opts)
  (if (null? opts)
      (= 0 (_sdl-render-copy renderer
			     texture
			     (make-ftype-pointer sdl-c-rect 0)
			     (make-ftype-pointer sdl-c-rect 0)))
      (let ((c-src (rect->c-rect (car opts)))
	    (c-dst (rect->c-rect (cadr opts))))
	(let ((ret (= 0 (_sdl-render-copy renderer texture c-src c-dst))))
	  (foreign-free (ftype-pointer-address c-src))
	  (foreign-free (ftype-pointer-address c-dst))
	  ret))))


(define sdl-render-present
  (sdl-procedure "SDL_RenderPresent" ((* sdl-c-renderer)) void))


(define (sdl-set-texture-color-mod! texture r g b)
  (let ([func (sdl-procedure "SDL_SetTextureColorMod"
				 ((* sdl-c-texture)
				  unsigned-8
				  unsigned-8
				  unsigned-8)
				 int)])
    (= 0 (func texture r g b))))


(define (sdl-set-texture-blend-mode! texture mode)
  (let ([func (sdl-procedure "SDL_SetTextureBlendMode"
				 ((* sdl-c-texture)
				  int)
				 int)])
    (= 0 (func texture mode))))


(define (sdl-set-texture-alpha-mod! texture alpha)
  (let ([func (sdl-procedure "SDL_SetTextureAlphaMod"
				 ((* sdl-c-texture)
				  unsigned-8)
				 int)])
    (= 0 (func texture mod))))


(define (sdl-set-render-target! renderer . texture)
  (let ([func (sdl-procedure "SDL_SetRenderTarget"
				 ((* sdl-c-renderer)
				  (* sdl-c-texture))
				 int)])
    (= 0 (func renderer (if (null? texture)
			    (make-ftype-pointer sdl-c-texture 0)
			    (car texture))))))


(define (sdl-set-render-draw-color! renderer r g b a)
  (let ([func (sdl-procedure "SDL_SetRenderDrawColor"
				 ((* sdl-c-renderer)
				  unsigned-8
				  unsigned-8
				  unsigned-8
				  unsigned-8)
				 int)])
    (= 0 (func renderer r g b a))))


(define (sdl-set-render-draw-blend-mode! renderer mode)
  (let ([func (sdl-procedure "SDL_SetRenderDrawBlendMode"
				 ((* sdl-c-renderer)
				  int)
				 int)])
    (= 0 (func renderer mode))))


(define (sdl-set-render-viewport! renderer . rect)
  (let ([func (sdl-procedure "SDL_RenderSetViewport"
				 ((* sdl-c-renderer)
				  (* sdl-c-rect))
				 int)])
    (if (null? rect)
	(= 0 (func renderer (make-ftype-pointer sdl-c-rect 0)))
	(let* ((c-rect (rect->c-rect (car rect)))
	       (error (func renderer c-rect)))
	  (foreign-free (ftype-pointer-address c-rect))
	  (= 0 error)))))


(define (sdl-set-render-scale! renderer x y)
  (let ([func (sdl-procedure "SDL_RenderSetScale"
				 ((* sdl-c-renderer)
				  float
				  float)
				 int)])
    (= 0 (func renderer x y))))


(define (sdl-set-render-logical-size! renderer w h)
  (let ([func (sdl-procedure "SDL_RenderSetLogicalSize"
				 ((* sdl-c-renderer)
				  int
				  int)
				 int)])
    (= 0 (func renderer w h))))


(define (sdl-set-render-integer-scale! renderer bool)
  (let ([func (sdl-procedure "SDL_RenderSetIntegerScale"
				 ((* sdl-c-renderer)
				  int)
				 int)])
    (= 0 (func renderer (if (bool) 1 0)))))


(define (sdl-set-render-clip! renderer . rect)
  (let ([func (sdl-procedure "SDL_RenderSetClipRect"
				 ((* sdl-c-renderer)
				  (* sdl-c-rect))
				 int)])
    (if (null? rect)
	(= 0 (func renderer (make-ftype-pointer sdl-c-rect 0)))
	(let* ((c-rect (rect->c-rect (car rect)))
	       (error (func renderer c-rect)))
	  (foreign-free (ftype-pointer-address c-rect))
	  (= 0 error)))))


(define (sdl-render-target-supported? renderer)
  (let ([func (sdl-procedure "SDL_RenderTargetSupported"
				 ((* sdl-c-renderer))
				 int)])
    (= 1 (func renderer))))



;;;        ;;;
;;; Pixels ;;;
;;;        ;;;

(define sdl-map-rgb
  (sdl-procedure "SDL_MapRGB"
		     ((* sdl-c-pixel-format)
		      unsigned-8
		      unsigned-8
		      unsigned-8) unsigned-32))



;;;      ;;;
;;; Rect ;;;
;;;      ;;;

(define (sdl-enclude-points points . clip)
  (let* ([func (sdl-procedure "SDL_EnclosePoints"
				  ((* sdl-c-point)
				   int
				   (* sdl-c-rect)
				   (* sdl-c-rect))
				  int)]
	 [c-result (make-ftype-pointer
		    sdl-c-rect
		    (foreign-alloc (ftype-sizeof sdl-c-rect)))]
	 [count    (length points)]
	 [c-points (points->c-points points count)])
    (if (null? clip)
	(let* ([error (func c-points
			    count
			    (make-ftype-pointer sdl-c-rect 0)
			    c-result)]
	       [result (if (= 1 error) (c-rect->rect c-result) '())])
	  (foreign-free (ftype-pointer-address c-result))
	  (foreign-free (ftype-pointer-address c-points))
	  result)
	(let* ([c-clip (rect->c-rect (car clip))]
	       [error  (func c-points
			     count
			     clip
			     c-result)]
	       [result (if (= 1 error) (c-rect->rect c-result) '())])
	  (foreign-free (ftype-pointer-address c-clip))
	  (foreign-free (ftype-pointer-address c-result))
	  (foreign-free (ftype-pointer-address c-points))
	  result))))


(define (sdl-has-intersection? a b)
  (let* ([func (sdl-procedure "SDL_HasIntersection"
				  ((* sdl-c-rect) (* sdl-c-rect))
				  int)]
	 [c-a (rect->c-rect a)]
	 [c-b (rect->c-rect b)]
	 [res (func c-a c-b)])
    (foreign-free (ftype-pointer-address c-a))
    (foreign-free (ftype-pointer-address c-b))
    (= 1 res)))


(define (sdl-intersect-rect a b)
  (let* ([func (sdl-procedure "SDL_IntersectRect"
				  ((* sdl-c-rect)
				   (* sdl-c-rect)
				   (* sdl-c-rect))
				  int)]
	 [c-a   (rect->c-rect a)]
	 [c-b   (rect->c-rect b)]
	 [c-res (make-ftype-pointer
		 sdl-c-rect
		 (foreign-alloc (ftype-sizeof sdl-c-rect)))]
	 [has   (func c-a c-b c-res)])
    (foreign-free (ftype-pointer-address c-a))
    (foreign-free (ftype-pointer-address c-b))
    (foreign-free (ftype-pointer-address c-res))
    (if (= 1 has)
	(c-rect->rect c-res)
	'())))


(define (sdl-intersect-and-line rect x1 y1 x2 y2)
  (let ([func (sdl-procedure "SDL_IntersectRectAndLine"
				 ((* sdl-c-rect)
				  (* int)
				  (* int)
				  (* int)
				  (* int))
				 int)]
	[c-x1   (make-ftype-pointer int (foreign-alloc (ftype-sizeof int)))]
	[c-y1   (make-ftype-pointer int (foreign-alloc (ftype-sizeof int)))]
	[c-x2   (make-ftype-pointer int (foreign-alloc (ftype-sizeof int)))]
	[c-y2   (make-ftype-pointer int (foreign-alloc (ftype-sizeof int)))]
	[c-rect (rect->c-rect rect)])
    (ftype-set! int () c-x1 x1)
    (ftype-set! int () c-y1 y1)
    (ftype-set! int () c-x2 x2)
    (ftype-set! int () c-y2 y2)
    (let* ([has (func c-rect c-x1 c-y1 c-x2 c-y2)]
	   [res (list (= 1 has)
		      (make-sdl-point c-x1 c-y1)
		      (make-sdl-point c-x2 c-y2))])
      (foreign-free (ftype-pointer-address c-x1))
      (foreign-free (ftype-pointer-address c-y1))
      (foreign-free (ftype-pointer-address c-x2))
      (foreign-free (ftype-pointer-address c-y2))
      (foreign-free (ftype-pointer-address c-rect))
      res)))


(define (sdl-point-in-rect? point rect)
  (let* ([func (sdl-procedure "SDL_PointInRect"
				  ((* sdl-c-point) (* sdl-c-rect))
				  int)]
	 [c-point (point->c-point point)]
	 [c-rect  (rect->c-rect rect)]
	 [res     (func c-point c-rect)])
    (foreign-free (ftype-pointer-address c-point))
    (foreign-free (ftype-pointer-address c-rect))
    (= 1 res)))


(define (sdl-rect-empty? rect)
  (let* ([func (sdl-procedure "SDL_RectEmpty"
				  ((* sdl-c-rect))
				  int)]
	 [c-rect  (rect->c-rect rect)]
	 [res     (func c-rect)])
    (foreign-free (ftype-pointer-address c-rect))
    (= 1 res)))


(define (sdl-rect-equal? a b)
  (let* ([func (sdl-procedure "SDL_RectEquals"
				  ((* sdl-c-rect) (* sdl-c-rect))
				  int)]
	 [c-rect-a (rect->c-rect a)]
	 [c-rect-b (rect->c-rect b)]
	 [res     (func c-rect-a c-rect-b)])
    (foreign-free (ftype-pointer-address c-rect-a))
    (foreign-free (ftype-pointer-address c-rect-b))
    (= 1 res)))


(define (sdl-union-rect a b)
  (let* ([func (sdl-procedure "SDL_UnionRect"
				  ((* sdl-c-rect)
				   (* sdl-c-rect)
				   (* sdl-c-rect))
				  void)]
	 [c-rect-a (rect->c-rect a)]
	 [c-rect-b (rect->c-rect b)]
	 [c-union  (make-ftype-pointer
		    sdl-c-rect
		    (foreign-alloc (ftype-sizeof sdl-c-rect)))])
    (func c-rect-a
	  c-rect-b
	  c-union)
    (let ([union (c-rect->rect c-union)])
      (foreign-free (ftype-pointer-address c-rect-a))
      (foreign-free (ftype-pointer-address c-rect-b))
      (foreign-free (ftype-pointer-address c-union))
      union)))



;;;          ;;;
;;; Surfaces ;;;
;;;          ;;;

(define sdl-free-surface
  (sdl-procedure "SDL_FreeSurface" ((* sdl-c-surface)) void))


(define (sdl-load-bmp file)
  (sdl-load-bmp-rw! (sdl-rw-from-file! file "rb") 1))


(define sdl-fill-rect
  (sdl-procedure "SDL_FillRect"
		     ((* sdl-c-surface) void* unsigned-32) int))



;;;           ;;;
;;; Clipboard ;;;
;;;           ;;;

(define sdl-get-clipboard-text
  (sdl-procedure "SDL_GetClipboardText" () string))

(define _sdl-has-clipboard-text?
  (sdl-procedure "SDL_HasClipboardText" () int))

(define sdl-has-clipboard-text?
  (= 1 (_sdl-has-clipboard-text?)))

(define _sdl-set-clipboard-text!
  (sdl-procedure "SDL_SetClipboardText" (string) int))

(define (sdl-set-clipboard-text! text)
  (= 1 (_sdl-set-clipboard-text! text)))
