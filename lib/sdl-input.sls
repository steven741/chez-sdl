;;;; -*- mode: Scheme; -*-

;;;;;;;;;;;;;;;;;;;;;;
;;; Scheme Records ;;;
;;;;;;;;;;;;;;;;;;;;;;

(define-record-type sdl-finger
  (fields id x y p))

;;;;;;;;;;;;;;;;;;;
;;; Marshalling ;;;
;;;;;;;;;;;;;;;;;;;

(define sdl-get-key-from-name     SDL_GetKeyFromName)
(define sdl-get-key-from-scancode SDL_GetKeyFromScancode)
(define sdl-get-key-name          SDL_GetKeyFromName)
(define sdl-get-keyboard-focus    SDL_GetKeyboardFocus)

(define (sdl-get-keyboard-state)
  (let
      ((keys (SDL_GetKeyboardState 0)))
    (lambda (key)
      (= 1 (ftype-ref unsigned-8 () keys key)))))

(define sdl-get-mod-state          SDL_GetModState)
(define sdl-get-scancode-from-key  SDL_GetScancodeFromKey)
(define sdl-get-scancode-from-name SDL_GetScancodeFromName)
(define sdl-get-scancode-name      SDL_GetScancodeName)

(define (sdl-has-screen-keyboard-support?)
  (= 1 (SDL_HasScreenKeyboardSupport)))

(define (sdl-screen-keyboard-shown? window)
  (= 1 (SDL_IsScreenKeyboardShown window)))

(define (sdl-text-input-active?)
  (= 1 (SDL_IsTextInputActive)))

(define (sdl-set-mod-state! first-modifier . other-modifier)
  (SDL_SetModState (fold-left bitwise-ior first-modifier other-modifier)))

(define (sdl-set-text-input-rect! sdl-rect)
  (with-c-rect sdl-rect SDL_SetTextInputRect))

(define sdl-start-text-input SDL_StartTextInput)
(define sdl-stop-text-input  SDL_StopTextInput)


(define sdl-capture-mouse            SDL_CaptureMouse)
(define sdl-create-color-cursor      SDL_CreateColorCursor)
(define sdl-create-system-cursor     SDL_CreateSystemCursor)
(define sdl-free-cursor              SDL_FreeCursor)
(define sdl-get-cursor               SDL_GetCursor)
(define sdl-show-cursor              SDL_ShowCursor)
(define sdl-get-mouse-focus          SDL_GetMouseFocus)
(define sdl-get-default-cursor       SDL_GetDefaultCursor)
(define sdl-warp-mouse-in-window     SDL_WarpMouseInWindow)
(define sdl-warp-mouse-global        SDL_WarpMouseGlobal)
(define sdl-set-cursor!              SDL_SetCursor)
(define sdl-set-relative-mouse-mode! SDL_GetRelativeMouseMode)
(define sdl-get-relative-mouse-mode  SDL_SetRelativeMouseMode)






(define sdl-joystick-open  SDL_JoystickOpen)
(define sdl-joystick-close SDL_JoystickClose)
(define sdl-joystick-num   SDL_NumJoysticks)

(define (sdl-joystick-current-power-level joystick)
  (let ((level (SDL_JoystickCurrentPowerLevel joystick)))
    (cond
     ((= level -1) 'SDL-JOYSTICK-POWER-UNKNOWN)
     ((= level  0) 'SDL-JOYSTICK-POWER-EMPTY)
     ((= level  1) 'SDL-JOYSTICK-POWER-LOW)
     ((= level  2) 'SDL-JOYSTICK-POWER-MEDIUM)
     ((= level  3) 'SDL-JOYSTICK-POWER-FULL)
     ((= level  4) 'SDL-JOYSTICK-POWER-WIRED)
     ((= level  5) 'SDL-JOYSTICK-POWER-MAX)
     (else
      (error 'SDL-JOYSTICK-CURRENT-POWER-LEVEL "Unknown level" level)))))

(define sdl-joystick-event-state
  (foreign-procedure "SDL_JoystickEventState" (int) int))

(define sdl-joystick-from-instance-id
  (foreign-procedure "SDL_JoystickFromInstanceID"
		     (integer-32)
		     (* SDL_Joystick)))

(define _sdl-joystick-is-attached?
  (foreign-procedure "SDL_JoystickGetAttached" ((* SDL_Joystick)) int))

(define (sdl-joystick-is-attached? joystick)
  (= 1 (_sdl-joystick-is-attached? joystick)))

(define sdl-joystick-get-axis
  (foreign-procedure "SDL_JoystickGetAxis" ((* SDL_Joystick) int) integer-16))

(define _sdl-joystick-get-ball
  (foreign-procedure "SDL_JoystickGetBall"
		     ((* SDL_Joystick) int (* int) (* int))
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

(define sdl-joystick-is-button-pressed?
  (lambda (joystick button)
    (let
	((func (foreign-procedure "SDL_JoystickGetButton"
				  ((* SDL_Joystick) int)
				  unsigned-8)))
      (= 1 (func joystick button)))))

(define _sdl-joystick-get-hat
  (foreign-procedure "SDL_JoystickGetHat" ((* SDL_Joystick) int) unsigned-8))

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
  (let ((pos (_sdl-joystick-get-hat joystick index)))
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
		     ((* SDL_Joystick))
		     integer-32))

(define sdl-joystick-name
  (foreign-procedure "SDL_JoystickName" ((* SDL_Joystick)) string))

(define sdl-joystick-name-for-index
  (foreign-procedure "SDL_JoystickNameForIndex" (int) string))

(define sdl-joystick-num-axes
  (foreign-procedure "SDL_JoystickNumAxes" ((* SDL_Joystick)) int))

(define sdl-joystick-num-balls
  (foreign-procedure "SDL_JoystickNumBalls" ((* SDL_Joystick)) int))

(define sdl-joystick-num-buttons
  (foreign-procedure "SDL_JoystickNumButtons" ((* SDL_Joystick)) int))

(define sdl-joystick-num-hats
  (foreign-procedure "SDL_JoystickNumHats" ((* SDL_Joystick)) int))












(define sdl-joystick-id->sdl-controller
  (foreign-procedure "SDL_GameControllerFromInstanceID"
		     (integer-32)
		     (* SDL_GameController)))

(define (sdl-game-controller-attached? controller)
  (let
      ((func (foreign-procedure "SDL_GameControllerGetAttached"
				((* SDL_GameController))
				int)))
    (= 1 (func controller))))

(define (sdl-game-controller? index)
  (let
      ((func (foreign-procedure "SDL_IsGameController" (int) int)))
    (= 1 (func index))))

(define sdl-game-controller-open
  (foreign-procedure "SDL_GameControllerOpen" (int) (* SDL_GameController)))

(define sdl-game-controller-update
  (lambda ()
    ((foreign-procedure "SDL_GameControllerUpdate" () void))
    '()))

(define sdl-game-controller-close
  (foreign-procedure "SDL_GameControllerClose"
		     ((* SDL_GameController))
		     void))

(define sdl-game-controller-name-for-index
  (foreign-procedure "SDL_GameControllerNameForIndex" (int) string))

(define sdl-game-controller-name
  (foreign-procedure "SDL_GameControllerName"
		     ((* SDL_GameController))
		     string))

(define sdl-game-controller-mapping
  (foreign-procedure "SDL_GameControllerMapping"
		     ((* SDL_GameController))
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
    (cond ((= 0 axis) 'SDL-CONTROLLER-AXIS-LEFT-X)
	  ((= 1 axis) 'SDL-CONTROLLER-AXIS-LEFT-Y)
	  ((= 2 axis) 'SDL-CONTROLLER-AXIS-RIGHT-X)
	  ((= 3 axis) 'SDL-CONTROLLER-AXIS-RIGHT-Y)
	  ((= 4 axis) 'SDL-CONTROLLER-AXIS-TRIGGER-LEFT)
	  ((= 5 axis) 'SDL-CONTROLLER-AXIS-TRIGGER-RIGHT)
	  (else
	   'SDL-CONTROLLER-AXIS-INVALID))))

(define _sdl-game-controller-get-axis
  (foreign-procedure "SDL_GameControllerGetAxis"
		     ((* SDL_GameController) int)
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
	(else
	 (error 'SDL-GAME-CONTROLLER-BUTTON-AXIS
		"Invalid symbol"
		axis))))

(define sdl-controller->sdl-joystick
  (foreign-procedure "SDL_GameControllerGetJoystick"
		     ((* SDL_GameController))
		     (* SDL_Joystick)))

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
	  (else
	   'SDL-CONTROLLER-BUTTON-INVALID))))

(define _sdl-game-controller-get-button?
  (foreign-procedure "SDL_GameControllerGetButton"
		     ((* SDL_GameController) int)
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
	(else
	 (error 'SDL-GAME-CONTROLLER-BUTTON-PRESSED?
		"Invalid symbol"
		button))))







(define sdl-get-num-touch-devices
  (foreign-procedure "SDL_GetNumTouchDevices" () int))

(define sdl-get-touch-device
  (foreign-procedure "SDL_GetTouchDevice" (int) integer-64))

(define sdl-get-num-touch-fingers
  (foreign-procedure "SDL_GetNumTouchFingers" (integer-64) int))

(define _sdl-get-touch-finger
  (foreign-procedure "SDL_GetTouchFinger" (integer-64 int) (* SDL_Finger)))

(define (sdl-get-touch-finger touch-id index)
  (let ((finger (_sdl-get-touch-finger touch-id index)))
    (make-sdl-finger (ftype-ref SDL_Finger (id)       finger)
		     (ftype-ref SDL_Finger (x)        finger)
		     (ftype-ref SDL_Finger (y)        finger)
		     (ftype-ref SDL_Finger (pressure) finger))))
