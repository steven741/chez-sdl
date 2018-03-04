#! /usr/bin/scheme --script

(load "../../lib/sdl.sls")

(import (sdl (2)))


(sdl-init SDL-INIT-VIDEO)

;; Create window and bind to win
(define win
  (sdl-safe-eval
    (sdl-create-window! "test window"
                        SDL-WINDOWPOS-UNDEFINED
                        SDL-WINDOWPOS-UNDEFINED
                        640
                        480
                        (bitwise-ior
                          SDL-WINDOW-SHOWN
                          SDL-WINDOW-ALLOW-HIGHDPI))
    (lambda ()
      (sdl-err-rep "Couldn't get window."))))

;; Create a renderer and bind to ren
(define ren
  (sdl-safe-eval
    (sdl-create-renderer! win
                          -1
                          (bitwise-ior
                            SDL-RENDERER-ACCELERATED
                            SDL-RENDERER-PRESENTVSYNC))
    (lambda ()
      (sdl-err-rep "Couldn't get renderer.")
      (sdl-destroy-window win))))

;; Load BMP file and create a surface for image
(define tex
  (let*
    ([bmp (sdl-safe-eval
            (sdl-load-bmp! "hello.bmp")
            (lambda ()
              (sdl-err-rep "Failed to load bmp.")
              (sdl-destroy-renderer ren)
              (sdl-destroy-window   win)))]

     [tex (sdl-safe-eval
            (sdl-create-texture-from-surface! ren bmp)
            (lambda ()
              (sdl-err-rep "Failed to create texture.")
              (sdl-free-surface     bmp)
              (sdl-destroy-renderer ren)
              (sdl-destroy-window   win)))])

    (sdl-free-surface bmp)
    tex))


;; Clean up resources
(define (should-quit)
  (sdl-destroy-texture  tex)
  (sdl-destroy-renderer ren)
  (sdl-destroy-window   win)
  (sdl-quit)
  (exit))


;; Proccess events until queue is empty.
(define (event-loop)
  (define (loop e)
    (cond
      ((eq? (car e) 'EMPTY)   '())
      ((eq? (car e) 'QUIT)    (should-quit))
      ((eq? (car e) 'KEYDOWN) (loop (sdl-get-event)))
      (else
        (loop (sdl-get-event)))))

  ;; Start handling all events in the queue.
  (loop (sdl-get-event)))


;; Main loop
(define (main-loop)
  ;; Display image to window
  (sdl-render-clear   ren)
  (sdl-render-copy    ren tex 0 0)
  (sdl-render-present ren)

  (event-loop)
  (main-loop))

(main-loop)
