;;;; -*- mode: Scheme; -*-

;;;;;;;;;;;;;;;;;;;;;;;
;;; Foreign C Types ;;;
;;;;;;;;;;;;;;;;;;;;;;;

(define-ftype sdl-c-keysym
  (struct [scancode unsigned]
	  [sym      integer-32]
	  [mod      unsigned-16]
	  [unused   unsigned-32]))

(define-ftype sdl-c-common-event
  (struct [type      unsigned-32]
	  [timestamp unsigned-32]))

(define-ftype sdl-c-window-event
  (struct [type      unsigned-32]
	  [timestamp unsigned-32]
	  [windowID  unsigned-32]
	  [event     unsigned-8]
	  [padding1  unsigned-8]
	  [padding2  unsigned-8]
	  [padding3  unsigned-8]
	  [data1     integer-32]
	  [data2     integer-32]))

(define-ftype sdl-c-keyboard-event
  (struct [type      unsigned-32]
	  [timestamp unsigned-32]
	  [windowID  unsigned-32]
	  [state     unsigned-8]
	  [repeat    unsigned-8]
	  [keysym    sdl-c-keysym]))

(define-ftype sdl-c-text-editing-event
  (struct [type      unsigned-32]
	  [timestamp unsigned-32]
	  [windowID  unsigned-32]
	  [text      (array 32 char)]
	  [start     integer-32]
	  [length    integer-32]))

(define-ftype sdl-c-text-input-event
  (struct [type      unsigned-32]
	  [timestamp unsigned-32]
	  [windowID  unsigned-32]
	  [text      (array 32 char)]))

(define-ftype sdl-c-mouse-motion-event
  (struct [type      unsigned-32]
	  [timestamp unsigned-32]
	  [windowID  unsigned-32]
	  [which     unsigned-32]
	  [state     unsigned-32]
	  [x         integer-32]
	  [y         integer-32]
	  [xrel      integer-32]
	  [yrel      integer-32]))

(define-ftype sdl-c-mouse-button-event
  (struct [type      unsigned-32]
	  [timestamp unsigned-32]
	  [windowID  unsigned-32]
	  [which     unsigned-32]
	  [button    unsigned-8]
	  [state     unsigned-8]
	  [clicks    unsigned-8]
	  [padding1  unsigned-8]
	  [x         integer-32]
	  [y         integer-32]))

(define-ftype sdl-c-mouse-wheel-event
  (struct [type      unsigned-32]
	  [timestamp unsigned-32]
	  [windowID  unsigned-32]
	  [which     unsigned-32]
	  [x         integer-32]
	  [y         integer-32]
	  [direction unsigned-32]))

(define-ftype sdl-c-joy-axis-event
  (struct [type      unsigned-32]
	  [timestamp unsigned-32]
	  [which     integer-32]
	  [axis      unsigned-8]
	  [padding1  unsigned-8]
	  [padding2  unsigned-8]
	  [padding3  unsigned-8]
	  [value     integer-16]
	  [padding4  unsigned-16]))

(define-ftype sdl-c-joy-ball-event
  (struct [type      unsigned-32]
	  [timestamp unsigned-32]
	  [which     integer-32]
	  [ball      unsigned-8]
	  [padding1  unsigned-8]
	  [padding2  unsigned-8]
	  [padding3  unsigned-8]
	  [xrel      integer-16]
	  [yrel      integer-16]))

(define-ftype sdl-c-joy-hat-event
  (struct [type      unsigned-32]
	  [timestamp unsigned-32]
	  [which     integer-32]
	  [hat       unsigned-8]
	  [value     unsigned-8]
	  [padding1  unsigned-8]
	  [padding2  unsigned-8]))

(define-ftype sdl-c-joy-button-event
  (struct [type      unsigned-32]
	  [timestamp unsigned-32]
	  [which     integer-32]
	  [button    unsigned-8]
	  [state     unsigned-8]
	  [padding1  unsigned-8]
	  [padding2  unsigned-8]))

(define-ftype sdl-c-joy-device-event
  (struct [type      unsigned-32]
	  [timestamp unsigned-32]
	  [which     integer-32]))

(define-ftype sdl-c-controller-axis-event
  (struct [type      unsigned-32]
	  [timestamp unsigned-32]
	  [which     integer-32]
	  [axis      unsigned-8]
	  [padding1  unsigned-8]
	  [padding2  unsigned-8]
	  [padding3  unsigned-8]
	  [value     unsigned-16]
	  [padding4  unsigned-16]))

(define-ftype sdl-c-controller-button-event
  (struct [type      unsigned-32]
	  [timestamp unsigned-32]
	  [which     integer-32]
	  [button    unsigned-8]
	  [state     unsigned-8]
	  [padding1  unsigned-8]
	  [padding2  unsigned-8]))

(define-ftype sdl-c-controller-device-event
  (struct [type      unsigned-32]
	  [timestamp unsigned-32]
	  [which     integer-32]))

(define-ftype sdl-c-audio-device-event
  (struct [type      unsigned-32]
	  [timestamp unsigned-32]
	  [which     unsigned-32]
	  [iscapture unsigned-8]
	  [padding1  unsigned-8]
	  [padding2  unsigned-8]
	  [padding3  unsigned-8]))

(define-ftype sdl-c-quit-event
  (struct [type      unsigned-32]
	  [timestamp unsigned-32]))

(define-ftype sdl-c-user-event
  (struct [type      unsigned-32]
	  [timestamp unsigned-32]
	  [windowID  unsigned-32]
	  [code      integer-32]
	  [data1     void*]
	  [data2     void*]))

(define-ftype sdl-c-sys-wm-event
  (struct [type      unsigned-32]
	  [timestamp unsigned-32]
	  [msg       void*]))

(define-ftype sdl-c-touch-finger-event
  (struct [type      unsigned-32]
	  [timestamp unsigned-32]
	  [touchId   integer-64]
	  [fingerId  integer-64]
	  [x         float]
	  [y         float]
	  [dx        float]
	  [dy        float]
	  [pressure  float]))

(define-ftype sdl-c-multi-gesture-event
  (struct [type       unsigned-32]
	  [timestamp  unsigned-32]
	  [touchId    integer-64]
	  [dTheta     float]
	  [dDist      float]
	  [x          float]
	  [y          float]
	  [numFingers unsigned-16]
	  [padding    unsigned-16]))

(define-ftype sdl-c-dollar-gesture-event
  (struct [type       unsigned-32]
	  [timestamp  unsigned-32]
	  [touchId    integer-64]
	  [gestureId  integer-64]
	  [numFingers unsigned-32]
	  [error      float]
	  [x          float]
	  [y          float]))

(define-ftype sdl-c-drop-event
  (struct [type       unsigned-32]
	  [timestamp  unsigned-32]
	  [file       (* char)]
	  [windowID   unsigned-32]))

(define-ftype sdl-c-event
  (union [type     unsigned-32]
	 [common   sdl-c-common-event]
	 [window   sdl-c-window-event]
	 [key      sdl-c-keyboard-event]
	 [edit     sdl-c-text-editing-event]
	 [text     sdl-c-text-input-event]
	 [motion   sdl-c-mouse-motion-event]
	 [button   sdl-c-mouse-button-event]
	 [wheel    sdl-c-mouse-wheel-event]
	 [jaxis    sdl-c-joy-axis-event]
	 [jball    sdl-c-joy-ball-event]
	 [jhat     sdl-c-joy-hat-event]
	 [jbutton  sdl-c-joy-button-event]
	 [jdevice  sdl-c-joy-device-event]
	 [caxis    sdl-c-controller-axis-event]
	 [cbutton  sdl-c-controller-button-event]
	 [cdevice  sdl-c-controller-device-event]
	 [adevice  sdl-c-audio-device-event]
	 [quit     sdl-c-quit-event]
	 [user     sdl-c-user-event]
	 [syswm    sdl-c-sys-wm-event]
	 [tfinger  sdl-c-touch-finger-event]
	 [mgesture sdl-c-multi-gesture-event]
	 [dgesture sdl-c-dollar-gesture-event]
	 [drop     sdl-c-drop-event]
	 [padding  (array 56 unsigned-8)]))


;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; C Function Bindings ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define *sdl-poll-event* (sdl-procedure "SDL_PollEvent" ((* sdl-c-event)) int))


;;;;;;;;;;;;;;;;;;;
;;; Marshalling ;;;
;;;;;;;;;;;;;;;;;;;

(define *sdl-event-none?* #t)
(define (sdl-event-none?) *sdl-event-none?*)

(define (sdl-poll-event)
  (if (= 0 (*sdl-poll-event* event-obj))
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
  (ftype-ref sdl-c-user-event (timestamp) event-obj))

(define (sdl-event-quit?)
  (= SDL-QUIT-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-clipboard?)
  (= SDL-CLIPBOARDUPDATE-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-terminating?)
  (= SDL-APP-TERMINATING-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-low-memory?)
  (= SDL-APP-LOWMEMORY-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-will-enter-background?)
  (= SDL-APP-WILLENTERBACKGROUND-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-did-enter-background?)
  (= SDL-APP-DIDENTERBACKGROUND-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-will-enter-foreground?)
  (= SDL-APP-WILLENTERFOREGROUND-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-did-enter-foreground?)
  (= SDL-APP-DIDENTERFOREGROUND-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-render-target-reset?)
  (= SDL-RENDER-TARGETS-RESET-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-render-device-reset?)
  (= SDL-RENDER-DEVICE-RESET-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-window?)
  (= SDL-WINDOWEVENT-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-syswm?)
  (= SDL-SYSWMEVENT-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-keyup?)
  (= SDL-KEYUP-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-keydown?)
  (= SDL-KEYDOWN-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-text-editing?)
  (= SDL-TEXTEDITING-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-text-input?)
  (= SDL-TEXTINPUT-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-keymap-changed?)
  (= SDL-KEYMAPCHANGED-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-mouse-motion?)
  (= SDL-MOUSEMOTION-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-mouse-button-down?)
  (= SDL-MOUSEBUTTONDOWN-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-mouse-button-up?)
  (= SDL-MOUSEBUTTONUP-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-mouse-wheel?)
  (= SDL-MOUSEWHEEL-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-joy-dev-added?)
  (= SDL-JOYDEVICEADDED-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-joy-dev-removed?)
  (= SDL-JOYDEVICEREMOVED-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-joy-button-up?)
  (= SDL-JOYBUTTONUP-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-joy-button-down?)
  (= SDL-JOYBUTTONDOWN-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-joy-axis?)
  (= SDL-JOYAXISMOTION-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-joy-ball?)
  (= SDL-JOYBALLMOTION-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-joy-hat?)
  (= SDL-JOYHATMOTION-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-con-dev-added?)
  (= SDL-CONTROLLERDEVICEADDED-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-con-dev-removed?)
  (= SDL-CONTROLLERDEVICEREMOVED-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-con-dev-remapped?)
  (= SDL-CONTROLLERDEVICEREMAPPED-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-con-axis?)
  (= SDL-CONTROLLERAXISMOTION-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-con-button-up?)
  (= SDL-CONTROLLERBUTTONUP-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-con-button-down?)
  (= SDL-CONTROLLERBUTTONDOWN-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-audio-device-added?)
  (= SDL-AUDIODEVICEADDED-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-audio-device-removed?)
  (= SDL-AUDIODEVICEREMOVED-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-finger-down?)
  (= SDL-FINGERDOWN-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-finger-up?)
  (= SDL-FINGERUP-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-finger-motion?)
  (= SDL-FINGERMOTION-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-dollar-gesture?)
  (= SDL-DOLLARGESTURE-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-dollar-record?)
  (= SDL-DOLLARRECORD-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-multi-gesture?)
  (= SDL-MULTIGESTURE-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-drop-file?)
  (= SDL-DROPFILE-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-drop-text?)
  (= SDL-DROPTEXT-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-drop-begin?)
  (= SDL-DROPBEGIN-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-drop-complete?)
  (= SDL-DROPCOMPLETE-E
     (ftype-ref sdl-c-event (type) event-obj)))

(define (sdl-event-win-shown?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-SHOWN
	  (ftype-ref sdl-c-window-event (event)
		     (ftype-&ref sdl-c-event (window) event-obj)))))

(define (sdl-event-win-hidden?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-HIDDEN
	  (ftype-ref sdl-c-window-event (event)
		     (ftype-&ref sdl-c-event (window) event-obj)))))

(define (sdl-event-win-exposed?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-EXPOSED
	  (ftype-ref sdl-c-window-event (event)
		     (ftype-&ref sdl-c-event (window) event-obj)))))

(define (sdl-event-win-moved?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-MOVED
	  (ftype-ref sdl-c-window-event (event)
		     (ftype-&ref sdl-c-event (window) event-obj)))))

(define (sdl-event-win-resized?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-RESIZED
	  (ftype-ref sdl-c-window-event (event)
		     (ftype-&ref sdl-c-event (window) event-obj)))))

(define (sdl-event-win-size-changed?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-SIZE-CHANGED
	  (ftype-ref sdl-c-window-event (event)
		     (ftype-&ref sdl-c-event (window) event-obj)))))

(define (sdl-event-win-minimized?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-MINIMIZED
	  (ftype-ref sdl-c-window-event (event)
		     (ftype-&ref sdl-c-event (window) event-obj)))))

(define (sdl-event-win-maximized?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-MAXIMIZED
	  (ftype-ref sdl-c-window-event (event)
		     (ftype-&ref sdl-c-event (window) event-obj)))))

(define (sdl-event-win-restored?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-RESTORED
	  (ftype-ref sdl-c-window-event (event)
		     (ftype-&ref sdl-c-event (window) event-obj)))))

(define (sdl-event-win-enter?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-ENTER
	  (ftype-ref sdl-c-window-event (event)
		     (ftype-&ref sdl-c-event (window) event-obj)))))

(define (sdl-event-win-leave?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-LEAVE
	  (ftype-ref sdl-c-window-event (event)
		     (ftype-&ref sdl-c-event (window) event-obj)))))

(define (sdl-event-win-focus-gained?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-FOCUS-GAINED
	  (ftype-ref sdl-c-window-event (event)
		     (ftype-&ref sdl-c-event (window) event-obj)))))

(define (sdl-event-win-focus-lost?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-FOCUS-LOST
	  (ftype-ref sdl-c-window-event (event)
		     (ftype-&ref sdl-c-event (window) event-obj)))))

(define (sdl-event-win-close?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-CLOSE
	  (ftype-ref sdl-c-window-event (event)
		     (ftype-&ref sdl-c-event (window) event-obj)))))

(define (sdl-event-win-take-focus?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-TAKE-FOCUS
	  (ftype-ref sdl-c-window-event (event)
		     (ftype-&ref sdl-c-event (window) event-obj)))))

(define (sdl-event-win-hit-test?)
  (and (sdl-event-window?)
       (= SDL-WINDOW-EVENT-HIT-TEST
	  (ftype-ref sdl-c-window-event (event)
		     (ftype-&ref sdl-c-event (window) event-obj)))))

(define (sdl-event-win-id)
  (ftype-ref sdl-c-window-event (windowID)
	     (ftype-&ref sdl-c-event (window) event-obj)))

(define (sdl-event-win-x)
  (ftype-ref sdl-c-window-event (data1)
	     (ftype-&ref sdl-c-event (window) event-obj)))

(define (sdl-event-win-y)
  (ftype-ref sdl-c-window-event (data2)
	     (ftype-&ref sdl-c-event (window) event-obj)))

(define (sdl-event-win-w)
  (ftype-ref sdl-c-window-event (data1)
	     (ftype-&ref sdl-c-event (window) event-obj)))

(define (sdl-event-win-h)
  (ftype-ref sdl-c-window-event (data2)
	     (ftype-&ref sdl-c-event (window) event-obj)))

(define (sdl-event-key-repeat?)
  (and (or (sdl-event-keyup?)
	   (sdl-event-keydown?))
       (not (= 0 (ftype-ref sdl-c-keyboard-event (repeat)
			    (ftype-&ref sdl-c-event (key) event-obj))))))

(define (sdl-event-key-up? key)
  (and (sdl-event-keyup?)
       (= key
	  (ftype-ref sdl-c-keysym (sym)
		     (ftype-&ref sdl-c-keyboard-event (keysym)
				 (ftype-&ref sdl-c-event (key) event-obj))))))

(define (sdl-event-key-down? key)
  (and (sdl-event-keydown?)
       (= key
	  (ftype-ref sdl-c-keysym (sym)
		     (ftype-&ref sdl-c-keyboard-event (keysym)
				 (ftype-&ref sdl-c-event (key) event-obj))))))

(define (sdl-event-code-up? code)
  (and (sdl-event-keyup?)
       (= code
	  (ftype-ref sdl-c-keysym (scancode)
		     (ftype-&ref sdl-c-keyboard-event (keysym)
				 (ftype-&ref sdl-c-event (key) event-obj))))))

(define (sdl-event-code-down? code)
  (and (sdl-event-keydown?)
       (= code
	  (ftype-ref sdl-c-keysym (scancode)
		     (ftype-&ref sdl-c-keyboard-event (keysym)
				 (ftype-&ref sdl-c-event (key) event-obj))))))

(define (sdl-event-mod-up? mod)
  (and (sdl-event-keyup?)
       (= mod
	  (ftype-ref sdl-c-keysym (mod)
		     (ftype-&ref sdl-c-keyboard-event (keysym)
				 (ftype-&ref sdl-c-event (key) event-obj))))))

(define (sdl-event-mod-down? mod)
  (and (sdl-event-keydown?)
       (= mod
	  (ftype-ref sdl-c-keysym (mod)
		     (ftype-&ref sdl-c-keyboard-event (keysym)
				 (ftype-&ref sdl-c-event (key) event-obj))))))

(define (sdl-event-text-editing-text)
  (error 'SDL "not implemented" sdl-event-text-editing-text))
  ;; (if (sdl-event-text-editing?)
  ;;     (foreign-ref
  ;;      string
  ;;      (+ (ftype-ref sdl-c-text-editing-event (start)
  ;; 		     (ftype-&ref sdl-c-event (edit) event-obj))
  ;; 	  (ftype-&ref sdl-c-text-editing-event (text)
  ;; 		      (ftype-&ref sdl-c-event (edit) event-obj)))
  ;;      (ftype-ref sdl-c-text-editing-event (length)
  ;; 		   (ftype-&ref sdl-c-event (edit) event-obj)))
  ;;     '()))

(define (sdl-event-text-input-text)
  (define (loop x)
    (let ([c (ftype-ref char ()
			(ftype-&ref sdl-c-text-input-event (text)
				    (ftype-&ref sdl-c-event (text) event-obj)) x)])

      (if (char=? c #\nul)
	  '()
	  (cons c (loop (+ x 1))))))
  (if (sdl-event-text-input?)
      (loop 0)
      '()))

(define (sdl-event-mouse-motion-which)
  (if (sdl-event-mouse-motion?)
      (ftype-ref sdl-c-mouse-motion-event (which)
		 (ftype-&ref sdl-c-event (motion) event-obj))
      '()))

(define (sdl-event-mouse-motion-x)
  (if (sdl-event-mouse-motion?)
      (ftype-ref sdl-c-mouse-motion-event (x)
		 (ftype-&ref sdl-c-event (motion) event-obj))
      '()))

(define (sdl-event-mouse-motion-y)
  (if (sdl-event-mouse-motion?)
      (ftype-ref sdl-c-mouse-motion-event (y)
		 (ftype-&ref sdl-c-event (motion) event-obj))
      '()))

(define (sdl-event-mouse-motion-x-rel)
  (if (sdl-event-mouse-motion?)
      (ftype-ref sdl-c-mouse-motion-event (xrel)
		 (ftype-&ref sdl-c-event (motion) event-obj))
      '()))

(define (sdl-event-mouse-motion-y-rel)
  (if (sdl-event-mouse-motion?)
      (ftype-ref sdl-c-mouse-motion-event (yrel)
		 (ftype-&ref sdl-c-event (motion) event-obj))
      '()))

(define (sdl-event-mouse-motion-b-left?)
  (and (sdl-event-mouse-motion?)
       (bitwise-and sdl-button-l-mask
                    (ftype-ref sdl-c-mouse-motion-event (state)
			       (ftype-&ref sdl-c-event (motion) event-obj)))))

(define (sdl-event-mouse-motion-b-middle?)
  (and (sdl-event-mouse-motion?)
       (bitwise-and sdl-button-m-mask
		    (ftype-ref sdl-c-mouse-motion-event (state)
			       (ftype-&ref sdl-c-event (motion) event-obj)))))

(define (sdl-event-mouse-motion-b-right?)
  (and (sdl-event-mouse-motion?)
      (bitwise-and sdl-button-r-mask
		   (ftype-ref sdl-c-mouse-motion-event (state)
			      (ftype-&ref sdl-c-event (motion) event-obj)))))

(define (sdl-event-mouse-motion-b-x1?)
  (and (sdl-event-mouse-motion?)
       (bitwise-and sdl-button-x1-mask
		    (ftype-ref sdl-c-mouse-motion-event (state)
			       (ftype-&ref sdl-c-event (motion) event-obj)))))

(define (sdl-event-mouse-motion-b-x2?)
  (and (sdl-event-mouse-motion?)
       (bitwise-and sdl-button-x2-mask
		    (ftype-ref sdl-c-mouse-motion-event (state)
			       (ftype-&ref sdl-c-event (motion) event-obj)))))

(define (sdl-event-mouse-button-which)
  (if (or sdl-event-mouse-button-up?
	  sdl-event-mouse-button-down?)
      (ftype-ref sdl-c-mouse-button-event (which)
		 (ftype-&ref sdl-c-event (motion) event-obj))
      '()))

(define (sdl-event-mouse-button-state)
  (if (or sdl-event-mouse-button-up?
	  sdl-event-mouse-button-down?)
      (if (= 0 (ftype-ref sdl-c-mouse-button-event (state)
			  (ftype-&ref sdl-c-event (motion) event-obj)))
	  'SDL-RELEASED
	  'SDL-PRESSED)
      '()))

(define (sdl-event-mouse-button-button)
  (if (or sdl-event-mouse-button-up?
	  sdl-event-mouse-button-down?)
      (let
	  ([b (ftype-ref sdl-c-mouse-button-event (button)
			 (ftype-&ref sdl-c-event (motion) event-obj))])
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
      (ftype-ref sdl-c-mouse-button-event (clicks)
		 (ftype-&ref sdl-c-event (motion) event-obj))
      '()))

(define (sdl-event-mouse-button-x)
  (if (or sdl-event-mouse-button-up?
	  sdl-event-mouse-button-down?)
      (ftype-ref sdl-c-mouse-button-event (x)
		 (ftype-&ref sdl-c-event (motion) event-obj))
      '()))

(define (sdl-event-mouse-button-y)
  (if (or sdl-event-mouse-button-up?
	  sdl-event-mouse-button-down?)
      (ftype-ref sdl-c-mouse-button-event (y)
		 (ftype-&ref sdl-c-event (motion) event-obj))
      '()))

(define (sdl-event-mouse-wheel-which)
  (if (sdl-event-mouse-wheel?)
      (ftype-ref sdl-c-mouse-wheel-event (which)
		 (ftype-&ref sdl-c-event (wheel) event-obj))
      '()))

(define (sdl-event-mouse-wheel-x)
  (if (sdl-event-mouse-wheel?)
      (ftype-ref sdl-c-mouse-wheel-event (x)
		 (ftype-&ref sdl-c-event (wheel) event-obj))
      '()))

(define (sdl-event-mouse-wheel-y)
  (if (sdl-event-mouse-wheel?)
      (ftype-ref sdl-c-mouse-wheel-event (y)
		 (ftype-&ref sdl-c-event (wheel) event-obj))
      '()))

(define (sdl-event-mouse-wheel-direction)
  (if (sdl-event-mouse-wheel?)
      (let ([d (ftype-ref sdl-c-mouse-wheel-event (direction)
			  (ftype-&ref sdl-c-event (wheel) event-obj))])
	(cond
	 ((= d 0) 'SDL-MOUSE-WHEEL-NORMAL)
	 ((= d 1) 'SDL-MOUSE-WHEEL-FLIPPED)
	 (else '())))
      '()))

(define (sdl-event-joy-device)
  (if (or (sdl-event-joy-dev-added?)
	  (sdl-event-joy-dev-removed?))
      (ftype-ref sdl-c-joy-device-event (which)
		 (ftype-&ref sdl-c-event (jdevice) event-obj))
      '()))

(define (sdl-event-joy-button?)
  (or (sdl-event-joy-button-up?)
      (sdl-event-joy-button-down?)))

(define (sdl-event-joy-button-pressed?)
  (if (sdl-event-joy-button?)
      (= 1 (ftype-ref sdl-c-joy-button-event (state)
		      (ftype-&ref sdl-c-event (jbutton) event-obj)))
      '()))

(define (sdl-event-joy-button-device)
  (if (sdl-event-joy-button?)
      (ftype-ref sdl-c-joy-button-event (which)
		 (ftype-&ref sdl-c-event (jbutton) event-obj))
      '()))

(define (sdl-event-joy-button)
  (if (sdl-event-joy-button?)
      (ftype-ref sdl-c-joy-button-event (button)
		 (ftype-&ref sdl-c-event (jbutton) event-obj))
      '()))

(define (sdl-event-joy-hat-device)
  (if (sdl-event-joy-hat?)
      (ftype-ref sdl-c-joy-hat-event (which)
		 (ftype-&ref sdl-c-event (jhat) event-obj))
      '()))

(define (sdl-event-joy-hat)
  (if (sdl-event-joy-hat?)
      (ftype-ref sdl-c-joy-hat-event (hat)
		 (ftype-&ref sdl-c-event (jhat) event-obj))
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
	  ([pos (ftype-ref sdl-c-joy-hat-event (value)
			   (ftype-&ref sdl-c-event (jhat) event-obj))])
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
      (ftype-ref sdl-c-joy-ball-event (ball)
		 (ftype-&ref sdl-c-event (jball) event-obj))
      '()))

(define (sdl-event-joy-ball-x-rel)
  (if (sdl-event-joy-ball?)
      (ftype-ref sdl-c-joy-ball-event (xrel)
		 (ftype-&ref sdl-c-event (jball) event-obj))
      '()))

(define (sdl-event-joy-ball-y-rel)
  (if (sdl-event-joy-ball?)
      (ftype-ref sdl-c-joy-ball-event (yrel)
		 (ftype-&ref sdl-c-event (jball) event-obj))
      '()))

(define (sdl-event-joy-ball-device)
  (if (sdl-event-joy-ball?)
      (ftype-ref sdl-c-joy-ball-event (which)
		 (ftype-&ref sdl-c-event (jball) event-obj))
      '()))

(define (sdl-event-joy-axis)
  (if (sdl-event-joy-axis?)
      (ftype-ref sdl-c-joy-axis-event (axis)
		 (ftype-&ref sdl-c-event (jaxis) event-obj))
      '()))

(define (sdl-event-joy-axis-motion)
  (if (sdl-event-joy-axis?)
      (ftype-ref sdl-c-joy-axis-event (value)
		 (ftype-&ref sdl-c-event (jaxis) event-obj))
      '()))

(define (sdl-event-joy-axis-device)
  (if (sdl-event-joy-axis?)
      (ftype-ref sdl-c-joy-axis-event (which)
		 (ftype-&ref sdl-c-event (jaxis) event-obj))
      '()))

(define (sdl-event-con-device)
  (if (or (sdl-event-con-dev-added?)
	  (sdl-event-con-dev-removed?)
	  (sdl-event-con-dev-remapped?))
      (ftype-ref sdl-c-controller-device-event (which)
		 (ftype-&ref sdl-c-event (cdevice) event-obj))
      '()))

(define (sdl-event-con-axis-device)
  (if (sdl-event-con-axis?)
      (ftype-ref sdl-c-controller-axis-event (which)
		 (ftype-&ref sdl-c-event (caxis) event-obj))
      '()))

(define (sdl-event-con-axis)
  (if (sdl-event-con-axis?)
      (let
	  ([axis (ftype-ref sdl-c-controller-axis-event (axis)
			    (ftype-&ref sdl-c-event (caxis) event-obj))])
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
      (ftype-ref sdl-c-controller-axis-event (value)
		 (ftype-&ref sdl-c-event (caxis) event-obj))
      '()))

(define (sdl-event-con-button?)
  (or (sdl-event-con-button-up?)
      (sdl-event-con-button-down?)))

(define (sdl-event-con-button-pressed?)
  (if (sdl-event-con-button?)
      (= 1 (ftype-ref sdl-c-controller-button-event (state)
		      (ftype-&ref sdl-c-event (cbutton) event-obj)))
      '()))

(define (sdl-event-con-button)
  (if (sdl-event-con-button?)
      (let
	  ([button (ftype-ref sdl-c-controller-button-event (button)
			      (ftype-&ref sdl-c-event (cbutton) event-obj))])
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
      (ftype-ref sdl-c-controller-button-event (which)
		 (ftype-&ref sdl-c-event (cbutton) event-obj))
      '()))

(define (sdl-event-audio-device-which)
  (if (or (sdl-event-audio-device-added?)
	  (sdl-event-audio-device-removed?))
      (ftype-ref sdl-c-audio-device-event (which)
		 (ftype-&ref sdl-c-event (adevice) event-obj))
      '()))

(define (sdl-event-audio-device-iscapture?)
  (if (or (sdl-event-audio-device-added?)
	  (sdl-event-audio-device-removed?))
      (not (= 0 (ftype-ref sdl-c-audio-device-event (iscapture)
			   (ftype-&ref sdl-c-event (adevice) event-obj))))
      '()))

(define (sdl-event-touch-id)
  (cond
   ((or (sdl-event-finger-down?)
	(sdl-event-finger-up?)
	(sdl-event-finger-motion?))
    (ftype-ref sdl-c-touch-finger-event (touchId)
	       (ftype-&ref sdl-c-event (tfinger) event-obj)))
   ((or (sdl-event-dollar-gesture?)
	(sdl-event-dollar-record?))
    (ftype-ref sdl-c-dollar-gesture-event (touchId)
	       (ftype-&ref sdl-c-event (dgesture) event-obj)))
   ((sdl-event-multi-gesture?)
    (ftype-ref sdl-c-multi-gesture-event (touchId)
	       (ftype-&ref sdl-c-event (mgesture) event-obj)))
   (else '())))

(define (sdl-event-finger-id)
  (if (or (sdl-event-finger-down?)
	  (sdl-event-finger-up?)
	  (sdl-event-finger-motion?))
      (ftype-ref sdl-c-touch-finger-event (fingerId)
		 (ftype-&ref sdl-c-event (tfinger) event-obj))
      '()))

(define (sdl-event-gesture-id)
  (if (or (sdl-event-dollar-gesture?)
	  (sdl-event-dollar-record?))
      (ftype-ref sdl-c-dollar-gesture-event (gestureId)
		 (ftype-&ref sdl-c-event (dgesture) event-obj))
      '()))

(define (sdl-event-gesture-num-fingers)
  (cond
   ((or (sdl-event-dollar-gesture?)
	(sdl-event-dollar-record?))
    (ftype-ref sdl-c-dollar-gesture-event (numFingers)
	       (ftype-&ref sdl-c-event (dgesture) event-obj)))
   ((sdl-event-multi-gesture?)
    (ftype-ref sdl-c-multi-gesture-event (numFingers)
	       (ftype-&ref sdl-c-event (mgesture) event-obj)))
   (else '())))

(define (sdl-event-multi-gesture-dTheta)
  (if (sdl-event-multi-gesture?)
      (ftype-ref sdl-c-multi-gesture-event (dTheta)
		 (ftype-&ref sdl-c-event (mgesture) event-obj))
      '()))

(define (sdl-event-multi-gesture-dDist)
  (if (sdl-event-multi-gesture?)
      (ftype-ref sdl-c-multi-gesture-event (dDist)
		 (ftype-&ref sdl-c-event (mgesture) event-obj))
      '()))

(define (sdl-event-dollar-gesture-error)
  (if (or (sdl-event-dollar-gesture?)
	  (sdl-event-dollar-record?))
      (ftype-ref sdl-c-dollar-gesture-event (error)
		 (ftype-&ref sdl-c-event (dgesture) event-obj))
      '()))

(define (sdl-event-touch-x)
  (cond
   ((or (sdl-event-finger-down?)
	(sdl-event-finger-up?)
	(sdl-event-finger-motion?))
    (ftype-ref sdl-c-touch-finger-event (x)
	       (ftype-&ref sdl-c-event (tfinger) event-obj)))
   ((or (sdl-event-dollar-gesture?)
	(sdl-event-dollar-record?))
    (ftype-ref sdl-c-dollar-gesture-event (x)
	       (ftype-&ref sdl-c-event (dgesture) event-obj)))
   ((sdl-event-multi-gesture?)
    (ftype-ref sdl-c-multi-gesture-event (x)
	       (ftype-&ref sdl-c-event (mgesture) event-obj)))
   (else '())))

(define (sdl-event-touch-y)
  (cond
   ((or (sdl-event-finger-down?)
	(sdl-event-finger-up?)
	(sdl-event-finger-motion?))
    (ftype-ref sdl-c-touch-finger-event (y)
	       (ftype-&ref sdl-c-event (tfinger) event-obj)))
   ((or (sdl-event-dollar-gesture?)
	(sdl-event-dollar-record?))
    (ftype-ref sdl-c-dollar-gesture-event (y)
	       (ftype-&ref sdl-c-event (dgesture) event-obj)))
   ((sdl-event-multi-gesture?)
    (ftype-ref sdl-c-multi-gesture-event (y)
	       (ftype-&ref sdl-c-event (mgesture) event-obj)))
   (else '())))

(define (sdl-event-touch-dx)
  (if (or (sdl-event-finger-down?)
	  (sdl-event-finger-up?)
	  (sdl-event-finger-motion?))
      (ftype-ref sdl-c-touch-finger-event (dx)
		 (ftype-&ref sdl-c-event (tfinger) event-obj))
      '()))

(define (sdl-event-touch-dy)
  (if (or (sdl-event-finger-down?)
	  (sdl-event-finger-up?)
	  (sdl-event-finger-motion?))
      (ftype-ref sdl-c-touch-finger-event (dy)
		 (ftype-&ref sdl-c-event (tfinger) event-obj))
      '()))

(define (sdl-event-touch-pressure)
  (if (or (sdl-event-finger-down?)
	  (sdl-event-finger-up?)
	  (sdl-event-finger-motion?))
      (ftype-ref sdl-c-touch-finger-event (pressure)
		 (ftype-&ref sdl-c-event (tfinger) event-obj))
      '()))

(define (sdl-event-drop-file)
  ;; This is a little messy.
  (define (read-all)
    (letrec
	([e-ptr (ftype-&ref sdl-c-event (drop) event-obj)]
	 [c-ptr (ftype-ref sdl-c-drop-event (file) e-ptr)]
	 [loop (lambda (x)
		 (let
		     ([c (ftype-ref char () c-ptr x)])
		   (if (char=? c #\nul)
		       '()
		       (cons c (loop (+ x 1))))))])
      (let
	  ([chars (loop 0)])
	;; Free the memory
	(sdl-free c-ptr)
	;; Eval to string
	(list->string chars))))
  (if (or (sdl-event-drop-file?)
	  (sdl-event-drop-text?))
      (read-all)
      '()))
