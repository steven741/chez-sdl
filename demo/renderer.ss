;;;; -*- mode: Scheme; -*-

;;;;
;;;;
;;;;

(import (sdl (2)))


;; Initialize SDL 2
(sdl-init SDL-INIT-VIDEO)


;; Request a window
(define win
  (sdl-create-window "chezscheme"
		     SDL-WINDOWPOS-UNDEFINED
		     SDL-WINDOWPOS-UNDEFINED
		     640
		     480
		     SDL-WINDOW-SHOWN))

(define ren
  (sdl-create-renderer win
		       -1
		       SDL-RENDERER-ACCELERATED
		       SDL-RENDERER-PRESENT-VSYNC))


(define bmp (sdl-load-bmp "lenna.bmp"))
(define tex (sdl-create-texture-from-surface ren bmp))
(sdl-free-surface bmp)


(sdl-render-clear ren)
(sdl-render-copy ren tex)
(sdl-render-present ren)
(sdl-delay 2000)


;; Exit
(sdl-destroy-texture tex)
(sdl-destroy-renderer ren)
(sdl-destroy-window win)
(sdl-quit)
