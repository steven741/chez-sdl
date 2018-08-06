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

(define-ftype sdl-c-cursor
  (struct
   [type unsigned-32]))

(define-ftype sdl-c-joystick
  (struct
   [type unsigned-32]))

(define-ftype sdl-c-game-controller
  (struct
   [type unsigned-32]))

(define-ftype sdl-c-finger
  (struct
   [id       integer-64]
   [x        float]
   [y        float]
   [pressure float]))

(define-record-type sdl-finger
  (fields id x y p))



;;;
;;;
;;;


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




;;;
;;;
;;;


(define _sdl-capture-mouse
  (foreign-procedure "SDL_CaptureMouse" (int) int))

(define (sdl-capture-mouse enable)
  (= 0 (_sdl-capture-mouse (if enable 1 0))))

(define sdl-create-color-cursor
  (foreign-procedure "SDL_CreateColorCursor" ((* sdl-c-surface) int int) (* sdl-c-cursor)))

(define sdl-create-system-cursor
  (foreign-procedure "SDL_CreateSystemCursor" (int) (* sdl-c-cursor)))

(define sdl-free-cursor
  (foreign-procedure "SDL_FreeCursor" ((* sdl-c-cursor)) void))

(define sdl-get-cursor
  (foreign-procedure "SDL_GetCursor" () (* sdl-c-cursor)))

(define sdl-show-cursor
  (foreign-procedure "SDL_ShowCursor" (int) int))

(define sdl-get-mouse-focus
  (foreign-procedure "SDL_GetMouseFocus" () (* sdl-c-window)))

(define sdl-get-default-cursor
  (foreign-procedure "SDL_GetDefaultCursor" () (* sdl-c-cursor)))

(define sdl-warp-mouse-in-window
  (foreign-procedure "SDL_WarpMouseInWindow" ((* sdl-c-window) int int) void))

(define sdl-warp-mouse-global
  (foreign-procedure "SDL_WarpMouseGlobal" (int int) int))

(define sdl-set-cursor!
  (foreign-procedure "SDL_SetCursor" ((* sdl-c-cursor)) void))

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


(define sdl-joystick-open
  (foreign-procedure "SDL_JoystickOpen" (int) (* sdl-c-joystick)))

(define sdl-joystick-close
  (foreign-procedure "SDL_JoystickClose" ((* sdl-c-joystick)) void))

(define sdl-joystick-num
  (foreign-procedure "SDL_NumJoysticks" () int))

(define _sdl-joystick-current-power-level
  (foreign-procedure "SDL_JoystickCurrentPowerLevel" ((* sdl-c-joystick)) int))

(define (sdl-joystick-current-power-level joystick)
  (let ((level (_sdl-joystick-current-power-level joystick)))
    (cond
     ((= level -1) 'SDL-JOYSTICK-POWER-UNKNOWN)
     ((= level  0) 'SDL-JOYSTICK-POWER-EMPTY)
     ((= level  1) 'SDL-JOYSTICK-POWER-LOW)
     ((= level  2) 'SDL-JOYSTICK-POWER-MEDIUM)
     ((= level  3) 'SDL-JOYSTICK-POWER-FULL)
     ((= level  4) 'SDL-JOYSTICK-POWER-WIRED)
     ((= level  5) 'SDL-JOYSTICK-POWER-MAX)
     (else '()))))

(define sdl-joystick-event-state
  (foreign-procedure "SDL_JoystickEventState" (int) int))

(define sdl-joystick-from-instance-id
  (foreign-procedure "SDL_JoystickFromInstanceID"
		     (integer-32)
		     (* sdl-c-joystick)))

(define _sdl-joystick-get-attached
  (foreign-procedure "SDL_JoystickGetAttached" ((* sdl-c-joystick)) int))

(define (sdl-joystick-get-attached joystick)
  (= 1 (_sdl-joystick-get-attached joystick)))

(define sdl-joystick-get-axis
  (foreign-procedure "SDL_JoystickGetAxis" ((* sdl-c-joystick) int) integer-16))

(define _sdl-joystick-get-ball
  (foreign-procedure "SDL_JoystickGetBall"
		     ((* sdl-c-joystick) int (* int) (* int))
		     int))

(define (sdl-joystick-get-ball joystick ball)
  (let* ((dx   (make-ftype-pointer int (foreign-alloc (ftype-sizeof int))))
	 (dy   (make-ftype-pointer int (foreign-alloc (ftype-sizeof int))))
	 (err  (_sdl-joystick-get-ball joystick ball dx dy))
	 (dpos (list dx dy)))
    ;; Release allocated memory
    (foreign-free (ftype-pointer-address dx))
    (foreign-free (ftype-pointer-address dy))
    (if (= err 0)
	dpos
	'())))

(define sdl-joystick-get-button
  (foreign-procedure "SDL_JoystickGetButton"
		     ((* sdl-c-joystick) int)
		     unsigned-8))

(define _sdl-joystick-get-hat
  (foreign-procedure "SDL_JoystickGetHat" ((* sdl-c-joystick) int) unsigned-8))

(define (sdl-joystick-get-hat joystick index)
  (define SDL_HAT_CENTERED    #x00)
  (define SDL_HAT_UP          #x01)
  (define SDL_HAT_RIGHT       #x02)
  (define SDL_HAT_DOWN        #x04)
  (define SDL_HAT_LEFT        #x08)
  (define SDL_HAT_RIGHTUP     (bitwise-ior SDL_HAT_RIGHT SDL_HAT_UP))
  (define SDL_HAT_RIGHTDOWN   (bitwise-ior SDL_HAT_RIGHT SDL_HAT_DOWN))
  (define SDL_HAT_LEFTUP      (bitwise-ior SDL_HAT_LEFT  SDL_HAT_UP))
  (define SDL_HAT_LEFTDOWN    (bitwise-ior SDL_HAT_LEFT  SDL_HAT_DOWN))
  (let ([pos (_sdl-joystick-get-hat joystick index)])
    (cond
     ((= pos SDL_HAT_CENTERED)  'SDL-HAT-CENTERED)
     ((= pos SDL_HAT_UP)        'SDL-HAT-UP)
     ((= pos SDL_HAT_RIGHT)     'SDL-HAT-RIGHT)
     ((= pos SDL_HAT_DOWN)      'SDL-HAT-DOWN)
     ((= pos SDL_HAT_LEFT)      'SDL-HAT-LEFT)
     ((= pos SDL_HAT_RIGHTUP)   'SDL-HAT-RIGHT-UP)
     ((= pos SDL_HAT_RIGHTDOWN) 'SDL-HAT-RIGHT-DOWN)
     ((= pos SDL_HAT_LEFTUP)    'SDL-HAT-LEFT-UP)
     ((= pos SDL_HAT_LEFTDOWN)  'SDL-HAT-LEFT-DOWN)
     (else '()))))

(define sdl-joystick-instance-id
  (foreign-procedure "SDL_JoystickInstanceID"
		     ((* sdl-c-joystick))
		     integer-32))

(define sdl-joystick-name
  (foreign-procedure "SDL_JoystickName" ((* sdl-c-joystick)) string))

(define sdl-joystick-name-for-index
  (foreign-procedure "SDL_JoystickNameForIndex" (int) string))

(define sdl-joystick-num-axes
  (foreign-procedure "SDL_JoystickNumAxes" ((* sdl-c-joystick)) int))

(define sdl-joystick-num-balls
  (foreign-procedure "SDL_JoystickNumBalls" ((* sdl-c-joystick)) int))

(define sdl-joystick-num-buttons
  (foreign-procedure "SDL_JoystickNumButtons" ((* sdl-c-joystick)) int))

(define sdl-joystick-num-hats
  (foreign-procedure "SDL_JoystickNumHats" ((* sdl-c-joystick)) int))


;; TODO: GUID function

;;;
;;;
;;;

(define sdl-joystick-id->sdl-controller
  (foreign-procedure "SDL_IsGameController"
		     (integer-32)
		     (* sdl-c-game-controller)))

(define _sdl-is-game-controller?
  (foreign-procedure "SDL_IsGameController" (int) int))

(define _sdl-game-controller-get-attached?
  (foreign-procedure "SDL_GameControllerGetAttached"
		     ((* sdl-c-game-controller))
		     int))

(define (sdl-game-controller-attached? controller)
  (= 1 (_sdl-game-controller-get-attached? controller)))

(define (sdl-game-controller? index)
  (= 1 (_sdl-is-game-controller? index)))

(define sdl-game-controller-open
  (foreign-procedure "SDL_GameControllerOpen" (int) (* sdl-c-game-controller)))

(define sdl-game-controller-close
  (foreign-procedure "SDL_GameControllerClose"
		     ((* sdl-c-game-controller))
		     void))

(define sdl-game-controller-name-for-index
  (foreign-procedure "SDL_GameControllerNameForIndex" (int) string))

(define sdl-game-controller-name
  (foreign-procedure "SDL_GameControllerName"
		     ((* sdl-c-game-controller))
		     string))

(define sdl-game-controller-mapping
  (foreign-procedure "SDL_GameControllerMapping"
		     ((* sdl-c-game-controller))
		     string))

(define _sdl-game-controller-get-string-for-button
  (foreign-procedure "SDL_GameControllerGetStringForButton" (int) string))

(define (sdl-button->string button)
  (cond ((eq? button 'SDL-CONTROLLER-BUTTON-A)
	 (_sdl-game-controller-get-string-for-button 0))
	((eq? button 'SDL-CONTROLLER-BUTTON-B)
	 (_sdl-game-controller-get-string-for-button 1))
	((eq? button 'SDL-CONTROLLER-BUTTON-X)
	 (_sdl-game-controller-get-string-for-button 2))
	((eq? button 'SDL-CONTROLLER-BUTTON-Y)
	 (_sdl-game-controller-get-string-for-button 3))
	((eq? button 'SDL-CONTROLLER-BUTTON-BACK)
	 (_sdl-game-controller-get-string-for-button 4))
	((eq? button 'SDL-CONTROLLER-BUTTON-GUIDE)
	 (_sdl-game-controller-get-string-for-button 5))
	((eq? button 'SDL-CONTROLLER-BUTTON-START)
	 (_sdl-game-controller-get-string-for-button 6))
	((eq? button 'SDL-CONTROLLER-BUTTON-LEFT-STICK)
	 (_sdl-game-controller-get-string-for-button 7))
	((eq? button 'SDL-CONTROLLER-BUTTON-RIGHT-STICK)
	 (_sdl-game-controller-get-string-for-button 8))
	((eq? button 'SDL-CONTROLLER-BUTTON-LEFT-SHOULDER)
	 (_sdl-game-controller-get-string-for-button 9))
	((eq? button 'SDL-CONTROLLER-BUTTON-RIGHT-SHOULDER)
	 (_sdl-game-controller-get-string-for-button 10))
	((eq? button 'SDL-CONTROLLER-BUTTON-UP)
	 (_sdl-game-controller-get-string-for-button 11))
	((eq? button 'SDL-CONTROLLER-BUTTON-DOWN)
	 (_sdl-game-controller-get-string-for-button 12))
	((eq? button 'SDL-CONTROLLER-BUTTON-LEFT)
	 (_sdl-game-controller-get-string-for-button 13))
	((eq? button 'SDL-CONTROLLER-BUTTON-RIGHT)
	 (_sdl-game-controller-get-string-for-button 14))
	(else '())))

(define _sdl-game-controller-get-string-for-axis
  (foreign-procedure "SDL_GameControllerGetStringForAxis" (int) string))

(define (sdl-axis->string axis)
  (cond ((eq? axis 'SDL-CONTROLLER-AXIS-LEFT-X)
	 (_sdl-game-controller-get-string-for-axis 0))
	((eq? axis 'SDL-CONTROLLER-AXIS-LEFT-Y)
	 (_sdl-game-controller-get-string-for-axis 1))
	((eq? axis 'SDL-CONTROLLER-AXIS-RIGHT-X)
	 (_sdl-game-controller-get-string-for-axis 2))
	((eq? axis 'SDL-CONTROLLER-AXIS-RIGHT-Y)
	 (_sdl-game-controller-get-string-for-axis 3))
	((eq? axis 'SDL-CONTROLLER-AXIS-TRIGGER-LEFT)
	 (_sdl-game-controller-get-string-for-axis 4))
	((eq? axis 'SDL-CONTROLLER-AXIS-TRIGGER-RIGHT)
	 (_sdl-game-controller-get-string-for-axis 5))
	(else '())))

(define _sdl-game-controller-get-axis-from-string
  (foreign-procedure "SDL_GameControllerGetAxisFromString" (string) int))

(define (string->sdl-axis pch)
  (let ((axis (_sdl-game-controller-get-axis-from-string pch)))
    (cond ((=  0 axis) 'SDL-CONTROLLER-AXIS-LEFT-X)
	  ((=  1 axis) 'SDL-CONTROLLER-AXIS-LEFT-Y)
	  ((=  2 axis) 'SDL-CONTROLLER-AXIS-RIGHT-X)
	  ((=  3 axis) 'SDL-CONTROLLER-AXIS-RIGHT-Y)
	  ((=  4 axis) 'SDL-CONTROLLER-AXIS-TRIGGER-LEFT)
	  ((=  5 axis) 'SDL-CONTROLLER-AXIS-TRIGGER-RIGHT)
	  (else '()))))

(define _sdl-game-controller-get-axis
  (foreign-procedure "SDL_GameControllerGetAxis"
		     ((* sdl-c-game-controller) int)
		     integer-16))

(define (sdl-game-controller-axis controller axis)
  (cond ((eq? axis 'SDL-CONTROLLER-AXIS-LEFT-X)
	 (_sdl-game-controller-get-axis controller 0))
	((eq? axis 'SDL-CONTROLLER-AXIS-LEFT-Y)
	 (_sdl-game-controller-get-axis controller 1))
	((eq? axis 'SDL-CONTROLLER-AXIS-RIGHT-X)
	 (_sdl-game-controller-get-axis controller 2))
	((eq? axis 'SDL-CONTROLLER-AXIS-RIGHT-Y)
	 (_sdl-game-controller-get-axis controller 3))
	((eq? axis 'SDL-CONTROLLER-AXIS-TRIGGER-LEFT)
	 (_sdl-game-controller-get-axis controller 4))
	((eq? axis 'SDL-CONTROLLER-AXIS-TRIGGER-RIGHT)
	 (_sdl-game-controller-get-axis controller 5))
	(else '())))

(define sdl-controller->sdl-joystick
  (foreign-procedure "SDL_GameControllerGetJoystick"
		     ((* sdl-c-game-controller))
		     (* sdl-c-joystick)))

(define _sdl-game-controller-get-button-from-string
  (foreign-procedure "SDL_GameControllerGetButtonFromString" (string) int))

(define (string->sdl-button pch)
  (let ((button (_sdl-game-controller-get-button-from-string pch)))
    (cond ((=  0 button) 'SDL-CONTROLLER-BUTTON-A)
	  ((=  1 button) 'SDL-CONTROLLER-BUTTON-B)
	  ((=  2 button) 'SDL-CONTROLLER-BUTTON-X)
	  ((=  3 button) 'SDL-CONTROLLER-BUTTON-Y)
	  ((=  4 button) 'SDL-CONTROLLER-BUTTON-BACK)
	  ((=  5 button) 'SDL-CONTROLLER-BUTTON-GUIDE)
	  ((=  6 button) 'SDL-CONTROLLER-BUTTON-START)
	  ((=  7 button) 'SDL-CONTROLLER-BUTTON-LEFT-STICK)
	  ((=  8 button) 'SDL-CONTROLLER-BUTTON-RIGHT-STICK)
	  ((=  9 button) 'SDL-CONTROLLER-BUTTON-LEFT-SHOULDER)
	  ((= 10 button) 'SDL-CONTROLLER-BUTTON-RIGHT-SHOULDER)
	  ((= 11 button) 'SDL-CONTROLLER-BUTTON-UP)
	  ((= 12 button) 'SDL-CONTROLLER-BUTTON-DOWN)
	  ((= 13 button) 'SDL-CONTROLLER-BUTTON-LEFT)
	  ((= 14 button) 'SDL-CONTROLLER-BUTTON-RIGHT)
	  (else '()))))

(define _sdl-game-controller-get-button?
  (foreign-procedure "SDL_GameControllerGetButton"
		     ((* sdl-c-game-controller) int)
		     unsigned-8))

(define (sdl-game-controller-button-pressed? controller button)
  (cond ((eq? button 'SDL-CONTROLLER-BUTTON-A)
	 (= 1 (_sdl-game-controller-get-button? controller 0)))
	((eq? button 'SDL-CONTROLLER-BUTTON-B)
	 (= 1 (_sdl-game-controller-get-button? controller 1)))
	((eq? button 'SDL-CONTROLLER-BUTTON-X)
         (= 1 (_sdl-game-controller-get-button? controller 2)))
	((eq? button 'SDL-CONTROLLER-BUTTON-Y)
	 (= 1 (_sdl-game-controller-get-button? controller 3)))
	((eq? button 'SDL-CONTROLLER-BUTTON-BACK)
	 (= 1 (_sdl-game-controller-get-button? controller 4)))
	((eq? button 'SDL-CONTROLLER-BUTTON-GUIDE)
	 (= 1 (_sdl-game-controller-get-button? controller 5)))
	((eq? button 'SDL-CONTROLLER-BUTTON-START)
	 (= 1 (_sdl-game-controller-get-button? controller 6)))
	((eq? button 'SDL-CONTROLLER-BUTTON-LEFT-STICK)
	 (= 1 (_sdl-game-controller-get-button? controller 7)))
	((eq? button 'SDL-CONTROLLER-BUTTON-RIGHT-STICK)
         (= 1 (_sdl-game-controller-get-button? controller 8)))
	((eq? button 'SDL-CONTROLLER-BUTTON-LEFT-SHOULDER)
	 (= 1 (_sdl-game-controller-get-button? controller 9)))
	((eq? button 'SDL-CONTROLLER-BUTTON-RIGHT-SHOULDER)
	 (= 1 (_sdl-game-controller-get-button? controller 10)))
	((eq? button 'SDL-CONTROLLER-BUTTON-UP)
         (= 1 (_sdl-game-controller-get-button? controller 11)))
	((eq? button 'SDL-CONTROLLER-BUTTON-DOWN)
         (= 1 (_sdl-game-controller-get-button? controller 12)))
	((eq? button 'SDL-CONTROLLER-BUTTON-LEFT)
	 (= 1 (_sdl-game-controller-get-button? controller 13)))
	((eq? button 'SDL-CONTROLLER-BUTTON-RIGHT)
	 (= 1 (_sdl-game-controller-get-button? controller 14)))
	(else '())))


;;; TODO mappingForGUID, getBind

;;;
;;;
;;;


(define sdl-get-num-touch-devices
  (foreign-procedure "SDL_GetNumTouchDevices" () int))

(define sdl-get-touch-device
  (foreign-procedure "SDL_GetTouchDevice" (int) integer-64))

(define sdl-get-num-touch-fingers
  (foreign-procedure "SDL_GetNumTouchFingers" (integer-64) int))

(define _sdl-get-touch-finger
  (foreign-procedure "SDL_GetTouchFinger" (integer-64 int) (* sdl-c-finger)))

(define (sdl-get-touch-finger touch-id index)
  (let ((finger (_sdl-get-touch-finger touch-id index)))
    (make-sdl-finger (ftype-ref sdl-c-finger (id)       finger)
		     (ftype-ref sdl-c-finger (x)        finger)
		     (ftype-ref sdl-c-finger (y)        finger)
		     (ftype-ref sdl-c-finger (pressure) finger))))
