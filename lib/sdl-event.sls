;;;; -*- mode: Scheme; -*-

(define *event-obj*)

(define *sdl-event-none?* #t)
(define (sdl-event-none?) *sdl-event-none?*)

(define (sdl-poll-event)
  (if (= 0 (SDL_PollEvent *event-obj*))
      (set! *sdl-event-none?* #t)
      (set! *sdl-event-none?* #f)))

(define (sdl-button x)     (bitwise-arithmetic-shift-right 1 (- x 1)))
(define sdl-button-left    1)
(define sdl-button-middle  2)
(define sdl-button-right   3)
(define sdl-button-x1      4)
(define sdl-button-x2      5)
(define sdl-button-l-mask  (sdl-button sdl-button-left))
(define sdl-button-m-mask  (sdl-button sdl-button-middle))
(define sdl-button-r-mask  (sdl-button sdl-button-right))
(define sdl-button-x1-mask (sdl-button sdl-button-x1))
(define sdl-button-x2-mask (sdl-button sdl-button-x2))

(define (sdl-event-timestamp)
  (ftype-ref SDL_UserEvent (timestamp) *event-obj*))

(define (sdl-event-quit?)
  (= SDL-QUIT-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-clipboard?)
  (= SDL-CLIPBOARDUPDATE-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-terminating?)
  (= SDL-APP-TERMINATING-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-low-memory?)
  (= SDL-APP-LOWMEMORY-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-will-enter-background?)
  (= SDL-APP-WILLENTERBACKGROUND-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-did-enter-background?)
  (= SDL-APP-DIDENTERBACKGROUND-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-will-enter-foreground?)
  (= SDL-APP-WILLENTERFOREGROUND-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-did-enter-foreground?)
  (= SDL-APP-DIDENTERFOREGROUND-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-render-target-reset?)
  (= SDL-RENDER-TARGETS-RESET-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-render-device-reset?)
  (= SDL-RENDER-DEVICE-RESET-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-window?)
  (= SDL-WINDOWEVENT-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-syswm?)
  (= SDL-SYSWMEVENT-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-keyup?)
  (= SDL-KEYUP-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-keydown?)
  (= SDL-KEYDOWN-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-text-editing?)
  (= SDL-TEXTEDITING-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-text-input?)
  (= SDL-TEXTINPUT-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-keymap-changed?)
  (= SDL-KEYMAPCHANGED-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-mouse-motion?)
  (= SDL-MOUSEMOTION-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-mouse-button-down?)
  (= SDL-MOUSEBUTTONDOWN-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-mouse-button-up?)
  (= SDL-MOUSEBUTTONUP-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-mouse-wheel?)
  (= SDL-MOUSEWHEEL-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-joy-dev-added?)
  (= SDL-JOYDEVICEADDED-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-joy-dev-removed?)
  (= SDL-JOYDEVICEREMOVED-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-joy-button-up?)
  (= SDL-JOYBUTTONUP-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-joy-button-down?)
  (= SDL-JOYBUTTONDOWN-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-joy-axis?)
  (= SDL-JOYAXISMOTION-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-joy-ball?)
  (= SDL-JOYBALLMOTION-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-joy-hat?)
  (= SDL-JOYHATMOTION-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-con-dev-added?)
  (= SDL-CONTROLLERDEVICEADDED-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-con-dev-removed?)
  (= SDL-CONTROLLERDEVICEREMOVED-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-con-dev-remapped?)
  (= SDL-CONTROLLERDEVICEREMAPPED-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-con-axis?)
  (= SDL-CONTROLLERAXISMOTION-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-con-button-up?)
  (= SDL-CONTROLLERBUTTONUP-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-con-button-down?)
  (= SDL-CONTROLLERBUTTONDOWN-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-audio-device-added?)
  (= SDL-AUDIODEVICEADDED-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-audio-device-removed?)
  (= SDL-AUDIODEVICEREMOVED-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-finger-down?)
  (= SDL-FINGERDOWN-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-finger-up?)
  (= SDL-FINGERUP-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-finger-motion?)
  (= SDL-FINGERMOTION-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-dollar-gesture?)
  (= SDL-DOLLARGESTURE-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-dollar-record?)
  (= SDL-DOLLARRECORD-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-multi-gesture?)
  (= SDL-MULTIGESTURE-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-drop-file?)
  (= SDL-DROPFILE-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-drop-text?)
  (= SDL-DROPTEXT-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-drop-begin?)
  (= SDL-DROPBEGIN-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-drop-complete?)
  (= SDL-DROPCOMPLETE-E
     (ftype-ref SDL_Event (type) *event-obj*)))

(define (sdl-event-win-shown?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-SHOWN
	  (ftype-ref SDL_WindowEvent (event)
		     (ftype-&ref SDL_Event (window) *event-obj*)))))

(define (sdl-event-win-hidden?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-HIDDEN
	  (ftype-ref SDL_WindowEvent (event)
		     (ftype-&ref SDL_Event (window) *event-obj*)))))

(define (sdl-event-win-exposed?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-EXPOSED
	  (ftype-ref SDL_WindowEvent (event)
		     (ftype-&ref SDL_Event (window) *event-obj*)))))

(define (sdl-event-win-moved?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-MOVED
	  (ftype-ref SDL_WindowEvent (event)
		     (ftype-&ref SDL_Event (window) *event-obj*)))))

(define (sdl-event-win-resized?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-RESIZED
	  (ftype-ref SDL_WindowEvent (event)
		     (ftype-&ref SDL_Event (window) *event-obj*)))))

(define (sdl-event-win-size-changed?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-SIZE-CHANGED
	  (ftype-ref SDL_WindowEvent (event)
		     (ftype-&ref SDL_Event (window) *event-obj*)))))

(define (sdl-event-win-minimized?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-MINIMIZED
	  (ftype-ref SDL_WindowEvent (event)
		     (ftype-&ref SDL_Event (window) *event-obj*)))))

(define (sdl-event-win-maximized?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-MAXIMIZED
	  (ftype-ref SDL_WindowEvent (event)
		     (ftype-&ref SDL_Event (window) *event-obj*)))))

(define (sdl-event-win-restored?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-RESTORED
	  (ftype-ref SDL_WindowEvent (event)
		     (ftype-&ref SDL_Event (window) *event-obj*)))))

(define (sdl-event-win-enter?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-ENTER
	  (ftype-ref SDL_WindowEvent (event)
		     (ftype-&ref SDL_Event (window) *event-obj*)))))

(define (sdl-event-win-leave?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-LEAVE
	  (ftype-ref SDL_WindowEvent (event)
		     (ftype-&ref SDL_Event (window) *event-obj*)))))

(define (sdl-event-win-focus-gained?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-FOCUS-GAINED
	  (ftype-ref SDL_WindowEvent (event)
		     (ftype-&ref SDL_Event (window) *event-obj*)))))

(define (sdl-event-win-focus-lost?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-FOCUS-LOST
	  (ftype-ref SDL_WindowEvent (event)
		     (ftype-&ref SDL_Event (window) *event-obj*)))))

(define (sdl-event-win-close?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-CLOSE
	  (ftype-ref SDL_WindowEvent (event)
		     (ftype-&ref SDL_Event (window) *event-obj*)))))

(define (sdl-event-win-take-focus?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-TAKE-FOCUS
	  (ftype-ref SDL_WindowEvent (event)
		     (ftype-&ref SDL_Event (window) *event-obj*)))))

(define (sdl-event-win-hit-test?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-HIT-TEST
	  (ftype-ref SDL_WindowEvent (event)
		     (ftype-&ref SDL_Event (window) *event-obj*)))))

(define (sdl-event-win-id)
  (ftype-ref SDL_WindowEvent (windowID)
	     (ftype-&ref SDL_Event (window) *event-obj*)))

(define (sdl-event-win-x)
  (ftype-ref SDL_WindowEvent (data1)
	     (ftype-&ref SDL_Event (window) *event-obj*)))

(define (sdl-event-win-y)
  (ftype-ref SDL_WindowEvent (data2)
	     (ftype-&ref SDL_Event (window) *event-obj*)))

(define (sdl-event-win-w)
  (ftype-ref SDL_WindowEvent (data1)
	     (ftype-&ref SDL_Event (window) *event-obj*)))

(define (sdl-event-win-h)
  (ftype-ref SDL_WindowEvent (data2)
	     (ftype-&ref SDL_Event (window) *event-obj*)))

(define (sdl-event-key-repeat?)
  (and (or (sdl-event-keyup?)
	   (sdl-event-keydown?))
       (not (= 0 (ftype-ref SDL_KeyboardEvent (repeat)
			    (ftype-&ref SDL_Event (key) *event-obj*))))))

(define (sdl-event-key-up? key)
  (and (sdl-event-keyup?)
       (= key
	  (ftype-ref SDL_Keysym (sym)
		     (ftype-&ref SDL_KeyboardEvent (keysym)
				 (ftype-&ref SDL_Event (key) *event-obj*))))))

(define (sdl-event-key-down? key)
  (and (sdl-event-keydown?)
       (= key
	  (ftype-ref SDL_Keysym (sym)
		     (ftype-&ref SDL_KeyboardEvent (keysym)
				 (ftype-&ref SDL_Event (key) *event-obj*))))))

(define (sdl-event-code-up? code)
  (and (sdl-event-keyup?)
       (= code
	  (ftype-ref SDL_Keysym (scancode)
		     (ftype-&ref SDL_KeyboardEvent (keysym)
				 (ftype-&ref SDL_Event (key) *event-obj*))))))

(define (sdl-event-code-down? code)
  (and (sdl-event-keydown?)
       (= code
	  (ftype-ref SDL_Keysym (scancode)
		     (ftype-&ref SDL_KeyboardEvent (keysym)
				 (ftype-&ref SDL_Event (key) *event-obj*))))))

(define (sdl-event-mod-up? mod)
  (and (sdl-event-keyup?)
       (= mod
	  (ftype-ref SDL_Keysym (mod)
		     (ftype-&ref SDL_KeyboardEvent (keysym)
				 (ftype-&ref SDL_Event (key) *event-obj*))))))

(define (sdl-event-mod-down? mod)
  (and (sdl-event-keydown?)
       (= mod
	  (ftype-ref SDL_Keysym (mod)
		     (ftype-&ref SDL_KeyboardEvent (keysym)
				 (ftype-&ref SDL_Event (key) *event-obj*))))))

(define (sdl-event-text-editing-text)
  (error 'SDL "not implemented" sdl-event-text-editing-text))
  ;; (if (sdl-event-text-editing?)
  ;;     (foreign-ref
  ;;      string
  ;;      (+ (ftype-ref sdl-c-text-editing-event (start)
  ;; 		     (ftype-&ref SDL_Event (edit) *event-obj*))
  ;; 	  (ftype-&ref sdl-c-text-editing-event (text)
  ;; 		      (ftype-&ref SDL_Event (edit) *event-obj*)))
  ;;      (ftype-ref sdl-c-text-editing-event (length)
  ;; 		   (ftype-&ref SDL_Event (edit) *event-obj*)))
  ;;     '()))

(define (sdl-event-text-input-text)
  (define (loop x)
    (let ((c (ftype-ref char ()
			(ftype-&ref SDL_TextInputEvent (text)
				    (ftype-&ref SDL_Event (text) *event-obj*)) x)))

      (if (char=? c #\nul)
	  '()
	  (cons c (loop (+ x 1))))))
  (if (sdl-event-text-input?)
      (loop 0)
      '()))

(define (sdl-event-mouse-motion-which)
  (if (sdl-event-mouse-motion?)
      (ftype-ref SDL_MouseMotionEvent (which)
		 (ftype-&ref SDL_Event (motion) *event-obj*))
      '()))

(define (sdl-event-mouse-motion-x)
  (if (sdl-event-mouse-motion?)
      (ftype-ref SDL_MouseMotionEvent (x)
		 (ftype-&ref SDL_Event (motion) *event-obj*))
      '()))

(define (sdl-event-mouse-motion-y)
  (if (sdl-event-mouse-motion?)
      (ftype-ref SDL_MouseMotionEvent (y)
		 (ftype-&ref SDL_Event (motion) *event-obj*))
      '()))

(define (sdl-event-mouse-motion-x-rel)
  (if (sdl-event-mouse-motion?)
      (ftype-ref SDL_MouseMotionEvent (xrel)
		 (ftype-&ref SDL_Event (motion) *event-obj*))
      '()))

(define (sdl-event-mouse-motion-y-rel)
  (if (sdl-event-mouse-motion?)
      (ftype-ref SDL_MouseMotionEvent (yrel)
		 (ftype-&ref SDL_Event (motion) *event-obj*))
      '()))

(define (sdl-event-mouse-motion-b-left?)
  (and (sdl-event-mouse-motion?)
       (bitwise-and sdl-button-l-mask
                    (ftype-ref SDL_MouseMotionEvent (state)
			       (ftype-&ref SDL_Event (motion) *event-obj*)))))

(define (sdl-event-mouse-motion-b-middle?)
  (and (sdl-event-mouse-motion?)
       (bitwise-and sdl-button-m-mask
		    (ftype-ref SDL_MouseMotionEvent (state)
			       (ftype-&ref SDL_Event (motion) *event-obj*)))))

(define (sdl-event-mouse-motion-b-right?)
  (and (sdl-event-mouse-motion?)
      (bitwise-and sdl-button-r-mask
		   (ftype-ref SDL_MouseMotionEvent (state)
			      (ftype-&ref SDL_Event (motion) *event-obj*)))))

(define (sdl-event-mouse-motion-b-x1?)
  (and (sdl-event-mouse-motion?)
       (bitwise-and sdl-button-x1-mask
		    (ftype-ref SDL_MouseMotionEvent (state)
			       (ftype-&ref SDL_Event (motion) *event-obj*)))))

(define (sdl-event-mouse-motion-b-x2?)
  (and (sdl-event-mouse-motion?)
       (bitwise-and sdl-button-x2-mask
		    (ftype-ref SDL_MouseMotionEvent (state)
			       (ftype-&ref SDL_Event (motion) *event-obj*)))))

(define (sdl-event-mouse-button-which)
  (if (or sdl-event-mouse-button-up?
	  sdl-event-mouse-button-down?)
      (ftype-ref SDL_MouseButtonEvent (which)
		 (ftype-&ref SDL_Event (motion) *event-obj*))
      '()))

(define (sdl-event-mouse-button-state)
  (if (or sdl-event-mouse-button-up?
	  sdl-event-mouse-button-down?)
      (if (= 0 (ftype-ref SDL_MouseButtonEvent (state)
			  (ftype-&ref SDL_Event (motion) *event-obj*)))
	  'SDL-RELEASED
	  'SDL-PRESSED)
      '()))

(define (sdl-event-mouse-button-button)
  (if (or sdl-event-mouse-button-up?
	  sdl-event-mouse-button-down?)
      (let
	  ((b (ftype-ref SDL_MouseButtonEvent (button)
			 (ftype-&ref SDL_Event (motion) *event-obj*))))
	(cond
	 ((bitwise-and b sdl-button-l-mask)  'SDL-BUTTON-LEFT)
	 ((bitwise-and b sdl-button-m-mask)  'SDL-BUTTON-MIDDLE)
	 ((bitwise-and b sdl-button-r-mask)  'SDL-BUTTON-RIGHT)
	 ((bitwise-and b sdl-button-x1-mask) 'SDL-BUTTON-X1)
	 ((bitwise-and b sdl-button-x2-mask) 'SDL-BUTTON-X2)
	 (else '())))
      '()))

(define (sdl-event-mouse-button-clicks)
  (if (or sdl-event-mouse-button-up?
	  sdl-event-mouse-button-down?)
      (ftype-ref SDL_MouseButtonEvent (clicks)
		 (ftype-&ref SDL_Event (motion) *event-obj*))
      '()))

(define (sdl-event-mouse-button-x)
  (if (or sdl-event-mouse-button-up?
	  sdl-event-mouse-button-down?)
      (ftype-ref SDL_MouseButtonEvent (x)
		 (ftype-&ref SDL_Event (motion) *event-obj*))
      '()))

(define (sdl-event-mouse-button-y)
  (if (or sdl-event-mouse-button-up?
	  sdl-event-mouse-button-down?)
      (ftype-ref SDL_MouseButtonEvent (y)
		 (ftype-&ref SDL_Event (motion) *event-obj*))
      '()))

(define (sdl-event-mouse-wheel-which)
  (if (sdl-event-mouse-wheel?)
      (ftype-ref SDL_MouseWheelEvent (which)
		 (ftype-&ref SDL_Event (wheel) *event-obj*))
      '()))

(define (sdl-event-mouse-wheel-x)
  (if (sdl-event-mouse-wheel?)
      (ftype-ref SDL_MouseWheelEvent (x)
		 (ftype-&ref SDL_Event (wheel) *event-obj*))
      '()))

(define (sdl-event-mouse-wheel-y)
  (if (sdl-event-mouse-wheel?)
      (ftype-ref SDL_MouseWheelEvent (y)
		 (ftype-&ref SDL_Event (wheel) *event-obj*))
      '()))

(define (sdl-event-mouse-wheel-direction)
  (if (sdl-event-mouse-wheel?)
      (let ((d (ftype-ref SDL_MouseWheelEvent (direction)
			  (ftype-&ref SDL_Event (wheel) *event-obj*))))
	(cond
	 ((= d 0) 'SDL-MOUSE-WHEEL-NORMAL)
	 ((= d 1) 'SDL-MOUSE-WHEEL-FLIPPED)
	 (else '())))
      '()))

(define (sdl-event-joy-device)
  (if (or (sdl-event-joy-dev-added?)
	  (sdl-event-joy-dev-removed?))
      (ftype-ref SDL_JoyDeviceEvent (which)
		 (ftype-&ref SDL_Event (jdevice) *event-obj*))
      '()))

(define (sdl-event-joy-button?)
  (or (sdl-event-joy-button-up?)
      (sdl-event-joy-button-down?)))

(define (sdl-event-joy-button-pressed?)
  (if (sdl-event-joy-button?)
      (= 1 (ftype-ref SDL_JoyButtonEvent (state)
		      (ftype-&ref SDL_Event (jbutton) *event-obj*)))
      '()))

(define (sdl-event-joy-button-device)
  (if (sdl-event-joy-button?)
      (ftype-ref SDL_JoyButtonEvent (which)
		 (ftype-&ref SDL_Event (jbutton) *event-obj*))
      '()))

(define (sdl-event-joy-button)
  (if (sdl-event-joy-button?)
      (ftype-ref SDL_JoyButtonEvent (button)
		 (ftype-&ref SDL_Event (jbutton) *event-obj*))
      '()))

(define (sdl-event-joy-hat-device)
  (if (sdl-event-joy-hat?)
      (ftype-ref SDL_JoyHatEvent (which)
		 (ftype-&ref SDL_Event (jhat) *event-obj*))
      '()))

(define (sdl-event-joy-hat)
  (if (sdl-event-joy-hat?)
      (ftype-ref SDL_JoyHatEvent (hat)
		 (ftype-&ref SDL_Event (jhat) *event-obj*))
      '()))

(define (sdl-event-joy-hat-pos)
  (define SDL_HAT_CENTERED    #x00)
  (define SDL_HAT_UP          #x01)
  (define SDL_HAT_RIGHT       #x02)
  (define SDL_HAT_DOWN        #x04)
  (define SDL_HAT_LEFT        #x08)
  (define SDL_HAT_RIGHTUP     (bitwise-ior SDL_HAT_RIGHT SDL_HAT_UP))
  (define SDL_HAT_RIGHTDOWN   (bitwise-ior SDL_HAT_RIGHT SDL_HAT_DOWN))
  (define SDL_HAT_LEFTUP      (bitwise-ior SDL_HAT_LEFT SDL_HAT_UP))
  (define SDL_HAT_LEFTDOWN    (bitwise-ior SDL_HAT_LEFT SDL_HAT_DOWN))

  (if (sdl-event-joy-hat?)
      (let
	  ((pos (ftype-ref SDL_JoyHatEvent (value)
			   (ftype-&ref SDL_Event (jhat) *event-obj*))))
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
	 (else '())))
      '()))

(define (sdl-event-joy-ball)
  (if (sdl-event-joy-ball?)
      (ftype-ref SDL_JoyBallEvent (ball)
		 (ftype-&ref SDL_Event (jball) *event-obj*))
      '()))

(define (sdl-event-joy-ball-x-rel)
  (if (sdl-event-joy-ball?)
      (ftype-ref SDL_JoyBallEvent (xrel)
		 (ftype-&ref SDL_Event (jball) *event-obj*))
      '()))

(define (sdl-event-joy-ball-y-rel)
  (if (sdl-event-joy-ball?)
      (ftype-ref SDL_JoyBallEvent (yrel)
		 (ftype-&ref SDL_Event (jball) *event-obj*))
      '()))

(define (sdl-event-joy-ball-device)
  (if (sdl-event-joy-ball?)
      (ftype-ref SDL_JoyBallEvent (which)
		 (ftype-&ref SDL_Event (jball) *event-obj*))
      '()))

(define (sdl-event-joy-axis)
  (if (sdl-event-joy-axis?)
      (ftype-ref SDL_JoyAxisEvent (axis)
		 (ftype-&ref SDL_Event (jaxis) *event-obj*))
      '()))

(define (sdl-event-joy-axis-motion)
  (if (sdl-event-joy-axis?)
      (ftype-ref SDL_JoyAxisEvent (value)
		 (ftype-&ref SDL_Event (jaxis) *event-obj*))
      '()))

(define (sdl-event-joy-axis-device)
  (if (sdl-event-joy-axis?)
      (ftype-ref SDL_JoyAxisEvent (which)
		 (ftype-&ref SDL_Event (jaxis) *event-obj*))
      '()))

(define (sdl-event-con-device)
  (if (or (sdl-event-con-dev-added?)
	  (sdl-event-con-dev-removed?)
	  (sdl-event-con-dev-remapped?))
      (ftype-ref SDL_ControllerDeviceEvent (which)
		 (ftype-&ref SDL_Event (cdevice) *event-obj*))
      '()))

(define (sdl-event-con-axis-device)
  (if (sdl-event-con-axis?)
      (ftype-ref SDL_ControllerAxisEvent (which)
		 (ftype-&ref SDL_Event (caxis) *event-obj*))
      '()))

(define (sdl-event-con-axis)
  (if (sdl-event-con-axis?)
      (let
	  ((axis (ftype-ref SDL_ControllerAxisEvent (axis)
			    (ftype-&ref SDL_Event (caxis) *event-obj*))))
	(cond
	 ((= 0 axis) 'SDL-CONTROLLER-AXIS-LEFT-X)
	 ((= 1 axis) 'SDL-CONTROLLER-AXIS-LEFT-Y)
	 ((= 2 axis) 'SDL-CONTROLLER-AXIS-RIGHT-X)
	 ((= 3 axis) 'SDL-CONTROLLER-AXIS-RIGHT-Y)
	 ((= 4 axis) 'SDL-CONTROLLER-AXIS-TRIGGER-LEFT)
	 ((= 5 axis) 'SDL-CONTROLLER-AXIS-TRIGGER-RIGHT)
	 (else '())))
      '()))

(define (sdl-event-con-motion)
  (if (sdl-event-con-axis?)
      (ftype-ref SDL_ControllerAxisEvent (value)
		 (ftype-&ref SDL_Event (caxis) *event-obj*))
      '()))

(define (sdl-event-con-button?)
  (or (sdl-event-con-button-up?)
      (sdl-event-con-button-down?)))

(define (sdl-event-con-button-pressed?)
  (if (sdl-event-con-button?)
      (= 1 (ftype-ref SDL_ControllerButtonEvent (state)
		      (ftype-&ref SDL_Event (cbutton) *event-obj*)))
      '()))

(define (sdl-event-con-button)
  (if (sdl-event-con-button?)
      (let
	  ((button (ftype-ref SDL_ControllerButtonEvent (button)
			      (ftype-&ref SDL_Event (cbutton) *event-obj*))))
	(cond
	 ((=  0 button) 'SDL-CONTROLLER-BUTTON-A)
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
	 (else '())))
      '()))

(define (sdl-event-con-button-device)
  (if (sdl-event-con-button?)
      (ftype-ref SDL_ControllerButtonEvent (which)
		 (ftype-&ref SDL_Event (cbutton) *event-obj*))
      '()))

(define (sdl-event-audio-device-which)
  (if (or (sdl-event-audio-device-added?)
	  (sdl-event-audio-device-removed?))
      (ftype-ref SDL_AudioDeviceEvent (which)
		 (ftype-&ref SDL_Event (adevice) *event-obj*))
      '()))

(define (sdl-event-audio-device-iscapture?)
  (if (or (sdl-event-audio-device-added?)
	  (sdl-event-audio-device-removed?))
      (not (= 0 (ftype-ref SDL_AudioDeviceEvent (iscapture)
			   (ftype-&ref SDL_Event (adevice) *event-obj*))))
      '()))

(define (sdl-event-touch-id)
  (cond
   ((or (sdl-event-finger-down?)
	(sdl-event-finger-up?)
	(sdl-event-finger-motion?))
    (ftype-ref SDL_TouchFingerEvent (touchId)
	       (ftype-&ref SDL_Event (tfinger) *event-obj*)))
   ((or (sdl-event-dollar-gesture?)
	(sdl-event-dollar-record?))
    (ftype-ref SDL_DollarGestureEvent (touchId)
	       (ftype-&ref SDL_Event (dgesture) *event-obj*)))
   ((sdl-event-multi-gesture?)
    (ftype-ref SDL_MultiGestureEvent (touchId)
	       (ftype-&ref SDL_Event (mgesture) *event-obj*)))
   (else '())))

(define (sdl-event-finger-id)
  (if (or (sdl-event-finger-down?)
	  (sdl-event-finger-up?)
	  (sdl-event-finger-motion?))
      (ftype-ref SDL_TouchFingerEvent (fingerId)
		 (ftype-&ref SDL_Event (tfinger) *event-obj*))
      '()))

(define (sdl-event-gesture-id)
  (if (or (sdl-event-dollar-gesture?)
	  (sdl-event-dollar-record?))
      (ftype-ref SDL_DollarGestureEvent (gestureId)
		 (ftype-&ref SDL_Event (dgesture) *event-obj*))
      '()))

(define (sdl-event-gesture-num-fingers)
  (cond
   ((or (sdl-event-dollar-gesture?)
	(sdl-event-dollar-record?))
    (ftype-ref SDL_DollarGestureEvent (numFingers)
	       (ftype-&ref SDL_Event (dgesture) *event-obj*)))
   ((sdl-event-multi-gesture?)
    (ftype-ref SDL_MultiGestureEvent (numFingers)
	       (ftype-&ref SDL_Event (mgesture) *event-obj*)))
   (else '())))

(define (sdl-event-multi-gesture-dTheta)
  (if (sdl-event-multi-gesture?)
      (ftype-ref SDL_MultiGestureEvent (dTheta)
		 (ftype-&ref SDL_Event (mgesture) *event-obj*))
      '()))

(define (sdl-event-multi-gesture-dDist)
  (if (sdl-event-multi-gesture?)
      (ftype-ref SDL_MultiGestureEvent (dDist)
		 (ftype-&ref SDL_Event (mgesture) *event-obj*))
      '()))

(define (sdl-event-dollar-gesture-error)
  (if (or (sdl-event-dollar-gesture?)
	  (sdl-event-dollar-record?))
      (ftype-ref SDL_DollarGestureEvent (error)
		 (ftype-&ref SDL_Event (dgesture) *event-obj*))
      '()))

(define (sdl-event-touch-x)
  (cond
   ((or (sdl-event-finger-down?)
	(sdl-event-finger-up?)
	(sdl-event-finger-motion?))
    (ftype-ref SDL_TouchFingerEvent (x)
	       (ftype-&ref SDL_Event (tfinger) *event-obj*)))
   ((or (sdl-event-dollar-gesture?)
	(sdl-event-dollar-record?))
    (ftype-ref SDL_DollarGestureEvent (x)
	       (ftype-&ref SDL_Event (dgesture) *event-obj*)))
   ((sdl-event-multi-gesture?)
    (ftype-ref SDL_MultiGestureEvent (x)
	       (ftype-&ref SDL_Event (mgesture) *event-obj*)))
   (else '())))

(define (sdl-event-touch-y)
  (cond
   ((or (sdl-event-finger-down?)
	(sdl-event-finger-up?)
	(sdl-event-finger-motion?))
    (ftype-ref SDL_TouchFingerEvent (y)
	       (ftype-&ref SDL_Event (tfinger) *event-obj*)))
   ((or (sdl-event-dollar-gesture?)
	(sdl-event-dollar-record?))
    (ftype-ref SDL_DollarGestureEvent (y)
	       (ftype-&ref SDL_Event (dgesture) *event-obj*)))
   ((sdl-event-multi-gesture?)
    (ftype-ref SDL_MultiGestureEvent (y)
	       (ftype-&ref SDL_Event (mgesture) *event-obj*)))
   (else '())))

(define (sdl-event-touch-dx)
  (if (or (sdl-event-finger-down?)
	  (sdl-event-finger-up?)
	  (sdl-event-finger-motion?))
      (ftype-ref SDL_TouchFingerEvent (dx)
		 (ftype-&ref SDL_Event (tfinger) *event-obj*))
      '()))

(define (sdl-event-touch-dy)
  (if (or (sdl-event-finger-down?)
	  (sdl-event-finger-up?)
	  (sdl-event-finger-motion?))
      (ftype-ref SDL_TouchFingerEvent (dy)
		 (ftype-&ref SDL_Event (tfinger) *event-obj*))
      '()))

(define (sdl-event-touch-pressure)
  (if (or (sdl-event-finger-down?)
	  (sdl-event-finger-up?)
	  (sdl-event-finger-motion?))
      (ftype-ref SDL_TouchFingerEvent (pressure)
		 (ftype-&ref SDL_Event (tfinger) *event-obj*))
      '()))

(define (sdl-event-drop-file)
  ;; This is a little messy.
  (define (read-all)
    (letrec
	((e-ptr (ftype-&ref SDL_Event (drop) *event-obj*))
	 (c-ptr (ftype-ref SDL_DropEvent (file) e-ptr))
	 (loop (lambda (x)
		 (let
		     ((c (ftype-ref char () c-ptr x)))
		   (if (char=? c #\nul)
		       '()
		       (cons c (loop (+ x 1))))))))
      (let
	  ((chars (loop 0)))
	;; Free the memory
	(SDL_free c-ptr)
	;; Eval to string
	(list->string chars))))
  (if (or (sdl-event-drop-file?)
	  (sdl-event-drop-text?))
      (read-all)
      '()))
