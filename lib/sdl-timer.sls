;;;; -*- mode: Scheme; -*-

;;;;;;;;;;;;;;;;;;;;;;;
;;; Foreign C Types ;;;
;;;;;;;;;;;;;;;;;;;;;;;

(define-ftype sdl-c-timer-callback
  (function (unsigned-32 void*) unsigned-32))


;;;;;;;;;;;;;;;;;;;;;;
;;; Scheme Records ;;;
;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; C Function Bindings ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define *sdl-add-timer*                 (sdl-procedure "SDL_AddTimer" (unsigned-32 (* sdl-c-timer-callback) void*) int))
(define *sdl-delay*                     (sdl-procedure "SDL_Delay" (unsigned-32) void))
(define *sdl-get-performance-counter*   (sdl-procedure "SDL_GetPerformanceCounter" () unsigned-64))
(define *sdl-get-performance-frequency* (sdl-procedure "SDL_GetPerformanceFrequency" () unsigned-64))
(define *sdl-get-ticks*                 (sdl-procedure "SDL_GetTicks" () unsigned-32))
(define *sdl-remove-timer*              (sdl-procedure "SDL_RemoveTimer" (int) int))


;;;;;;;;;;;;;;;;;;;
;;; Marshalling ;;;
;;;;;;;;;;;;;;;;;;;

(define sdl-delay                     *sdl-delay*)
(define sdl-get-performance-counter   *sdl-get-performance-counter*)
(define sdl-get-performance-frequency *sdl-get-performance-frequency*)
(define sdl-get-ticks                 *sdl-get-ticks*)
(define sdl-remove-timer              *sdl-remove-timer*)

(define sdl-add-timer)
