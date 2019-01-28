;;;; -*- mode: Scheme; -*-

;;;;;;;;;;;;;;;;;;;;;;;
;;; Foreign C Types ;;;
;;;;;;;;;;;;;;;;;;;;;;;

(define-ftype sdl-c-haptic void*)

(define-ftype sdl-c-haptic-direction
  (struct (type unsigned-8)
	  (dir  (array 3 integer-32))))

(define-ftype sdl-c-haptic-constant
  (struct (type          unsigned-16)
	  (direction     sdl-c-haptic-direction)
	  (length        unsigned-32)
	  (delay         unsigned-16)
	  (button        unsigned-16)
	  (interval      unsigned-16)
	  (level         integer-16)
	  (attack-length unsigned-16)
	  (attack-level  unsigned-16)
	  (fade-length   unsigned-16)
	  (fade-level    unsigned-16)))

(define-ftype sdl-c-haptic-periodic
  (struct (type          unsigned-16)
	  (direction     sdl-c-haptic-direction)
	  (length        unsigned-32)
	  (delay         unsigned-16)
	  (button        unsigned-16)
	  (interval      unsigned-16)
	  (period        unsigned-16)
	  (magnitude     integer-16)
	  (offset        integer-16)
	  (phase         unsigned-16)
	  (attack-length unsigned-16)
	  (attack-level  unsigned-16)
	  (fade-length   unsigned-16)
	  (fade-level    unsigned-16)))

(define-ftype sdl-c-haptic-condition
  (struct (type          unsigned-16)
	  (direction     sdl-c-haptic-direction)
	  (length        unsigned-32)
	  (delay         unsigned-16)
	  (button        unsigned-16)
	  (interval      unsigned-16)
	  (right-sat     (array 3 unsigned-16))
	  (left-sat      (array 3 unsigned-16))
	  (right-coeff   (array 3 integer-16))
	  (left-coeff    (array 3 integer-16))
	  (deadband      (array 3 unsigned-16))
	  (center        (array 3 integer-16))))

(define-ftype sdl-c-haptic-ramp
  (struct (type          unsigned-16)
	  (direction     sdl-c-haptic-direction)
	  (length        unsigned-32)
	  (delay         unsigned-16)
	  (button        unsigned-16)
	  (interval      unsigned-16)
	  (start         integer-16)
	  (end           integer-16)
	  (attack-length unsigned-16)
	  (attack-level  unsigned-16)
	  (fade-length   unsigned-16)
	  (fade-level    unsigned-16)))

(define-ftype sdl-c-haptic-left-right
  (struct (type            unsigned-16)
	  (length          unsigned-32)
	  (large-magnitude unsigned-16)
	  (small-magnitude unsigned-16)))

(define-ftype sdl-c-haptic-custom
  (struct (type          unsigned-16)
	  (direction     sdl-c-haptic-direction)
	  (length        unsigned-32)
	  (delay         unsigned-16)
	  (button        unsigned-16)
	  (interval      unsigned-16)
	  (channels      unsigned-8)
	  (period        unsigned-16)
	  (samples       unsigned-16)
	  (data          (* unsigned-16))
	  (attack-length unsigned-16)
	  (attack-level  unsigned-16)
	  (fade-length   unsigned-16)
	  (fade-level    unsigned-16)))

(define-ftype sdl-c-haptic-effect
  (struct (type       unsigned-16)
	  (constant   sdl-c-haptic-constant)
	  (periodic   sdl-c-haptic-periodic)
	  (condition  sdl-c-haptic-condition)
	  (ramp       sdl-c-haptic-ramp)
	  (left-right sdl-c-haptic-left-right)
	  (custom     sdl-c-haptic-custom)))


;;;;;;;;;;;;;;;;;;;;;;
;;; Scheme Records ;;;
;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; C Function Bindings ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define *sdl-haptic-close*               (sdl-procedure "SDL_HapticClose" ((* sdl-c-haptic)) void))
(define *sdl-haptic-destroy-effect*      (sdl-procedure "SDL_HapticDestroyEffect" ((* sdl-c-haptic) int) void))
(define *sdl-haptic-effect-supported*    (sdl-procedure "SDL_HapticEffectSupported" ((* sdl-c-haptic) (* sdl-c-haptic-effect)) int))
(define *sdl-haptic-get-effect-status*   (sdl-procedure "SDL_HapticGetEffectStatus" ((* sdl-c-haptic) int) int))
(define *sdl-haptic-index*               (sdl-procedure "SDL_HapticIndex" ((* sdl-c-haptic)) int))
(define *sdl-haptic-name*                (sdl-procedure "SDL_HapticName" (int) string))
(define *sdl-haptic-new-effect*          (sdl-procedure "SDL_HapticNewEffect" ((* sdl-c-haptic) (* sdl-c-haptic-effect)) int))
(define *sdl-haptic-num-axes*            (sdl-procedure "SDL_HapticNumAxes" ((* sdl-c-haptic)) int))
(define *sdl-haptic-num-effects*         (sdl-procedure "SDL_HapticNumEffects" ((* sdl-c-haptic)) int))
(define *sdl-haptic-num-effects-playing* (sdl-procedure "SDL_HapticNumEffectsPlaying" ((* sdl-c-haptic)) int))
(define *sdl-haptic-open*                (sdl-procedure "SDL_HapticOpen" (int) (* sdl-c-haptic)))
(define *sdl-haptic-open-from-joystick*  (sdl-procedure "SDL_HapticOpenFromJoystick" ((* sdl-c-joystick)) (* sdl-c-haptic)))
(define *sdl-haptic-open-from-mouse*     (sdl-procedure "SDL_HapticOpenFromMouse" () (* sdl-c-haptic)))
(define *sdl-haptic-opened*              (sdl-procedure "SDL_HapticOpened" (int) int))
(define *sdl-haptic-pause*               (sdl-procedure "SDL_HapticPause" ((* sdl-c-haptic)) int))
(define *sdl-haptic-query*               (sdl-procedure "SDL_HapticQuery" ((* sdl-c-haptic)) unsigned))
(define *sdl-haptic-rumble-init*         (sdl-procedure "SDL_HapticRumbleInit" ((* sdl-c-haptic)) int))
(define *sdl-haptic-rumble-play*         (sdl-procedure "SDL_HapticRumblePlay" ((* sdl-c-haptic) float unsigned-32) int))
(define *sdl-haptic-rumble-stop*         (sdl-procedure "SDL_HapticRumbleStop" ((* sdl-c-haptic)) int))
(define *sdl-haptic-rumble-supported*    (sdl-procedure "SDL_HapticRumbleSupported" ((* sdl-c-haptic)) int))
(define *sdl-haptic-run-effect*          (sdl-procedure "SDL_HapticRunEffect" ((* sdl-c-haptic) int unsigned-32) int))
(define *sdl-haptic-set-autocenter*      (sdl-procedure "SDL_HapticSetAutocenter" ((* sdl-c-haptic) int) int))
(define *sdl-haptic-set-gain*            (sdl-procedure "SDL_HapticSetGain" ((* sdl-c-haptic) int) int))
(define *sdl-haptic-stop-all*            (sdl-procedure "SDL_HapticStopAll" ((* sdl-c-haptic)) int))
(define *sdl-haptic-stop-effect*         (sdl-procedure "SDL_HapticStopEffect" ((* sdl-c-haptic) int) int))
(define *sdl-haptic-unpause*             (sdl-procedure "SDL_HapticUnpause" ((* sdl-c-haptic)) int))
(define *sdl-haptic-update-effect*       (sdl-procedure "SDL_HapticUpdateEffect" ((* sdl-c-haptic) int (* sdl-c-haptic-effect)) int))
(define *sdl-joystick-is-haptic*         (sdl-procedure "SDL_JoystickIsHaptic" ((* sdl-c-joystick)) int))
(define *sdl-mouse-is-haptic*            (sdl-procedure "SDL_MouseIsHaptic" () int))
(define *sdl-num-haptics*                (sdl-procedure "SDL_NumHaptics" () int))


;;;;;;;;;;;;;;;;;;;
;;; Marshalling ;;;
;;;;;;;;;;;;;;;;;;;


