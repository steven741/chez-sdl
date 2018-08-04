;;;; -*- mode: Scheme; -*-

;;;;
;;;;
;;;;

(define sdl-get-key-from-name
  (foreign-procedure "SDL_GetKeyFromName" (string) int))

(define sdl-get-key-from-scancode
  (foreign-procedure "SDL_GetKeyFromScancode" (int) int))

(define sdl-get-key-name
  (foreign-procedure "SDL_GetKeyName" (int) string))

(define sdl-get-keyboard-focus
  (foreign-procedure "SDL_GetKeyboardFocus" () void*)) ; NOTE: change to sdl-c-window

(define (sdl-get-keyboard-state)
  (let
      ([keys
	((foreign-procedure "SDL_GetKeyboardState" (void*) (* unsigned-8)) 0)])
    (lambda (key)
      (= 1 (ftype-ref unsigned-8 () keys key)))))

(define sdl-get-mod-state
  (foreign-procedure "SDL_GetModState" () int))

(define sdl-get-scancode-from-key
  (foreign-procedure "SDL_GetScancodeFromKey" (int) int))

(define sdl-get-scancode-from-name
  (foreign-procedure "SDL_GetScancodeFromName" (string) int))

(define sdl-get-scancode-name
  (foreign-procedure "SDL_GetScancodeName" (int) string))

(define _sdl-has-screen-keyboard-support?
  (foreign-procedure "SDL_HasScreenKeyboardSupport" () int))

(define (sdl-has-screen-keyboard-support?)
  (= 1 _sdl-has-screen-keyboard-support?))

(define _sdl-is-screen-keyboard-shown?
  (foreign-procedure "SDL_IsScreenKeyboardShown" (void*) int)) ; NOTE: change to sdl-c-window

(define (sdl-is-screen-keyboard-shown?)
  (= 1 _sdl-is-screen-keyboard-shown?))

(define _sdl-is-text-input-active?
  (foreign-procedure "SDL_IsTextInputActive" () int))

(define (sdl-is-text-input-active?)
  (= 1 _sdl-is-text-input-active?))

(define sdl-set-mod-state!
  (foreign-procedure "SDL_SetModState" (int) void))

(define _sdl-set-text-input-rect!
  (foreign-procedure "SDL_SetTextInputRect" ((* sdl-c-rect)) void))

;; TODO: sdl-set-text-input-rect!
(define (sdl-set-text-input-rect!)
  (error 'SDL-INPUT "not implemented" sdl-set-text-input-rect!))

(define sdl-start-text-input
  (foreign-procedure "SDL_StartTextInput" () void))

(define sdl-stop-text-input
  (foreign-procedure "SDL_StopTextInput" () void))
