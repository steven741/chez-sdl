;;;; -*- mode: Scheme; -*-

;;;;
;;;;
;;;;

(define sdl-delay
  (foreign-procedure "SDL_Delay" (unsigned-32) void))

(define sdl-get-ticks
  (foreign-procedure "SDL_GetTicks" () unsigned-32))

(define sdl-get-performance-counter
  (foreign-procedure "SDL_GetPerformanceCounter" () unsigned-64))

(define sdl-get-performance-frequency
  (foreign-procedure "SDL_GetPerformanceFrequency" () unsigned-64))
