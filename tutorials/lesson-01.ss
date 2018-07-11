;;; Lazy Foo' - Hello SDL
;;; http://lazyfoo.net/tutorials/SDL/01_hello_SDL

(import (chezscheme)
	(sdl (2)))

(define SCREEN-WIDTH 640)
(define SCREEN-HEIGHT 480)

(define (main)
  (sdl-init SDL-INIT-VIDEO)

  (let*
      ([win (sdl-create-window! "SDL Tutorial"
	                        SDL-WINDOWPOS-UNDEFINED
	                        SDL-WINDOWPOS-UNDEFINED
		                SCREEN-WIDTH
		                SCREEN-HEIGHT
		                SDL-WINDOW-SHOWN)]

       [screen (sdl-get-window-surface win)]

       [screen-fmt (ftype-ref sdl-surface (format) screen)])

    (sdl-fill-rect screen 0 (sdl-map-rgb screen-fmt #xFF #xFF #xFF))
    (sdl-update-window-surface win)

    (sdl-delay 2000)
    (sdl-destroy-window win)
    (sdl-quit)))


(scheme-start
 (lambda fns
   (main)))
