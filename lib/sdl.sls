;;;; -*- mode: Scheme; -*-

(library
    (sdl (2 0 7))
  (export
   ;;;;;;;;;;;;;
   ;;; Basic ;;;
   ;;;;;;;;;;;;;
   SDL-INIT-TIMER
   SDL-INIT-AUDIO
   SDL-INIT-VIDEO
   SDL-INIT-JOYSTICK
   SDL-INIT-HAPTIC
   SDL-INIT-GAMECONTROLLER
   SDL-INIT-EVENTS
   SDL-INIT-EVERYTHING

   SDL-HINT-FRAMEBUFFER-ACCELERATION
   SDL-HINT-RENDER-DRIVER
   SDL-HINT-RENDER-OPENGL-SHADERS
   SDL-HINT-RENDER-DIRECT3D-THREADSAFE
   SDL-HINT-RENDER-DIRECT3D11-DEBUG
   SDL-HINT-RENDER-LOGICAL-SIZE-MODE
   SDL-HINT-RENDER-SCALE-QUALITY
   SDL-HINT-RENDER-VSYNC
   SDL-HINT-VIDEO-ALLOW-SCREENSAVER
   SDL-HINT-VIDEO-X11-XVIDMODE
   SDL-HINT-VIDEO-X11-XINERAMA
   SDL-HINT-VIDEO-X11-XRANDR
   SDL-HINT-VIDEO-X11-NET-WM-PING
   SDL-HINT-VIDEO-X11-NET-WM-BYPASS-COMPOSITOR
   SDL-HINT-WINDOW-FRAME-USABLE-WHILE-CURSOR-HIDDEN
   SDL-HINT-WINDOWS-INTRESOURCE-ICON
   SDL-HINT-WINDOWS-INTRESOURCE-ICON-SMALL
   SDL-HINT-WINDOWS-ENABLE-MESSAGELOOP
   SDL-HINT-GRAB-KEYBOARD
   SDL-HINT-MOUSE-NORMAL-SPEED-SCALE
   SDL-HINT-MOUSE-RELATIVE-SPEED-SCALE
   SDL-HINT-MOUSE-RELATIVE-MODE-WARP
   SDL-HINT-MOUSE-FOCUS-CLICKTHROUGH
   SDL-HINT-TOUCH-MOUSE-EVENTS
   SDL-HINT-VIDEO-MINIMIZE-ON-FOCUS-LOSS
   SDL-HINT-IDLE-TIMER-DISABLED
   SDL-HINT-ORIENTATIONS
   SDL-HINT-APPLE-TV-CONTROLLER-UI-EVENTS
   SDL-HINT-APPLE-TV-REMOTE-ALLOW-ROTATION
   SDL-HINT-IOS-HIDE-HOME-INDICATOR
   SDL-HINT-ACCELEROMETER-AS-JOYSTICK
   SDL-HINT-TV-REMOTE-AS-JOYSTICK
   SDL-HINT-XINPUT-ENABLED
   SDL-HINT-XINPUT-USE-OLD-JOYSTICK-MAPPING
   SDL-HINT-GAMECONTROLLERCONFIG
   SDL-HINT-GAMECONTROLLER-IGNORE-DEVICES
   SDL-HINT-GAMECONTROLLER-IGNORE-DEVICES-EXCEPT
   SDL-HINT-JOYSTICK-ALLOW-BACKGROUND-EVENTS
   SDL-HINT-ALLOW-TOPMOST
   SDL-HINT-TIMER-RESOLUTION
   SDL-HINT-QTWAYLAND-CONTENT-ORIENTATION
   SDL-HINT-QTWAYLAND-WINDOW-FLAGS
   SDL-HINT-THREAD-STACK-SIZE
   SDL-HINT-VIDEO-HIGHDPI-DISABLED
   SDL-HINT-MAC-CTRL-CLICK-EMULATE-RIGHT-CLICK
   SDL-HINT-VIDEO-WIN-D3DCOMPILER
   SDL-HINT-VIDEO-WINDOW-SHARE-PIXEL-FORMAT
   SDL-HINT-WINRT-PRIVACY-POLICY-URL
   SDL-HINT-WINRT-PRIVACY-POLICY-LABEL
   SDL-HINT-WINRT-HANDLE-BACK-BUTTON
   SDL-HINT-VIDEO-MAC-FULLSCREEN-SPACES
   SDL-HINT-MAC-BACKGROUND-APP
   SDL-HINT-ANDROID-APK-EXPANSION-MAIN-FILE-VERSION
   SDL-HINT-ANDROID-APK-EXPANSION-PATCH-FILE-VERSION
   SDL-HINT-IME-INTERNAL-EDITING
   SDL-HINT-ANDROID-SEPARATE-MOUSE-AND-TOUCH
   SDL-HINT-ANDROID-TRAP-BACK-BUTTON
   SDL-HINT-RETURN-KEY-HIDES-IME
   SDL-HINT-EMSCRIPTEN-KEYBOARD-ELEMENT
   SDL-HINT-NO-SIGNAL-HANDLERS
   SDL-HINT-WINDOWS-NO-CLOSE-ON-ALT-F4
   SDL-HINT-BMP-SAVE-LEGACY-FORMAT
   SDL-HINT-WINDOWS-DISABLE-THREAD-NAMING
   SDL-HINT-RPI-VIDEO-LAYER
   SDL-HINT-VIDEO-DOUBLE-BUFFER
   SDL-HINT-OPENGL-ES-DRIVER
   SDL-HINT-AUDIO-RESAMPLING-MODE
   SDL-HINT-AUDIO-CATEGORY

   sdl-init
   sdl-quit

   sdl-clear-hints!
   sdl-get-hint-boolean
   sdl-set-hint!
   sdl-set-hint-w/-priority!

   sdl-get-version
   sdl-get-revision
   sdl-get-revision-num

   sdl-clear-error!
   sdl-get-error


   ;;;;;;;;;;;;;
   ;;; Video ;;;
   ;;;;;;;;;;;;;
   SDL-WINDOW-FULLSCREEN
   SDL-WINDOW-OPENGL
   SDL-WINDOW-SHOWN
   SDL-WINDOW-HIDDEN
   SDL-WINDOW-BORDERLESS
   SDL-WINDOW-RESIZABLE
   SDL-WINDOW-MINIMIZED
   SDL-WINDOW-MAXIMIZED
   SDL-WINDOW-INPUT-GRABBED
   SDL-WINDOW-INPUT-FOCUS
   SDL-WINDOW-MOUSE-FOCUS
   SDL-WINDOW-FULLSCREEN-DESKTOP
   SDL-WINDOW-FOREIGN
   SDL-WINDOW-ALLOW-HIGHDPI

   SDL-WINDOWPOS-UNDEFINED-MASK
   SDL-WINDOWPOS-UNDEFINED-DISPLAY
   SDL-WINDOWPOS-UNDEFINED
   SDL-WINDOWPOS-ISUNDEFINED

   SDL-WINDOWPOS-CENTERED-MASK
   SDL-WINDOWPOS-CENTERED-DISPLAY
   SDL-WINDOWPOS-CENTERED
   SDL-WINDOWPOS-ISCENTERED

   SDL-RENDERER-SOFTWARE
   SDL-RENDERER-ACCELERATED
   SDL-RENDERER-PRESENTVSYNC
   SDL-RENDERER-TARGETTEXTURE

   make-sdl-rect
   sdl-rect?
   sdl-rect-x
   sdl-rect-y
   sdl-rect-w
   sdl-rect-h

   sdl-surface?
   sdl-surface-fmt
   sdl-surface-w
   sdl-surface-h
   sdl-surface-pxl

   sdl-create-window
   sdl-destroy-window
   sdl-disable-screen-saver
   sdl-enable-screen-saver
   sdl-get-window-surface
   sdl-update-window-surface
 
   sdl-create-renderer
   sdl-create-texture-from-surface
   sdl-render-clear
   ;sdl-render-copy
   sdl-render-present
   sdl-destroy-texture
   sdl-destroy-renderer

   sdl-load-bmp
   sdl-map-rgb
   sdl-fill-rect
   sdl-free-surface


   ;;;;;;;;;;;;;
   ;;; Audio ;;;
   ;;;;;;;;;;;;;

   ;;;;;;;;;;;;;
   ;;; Event ;;;
   ;;;;;;;;;;;;;
   sdl-event-none?
   sdl-event-quit?
   sdl-event-keyup?
   sdl-event-keydown?

   sdl-poll-event


   ;;;;;;;;;;;;;
   ;;; Force ;;;
   ;;;;;;;;;;;;;

   ;;;;;;;;;;;;;
   ;;; Power ;;;
   ;;;;;;;;;;;;;
   sdl-get-power-info


   ;;;;;;;;;;;;;
   ;;; Extra ;;;
   ;;;;;;;;;;;;;
   sdl-init-with
   sdl-win-with)


  (import (chezscheme))


  (define sdl
    (begin
      (case (machine-type)
        ((ti3nt i3nt ta6nt a6nt)
	 (load-shared-object "SDL2.dll"))

        ((i3le ti3le a6le ta6le)
	 (load-shared-object "libSDL2.so"))

        ((i3osx ti3osx a6osx ta6osx)
	 (load-shared-object "libSDL2.dylib"))

	(else
         (error 'sdl "unknown machine type" (machine-type))))))

  (define sdl-poll-event!
    (foreign-procedure "SDL_PollEvent" ((* sdl-c-event)) int))

  (define sdl-rw-from-file!
    (foreign-procedure "SDL_RWFromFile" (string string) void*))

  (define sdl-load-bmp-rw!
    (foreign-procedure "SDL_LoadBMP_RW" (void* int) (* sdl-c-surface)))


  (define event-mem)

  (define (null-ptr? ptr)
    (= 0 (ftype-pointer-address ptr)))


  (include "lib/sdl-basic.sls")
  (include "lib/sdl-video.sls")
  (include "lib/sdl-audio.sls")
  (include "lib/sdl-event.sls")
  (include "lib/sdl-force.sls")
  (include "lib/sdl-power.sls")
  (include "lib/sdl-extra.sls"))
