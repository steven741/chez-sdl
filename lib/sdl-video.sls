;;;; -*- mode: Scheme; -*-

;;;;
;;;;
;;;;

(define sdl-rw-from-file!
  (foreign-procedure "SDL_RWFromFile" (string string) void*))

(define sdl-load-bmp-rw!
  (foreign-procedure "SDL_LoadBMP_RW" (void* int) (* sdl-c-surface)))


;;;
;;;
;;;

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
(define SDL-WINDOW-FULLSCREEN-DESKTOP (bitwise-ior SDL-WINDOW-FULLSCREEN
						   #x00001000))
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


(define-ftype sdl-c-rect
  (struct
    [x int]
    [y int]
    [w int]
    [h int]))

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
    [b-map     void*] ; NOTE: Should be SDL_BlitMap
    [refcount  int]))

(define-ftype sdl-c-window
  (struct
    [flags unsigned-32]))


(define-record-type sdl-rect
  (fields x y w h))


(define (sdl-surface? s) #f)

(define (sdl-surface-fmt s) 0)

(define (sdl-surface-w s) 0)

(define (sdl-surface-h s) 0)

(define (sdl-surface-pitch s) 0)

(define (sdl-surface-pxl s) 0)


(define sdl-create-window
  (foreign-procedure "SDL_CreateWindow"
		     (string int int int int unsigned-32) void*))


(define sdl-destroy-window
  (foreign-procedure "SDL_DestroyWindow" (void*) void))


(define sdl-disable-screen-saver
  (foreign-procedure "SDL_DisableScreenSaver" () void))


(define sdl-enable-screen-saver
  (foreign-procedure "SDL_EnableScreenSaver" () void))


(define sdl-get-window-surface
  (foreign-procedure "SDL_GetWindowSurface" (void*) (* sdl-c-surface)))


(define sdl-update-window-surface
  (foreign-procedure "SDL_UpdateWindowSurface" (void*) int))



(define sdl-free-surface
  (foreign-procedure "SDL_FreeSurface" ((* sdl-c-surface)) void))


(define (sdl-load-bmp file)
  (sdl-load-bmp-rw! (sdl-rw-from-file! file "rb") 1))


(define sdl-create-renderer
  (foreign-procedure "SDL_CreateRenderer" (void* int unsigned-32) void*))


(define sdl-create-texture-from-surface
  (foreign-procedure "SDL_CreateTextureFromSurface"
		     (void* (* sdl-c-surface)) void*))


(define sdl-render-clear
  (foreign-procedure "SDL_RenderClear" (void*) int))


(define sdl-render-present
  (foreign-procedure "SDL_RenderPresent" (void*) void))


(define sdl-destroy-texture
  (foreign-procedure "SDL_DestroyTexture" (void*) void))


(define sdl-destroy-renderer
  (foreign-procedure "SDL_DestroyRenderer" (void*) void))


(define sdl-fill-rect
  (foreign-procedure "SDL_FillRect"
		     ((* sdl-c-surface) void* unsigned-32) int))


(define sdl-map-rgb
  (foreign-procedure "SDL_MapRGB"
		     ((* sdl-c-pixel-format)
		      unsigned-8
		      unsigned-8
		      unsigned-8) unsigned-32))


;;;
;;;
;;;

(define sdl-get-clipboard-text
  (foreign-procedure "SDL_GetClipboardText" () string))

(define _sdl-has-clipboard-text?
  (foreign-procedure "SDL_HasClipboardText" () int))

(define sdl-has-clipboard-text?
  (= 1 (_sdl-has-clipboard-text?)))

(define _sdl-set-clipboard-text!
  (foreign-procedure "SDL_SetClipboardText" (string) int))

(define (sdl-set-clipboard-text! text)
  (= 1 (_sdl-set-clipboard-text! text)))
