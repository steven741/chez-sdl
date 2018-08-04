;;;; -*- mode: Scheme; -*-

;;;;
;;;;
;;;;

(define SDL-SYSTEM-CURSOR-ARROW     0)
(define SDL-SYSTEM-CURSOR-IBEAM     1)
(define SDL-SYSTEM-CURSOR-WAIT      2)
(define SDL-SYSTEM-CURSOR-CROSSHAIR 3)
(define SDL-SYSTEM-CURSOR-WAITARROW 4)
(define SDL-SYSTEM-CURSOR-SIZENWSE  5)
(define SDL-SYSTEM-CURSOR-SIZENESW  6)
(define SDL-SYSTEM-CURSOR-SIZEWE    7)
(define SDL-SYSTEM-CURSOR-SIZENS    8)
(define SDL-SYSTEM-CURSOR-SIZEALL   9)
(define SDL-SYSTEM-CURSOR-NO       10)
(define SDL-SYSTEM-CURSOR-HAND     11)


(define sdl-get-key-from-name
  (foreign-procedure "SDL_GetKeyFromName" (string) int))

(define sdl-get-key-from-scancode
  (foreign-procedure "SDL_GetKeyFromScancode" (int) int))

(define sdl-get-key-name
  (foreign-procedure "SDL_GetKeyName" (int) string))

(define sdl-get-keyboard-focus
  (foreign-procedure "SDL_GetKeyboardFocus" () (* sdl-c-window)))

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
  (foreign-procedure "SDL_IsScreenKeyboardShown" ((* sdl-c-window)) int))

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



(define _sdl-capture-mouse
  (foreign-procedure "SDL_CaptureMouse" (int) int))

(define (sdl-capture-mouse enable)
  (= 0 (_sdl-capture-mouse (if enable 1 0))))

(define sdl-create-color-cursor
  (foreign-procedure "SDL_CreateColorCursor" ((*sdl-c-surface) int int) void*))

(define sdl-create-system-cursor
  (foreign-procedure "SDL_CreateSystemCursor" (int) void*))

(define sdl-free-cursor
  (foreign-procedure "SDL_FreeCursor" (void*) void))

(define sdl-get-cursor
  (foreign-procedure "SDL_GetCursor" () void*))

(define sdl-show-cursor
  (foreign-procedure "SDL_ShowCursor" (int) int))

(define sdl-get-mouse-focus
  (foreign-procedure "SDL_GetMouseFocus" () (* sdl-c-window)))

(define sdl-get-default-cursor
  (foreign-procedure "SDL_GetDefaultCursor" () void*))

(define sdl-warp-mouse-in-window
  (foreign-procedure "SDL_WarpMouseInWindow" ((* sdl-c-window) int int) void))

(define sdl-warp-mouse-global
  (foreign-procedure "SDL_WarpMouseGlobal" (int int) int))

(define sdl-set-cursor!
  (foreign-procedure "SDL_SetCursor" (void*) void))

(define _sdl-set-relative-mouse-mode!
  (foreign-procedure "SDL_SetRelativeMouseMode" (int) int))

(define (sdl-set-relative-mouse-mode! enable)
  (= 0 (_sdl-set-relative-mouse-mode! (if enable 1 0))))

(define _sdl-get-relative-mouse-mode
  (foreign-procedure "SDL_GetRelativeMouseMode" () int))

(define (sdl-get-relative-mouse-mode)
  (= 1 (_sdl-get-relative-mouse-mode)))

;; TODO: CreateCursor,
;;       GetRelativeMouseState,
;;       GetGlobalMouseState,
;;       GetMouseState
