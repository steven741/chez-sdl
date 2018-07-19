;;;; -*- mode: Scheme; -*-

;;;;
;;;;
;;;;


(define SDL-INIT-TIMER          #x00000001)
(define SDL-INIT-AUDIO          #x00000010)
(define SDL-INIT-VIDEO          #x00000020)
(define SDL-INIT-JOYSTICK       #x00000200)
(define SDL-INIT-HAPTIC         #x00001000)
(define SDL-INIT-GAMECONTROLLER #x00002000)
(define SDL-INIT-EVENTS         #x00004000)
(define SDL-INIT-EVERYTHING
  (bitwise-ior SDL-INIT-TIMER
               SDL-INIT-AUDIO
               SDL-INIT-VIDEO
               SDL-INIT-EVENTS
               SDL-INIT-JOYSTICK
               SDL-INIT-HAPTIC
               SDL-INIT-GAMECONTROLLER))


(define (sdl-init . flags)
  (define init (foreign-procedure "SDL_Init" (unsigned-32) int))

  ; Allocate some memory for the event system
  (set! event-mem
	(make-ftype-pointer sdl-event (foreign-alloc (ftype-sizeof sdl-event))))

  (if (null? flags)
      (init SDL-INIT-VIDEO)
      (init (fold-right bitwise-ior 0 flags))))


(define (sdl-quit)
  ; Release event system memory
  (foreign-free (ftype-pointer-address event-mem))

  (foreign-procedure "SDL_Quit" () void))
