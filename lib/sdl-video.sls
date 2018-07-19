;;;; -*- mode: Scheme; -*-

;;;;
;;;;
;;;;


(define SDL-WINDOW-FULLSCREEN         #x00000001)
(define SDL-WINDOW-OPENGL             #x00000002)
(define SDL-WINDOW-SHOWN              #x00000004)
(define SDL-WINDOW-HIDDEN             #x00000008)
(define SDL-WINDOW-BORDERLESS         #x00000010)
(define SDL-WINDOW-RESIZABLE          #x00000020)
(define SDL-WINDOW-MINIMIZED          #x00000040)
(define SDL-WINDOW-MAXIMIZED          #x00000080)
(define SDL-WINDOW-INPUT-GRABBED      #x00000100)
(define SDL-WINDOW-INPUT-FOCUS        #x00000200)
(define SDL-WINDOW-MOUSE-FOCUS        #x00000400)
(define SDL-WINDOW-FULLSCREEN-DESKTOP (bitwise-ior SDL-WINDOW-FULLSCREEN #x00001000))
(define SDL-WINDOW-FOREIGN            #x00000800)
(define SDL-WINDOW-ALLOW-HIGHDPI      #x00002000)


(define SDL-WINDOWPOS-UNDEFINED-MASK #x1FFF0000)

(define (SDL-WINDOWPOS-UNDEFINED-DISPLAY X)
  (bitwise-ior SDL-WINDOWPOS-UNDEFINED-MASK X))

(define SDL-WINDOWPOS-UNDEFINED
  (SDL-WINDOWPOS-UNDEFINED-DISPLAY 0))

(define (SDL-WINDOWPOS-ISUNDEFINED X)
  (= (bitwise-and X #xFFFF0000) SDL-WINDOWPOS-UNDEFINED-MASK))


(define SDL-WINDOWPOS-CENTERED-MASK #x2FFF0000)

(define (SDL-WINDOWPOS-CENTERED-DISPLAY X)
  (bitwise-ior SDL-WINDOWPOS-CENTERED-MASK X))

(define SDL-WINDOWPOS-CENTERED
  (SDL-WINDOWPOS-CENTERED-DISPLAY 0))

(define (SDL-WINDOWPOS-ISCENTERED X)
  (= (bitwise-and X #xFFFF0000) SDL-WINDOWPOS-CENTERED-MASK))


(define SDL-RENDERER-SOFTWARE      #x00000001)
(define SDL-RENDERER-ACCELERATED   #x00000002)
(define SDL-RENDERER-PRESENTVSYNC  #x00000004)
(define SDL-RENDERER-TARGETTEXTURE #x00000008)


(define SDL-ADDEVENT  0)
(define SDL-PEEKEVENT 1)
(define SDL-GETEVENT  2)


;; https://wiki.libsdl.org/SDL_Rect
(define-ftype sdl-rect
  (struct
    [x int]
    [y int]
    [w int]
    [h int]))

;; https://wiki.libsdl.org/SDL_Color
(define-ftype sdl-color
  (struct
    [r unsigned-8]
    [g unsigned-8]
    [b unsigned-8]
    [a unsigned-8]))

;; https://wiki.libsdl.org/SDL_Palette
(define-ftype sdl-palette
  (struct
    [ncolors  int]
    [colors   (* sdl-color)]
    [version  unsigned-32]
    [refcount int]))

;; https://wiki.libsdl.org/SDL_PixelFormat
(define-ftype sdl-pixel-format
  (struct
    [format          unsigned-32]
    [palette         (* sdl-palette)]
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
    [next            (* sdl-pixel-format)]))

;; https://wiki.libsdl.org/SDL_Surface
(define-ftype sdl-surface
  (struct
    [flags     unsigned-32]
    [format    (* sdl-pixel-format)]
    [w         int]
    [h         int]
    [pitch     int]
    [pixels    void*]
    [userdata  void*]
    [locked    int]
    [lock-data void*]
    [clip-rect sdl-rect]
    [b-map     void*] ; NOTE: Should be SDL_BlitMap
    [refcount  int]))


(define (sdl-create-window title x y w h . flags)
  (define create-win
    (foreign-procedure "SDL_CreateWindow" (string int int int int unsigned-32) void*))

  (if (null? flags)
      (create-win title x y w h SDL-WINDOW-SHOWN)
      (create-win title x y w h (fold-right bitwise-ior #x00000000 flags))))


(define sdl-get-window-surface
  (foreign-procedure "SDL_GetWindowSurface" (void*) (* sdl-surface)))


(define sdl-update-window-surface
  (foreign-procedure "SDL_UpdateWindowSurface" (void*) int))


(define sdl-destroy-window
  (foreign-procedure "SDL_DestroyWindow" (void*) void))


(define sdl-free-surface
  (foreign-procedure "SDL_FreeSurface" ((* sdl-surface)) void))

