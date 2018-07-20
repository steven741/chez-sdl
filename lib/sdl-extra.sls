;;;; -*- mode: Scheme; -*-

;;;;
;;;;
;;;;


(define (sdl-init-with flags proc)
  (sdl-init flags)
  (proc)
  (sdl-quit))


(define (sdl-win-with title x y w h flags proc)
  (let
      ([window (sdl-create-window title x y w h flags)])

    (if (null-ptr? window)
        (error 'SDL (sdl-get-error))
	(begin
	  (proc window)
	  (sdl-destroy-window window)))))
