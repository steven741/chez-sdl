;;;; -*- mode: Scheme; -*-

(define (sdl-make-timer-callback procedure)
  (let
      ((proc (foreign-callable __collect_safe
			       (lambda (interval param)
				 (procedure interval))
			       (unsigned-32 void*)
			       unsigned-32)))
    (lock-object proc)
    (foreign-callable-entry-point proc)))

(define (sdl-add-timer! interval procedure)
  (SDL_AddTimer interval
		(sdl-make-timer-callback procedure)
		0))

(define sdl-delay                     SDL_Delay)
(define sdl-get-performance-counter   SDL_GetPerformanceCounter)
(define sdl-get-performance-frequency SDL_GetPerformanceFrequency)
(define sdl-get-ticks                 SDL_GetTicks)
(define sdl-remove-timer!             SDL_RemoveTimer)
