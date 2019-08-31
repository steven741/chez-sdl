;;;; -*- mode: Scheme; -*-

(define-record-type sdl-finger
  (fields id x y p))



(define sdl-get-key-from-name     SDL_GetKeyFromName)
(define sdl-get-key-from-scancode SDL_GetKeyFromScancode)
(define sdl-get-key-name          SDL_GetKeyName)
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

(define (sdl-set-text-input-rect! rect)
  (let ((frect (if (sdl-rect? rect)
		   (sdl-rect->ftype rect)
		   (make-ftype-pointer SDL_Rect 0))))
    (SDL_SetTextInputRect frect)
    (if (sdl-rect? rect) (foreign-free (ftype-pointer-address frect)))))

(define sdl-start-text-input SDL_StartTextInput)
(define sdl-stop-text-input  SDL_StopTextInput)



(define sdl-capture-mouse            SDL_CaptureMouse)
(define sdl-create-color-cursor      SDL_CreateColorCursor)
(define sdl-create-system-cursor     SDL_CreateSystemCursor)
(define sdl-free-cursor              SDL_FreeCursor)
(define sdl-get-cursor               SDL_GetCursor)
(define sdl-get-default-cursor       SDL_GetDefaultCursor)
(define sdl-show-cursor              SDL_ShowCursor)
(define sdl-get-mouse-focus          SDL_GetMouseFocus)
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

(define sdl-joystick-event-state SDL_JoystickEventState)

(define sdl-joystick-from-instance-id SDL_JoystickFromInstanceID)

(define (sdl-joystick-is-attached? joystick)
  (= 1 (SDL_JoystickGetAttached joystick)))

(define sdl-joystick-get-axis SDL_JoystickGetAxis)

(define (sdl-joystick-get-ball joystick ball)
  (let* ((dx   (make-ftype-pointer int (foreign-alloc (ftype-sizeof int))))
	 (dy   (make-ftype-pointer int (foreign-alloc (ftype-sizeof int))))
	 (err  (SDL_JoystickGetBall joystick ball dx dy))
	 (dpos (list dx dy)))
    ;; Release allocated memory
    (foreign-free (ftype-pointer-address dx))
    (foreign-free (ftype-pointer-address dy))
    (if (= err 0)
	dpos
	'())))

(define sdl-joystick-is-button-pressed?
  (lambda (joystick button)
    (= 1 (SDL_JoystickGetButton joystick button))))

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
  (let ((pos (SDL_JoystickGetHat joystick index)))
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

(define sdl-joystick-instance-id SDL_JoystickInstanceID)
(define sdl-joystick-name SDL_JoystickName)
(define sdl-joystick-name-for-index SDL_JoystickNameForIndex)
(define sdl-joystick-num-axes SDL_JoystickNumAxes)
(define sdl-joystick-num-balls SDL_JoystickNumBalls)
(define sdl-joystick-num-buttons SDL_JoystickNumButtons)
(define sdl-joystick-num-hats SDL_JoystickNumHats)



(define sdl-joystick-id->sdl-controller SDL_GameControllerFromInstanceID)

(define (sdl-game-controller-attached? controller)
  (= 1 (SDL_GameControllerGetAttached controller)))

(define (sdl-game-controller? index)
  (= 1 (SDL_IsGameController index)))

(define sdl-game-controller-open SDL_GameControllerOpen)
(define sdl-game-controller-update SDL_GameControllerUpdate)
(define sdl-game-controller-close SDL_GameControllerClose)
(define sdl-game-controller-name-for-index SDL_GameControllerNameForIndex)
(define sdl-game-controller-name SDL_GameControllerName)
(define sdl-game-controller-mapping SDL_GameControllerMapping)

(define (sdl-button->string button)
  (cond ((eq? button 'SDL-CONTROLLER-BUTTON-A)
	 (SDL_GameControllerGetStringForButton 0))
	((eq? button 'SDL-CONTROLLER-BUTTON-B)
	 (SDL_GameControllerGetStringForButton 1))
	((eq? button 'SDL-CONTROLLER-BUTTON-X)
	 (SDL_GameControllerGetStringForButton 2))
	((eq? button 'SDL-CONTROLLER-BUTTON-Y)
	 (SDL_GameControllerGetStringForButton 3))
	((eq? button 'SDL-CONTROLLER-BUTTON-BACK)
	 (SDL_GameControllerGetStringForButton 4))
	((eq? button 'SDL-CONTROLLER-BUTTON-GUIDE)
	 (SDL_GameControllerGetStringForButton 5))
	((eq? button 'SDL-CONTROLLER-BUTTON-START)
	 (SDL_GameControllerGetStringForButton 6))
	((eq? button 'SDL-CONTROLLER-BUTTON-LEFT-STICK)
	 (SDL_GameControllerGetStringForButton 7))
	((eq? button 'SDL-CONTROLLER-BUTTON-RIGHT-STICK)
	 (SDL_GameControllerGetStringForButton 8))
	((eq? button 'SDL-CONTROLLER-BUTTON-LEFT-SHOULDER)
	 (SDL_GameControllerGetStringForButton 9))
	((eq? button 'SDL-CONTROLLER-BUTTON-RIGHT-SHOULDER)
	 (SDL_GameControllerGetStringForButton 10))
	((eq? button 'SDL-CONTROLLER-BUTTON-UP)
	 (SDL_GameControllerGetStringForButton 11))
	((eq? button 'SDL-CONTROLLER-BUTTON-DOWN)
	 (SDL_GameControllerGetStringForButton 12))
	((eq? button 'SDL-CONTROLLER-BUTTON-LEFT)
	 (SDL_GameControllerGetStringForButton 13))
	((eq? button 'SDL-CONTROLLER-BUTTON-RIGHT)
	 (SDL_GameControllerGetStringForButton 14))
	(else '())))

(define (sdl-axis->string axis)
  (cond ((eq? axis 'SDL-CONTROLLER-AXIS-LEFT-X)
	 (SDL_GameControllerGetStringForAxis 0))
	((eq? axis 'SDL-CONTROLLER-AXIS-LEFT-Y)
	 (SDL_GameControllerGetStringForAxis 1))
	((eq? axis 'SDL-CONTROLLER-AXIS-RIGHT-X)
	 (SDL_GameControllerGetStringForAxis 2))
	((eq? axis 'SDL-CONTROLLER-AXIS-RIGHT-Y)
	 (SDL_GameControllerGetStringForAxis 3))
	((eq? axis 'SDL-CONTROLLER-AXIS-TRIGGER-LEFT)
	 (SDL_GameControllerGetStringForAxis 4))
	((eq? axis 'SDL-CONTROLLER-AXIS-TRIGGER-RIGHT)
	 (SDL_GameControllerGetStringForAxis 5))
	(else '())))

(define (string->sdl-axis pch)
  (let ((axis (SDL_GameControllerGetAxisFromString pch)))
    (cond ((= 0 axis) 'SDL-CONTROLLER-AXIS-LEFT-X)
	  ((= 1 axis) 'SDL-CONTROLLER-AXIS-LEFT-Y)
	  ((= 2 axis) 'SDL-CONTROLLER-AXIS-RIGHT-X)
	  ((= 3 axis) 'SDL-CONTROLLER-AXIS-RIGHT-Y)
	  ((= 4 axis) 'SDL-CONTROLLER-AXIS-TRIGGER-LEFT)
	  ((= 5 axis) 'SDL-CONTROLLER-AXIS-TRIGGER-RIGHT)
	  (else
	   'SDL-CONTROLLER-AXIS-INVALID))))

(define (sdl-game-controller-axis controller axis)
  (cond ((eq? axis 'SDL-CONTROLLER-AXIS-LEFT-X)
	 (SDL_GameControllerGetAxis controller 0))
	((eq? axis 'SDL-CONTROLLER-AXIS-LEFT-Y)
	 (SDL_GameControllerGetAxis controller 1))
	((eq? axis 'SDL-CONTROLLER-AXIS-RIGHT-X)
	 (SDL_GameControllerGetAxis controller 2))
	((eq? axis 'SDL-CONTROLLER-AXIS-RIGHT-Y)
	 (SDL_GameControllerGetAxis controller 3))
	((eq? axis 'SDL-CONTROLLER-AXIS-TRIGGER-LEFT)
	 (SDL_GameControllerGetAxis controller 4))
	((eq? axis 'SDL-CONTROLLER-AXIS-TRIGGER-RIGHT)
	 (SDL_GameControllerGetAxis controller 5))
	(else
	 (error 'SDL-GAME-CONTROLLER-AXIS
		"Invalid symbol"
		axis))))

(define sdl-controller->sdl-joystick SDL_GameControllerGetJoystick)

(define (string->sdl-button pch)
  (let ((button (SDL_GameControllerGetButtonFromString pch)))
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

(define (sdl-game-controller-button-pressed? controller button)
  (cond ((eq? button 'SDL-CONTROLLER-BUTTON-A)
	 (= 1 (SDL_GameControllerGetButton controller 0)))
	((eq? button 'SDL-CONTROLLER-BUTTON-B)
	 (= 1 (SDL_GameControllerGetButton controller 1)))
	((eq? button 'SDL-CONTROLLER-BUTTON-X)
         (= 1 (SDL_GameControllerGetButton controller 2)))
	((eq? button 'SDL-CONTROLLER-BUTTON-Y)
	 (= 1 (SDL_GameControllerGetButton controller 3)))
	((eq? button 'SDL-CONTROLLER-BUTTON-BACK)
	 (= 1 (SDL_GameControllerGetButton controller 4)))
	((eq? button 'SDL-CONTROLLER-BUTTON-GUIDE)
	 (= 1 (SDL_GameControllerGetButton controller 5)))
	((eq? button 'SDL-CONTROLLER-BUTTON-START)
	 (= 1 (SDL_GameControllerGetButton controller 6)))
	((eq? button 'SDL-CONTROLLER-BUTTON-LEFT-STICK)
	 (= 1 (SDL_GameControllerGetButton controller 7)))
	((eq? button 'SDL-CONTROLLER-BUTTON-RIGHT-STICK)
         (= 1 (SDL_GameControllerGetButton controller 8)))
	((eq? button 'SDL-CONTROLLER-BUTTON-LEFT-SHOULDER)
	 (= 1 (SDL_GameControllerGetButton controller 9)))
	((eq? button 'SDL-CONTROLLER-BUTTON-RIGHT-SHOULDER)
	 (= 1 (SDL_GameControllerGetButton controller 10)))
	((eq? button 'SDL-CONTROLLER-BUTTON-UP)
         (= 1 (SDL_GameControllerGetButton controller 11)))
	((eq? button 'SDL-CONTROLLER-BUTTON-DOWN)
         (= 1 (SDL_GameControllerGetButton controller 12)))
	((eq? button 'SDL-CONTROLLER-BUTTON-LEFT)
	 (= 1 (SDL_GameControllerGetButton controller 13)))
	((eq? button 'SDL-CONTROLLER-BUTTON-RIGHT)
	 (= 1 (SDL_GameControllerGetButton controller 14)))
	(else
	 (error 'SDL-GAME-CONTROLLER-BUTTON-PRESSED?
		"Invalid symbol"
		button))))



(define sdl-get-num-touch-devices SDL_GetNumTouchDevices)
(define sdl-get-touch-device SDL_GetTouchDevice)
(define sdl-get-num-touch-fingers SDL_GetNumTouchFingers)

(define (sdl-get-touch-finger touch-id index)
  (let ((finger (SDL_GetTouchFinger touch-id index)))
    (make-sdl-finger (ftype-ref SDL_Finger (id)       finger)
		     (ftype-ref SDL_Finger (x)        finger)
		     (ftype-ref SDL_Finger (y)        finger)
		     (ftype-ref SDL_Finger (pressure) finger))))
