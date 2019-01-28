;;;; -*- mode: Scheme; -*-

;;;;;;;;;;;;;;;;;;;;;;;
;;; Foreign C Types ;;;
;;;;;;;;;;;;;;;;;;;;;;;

(define-ftype sdl-hint-callback
  (function (void* string string string) void))

(define-ftype sdl-c-version
  (struct (major unsigned-8)
	  (minor unsigned-8)
	  (patch unsigned-8)))


;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; C Function Bindings ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define *sdl-init*                   (sdl-procedure "SDL_Init" (unsigned-32) int))
(define *sdl-init-sub-system*        (sdl-procedure "SDL_InitSubSystem" (unsigned-32) int))
(define *sdl-quit*                   (sdl-procedure "SDL_Quit" () void))
(define *sdl-quit-sub-system*        (sdl-procedure "SDL_QuitSubSystem" (unsigned-32) void))
(define *sdl-set-main-ready*         (sdl-procedure "SDL_SetMainReady" () void))
(define *sdl-was-init*               (sdl-procedure "SDL_WasInit" (unsigned-32) unsigned-32))

(define *sdl-add-hint-callback*      (sdl-procedure "SDL_AddHintCallback" (string (* sdl-hint-callback) void*) void))
(define *sdl-clear-hints*            (sdl-procedure "SDL_ClearHints" () void))
(define *sdl-del-hint-callback*      (sdl-procedure "SDL_DelHintCallback" (string (* sdl-hint-callback) void*) void))
(define *sdl-get-hint*               (sdl-procedure "SDL_GetHint" (string) string))
(define *sdl-get-hint-boolean*       (sdl-procedure "SDL_GetHintBoolean" (string int) int))
(define *sdl-set-hint*               (sdl-procedure "SDL_SetHint" (string string) int))
(define *sdl-set-hint-with-priority* (sdl-procedure "SDL_SetHintWithPriority" (string string int) int))

(define *sdl-clear-error*            (sdl-procedure "SDL_ClearError" () void))
(define *sdl-get-error*              (sdl-procedure "SDL_GetError" () string))
(define *sdl-set-error*              (sdl-procedure "SDL_SetError" (string) int))

(define *sdl-get-version*            (sdl-procedure "SDL_GetVersion" ((* sdl-c-version)) void))
(define *sdl-get-revision*           (sdl-procedure "SDL_GetRevision" () string))
(define *sdl-get-revision-number*    (sdl-procedure "SDL_GetRevisionNumber" () int))


;;;;;;;;;;;;;;;;;;;
;;; Marshalling ;;;
;;;;;;;;;;;;;;;;;;;

(define sdl-set-main-ready   *sdl-set-main-ready*)
(define sdl-clear-hints!     *sdl-clear-hints*)
(define sdl-get-revision     *sdl-get-revision*)
(define sdl-get-revision-num *sdl-get-revision-number*)
(define sdl-clear-error!     *sdl-clear-error*)
(define sdl-get-error        *sdl-get-error*)

(define (sdl-init first-flag . other-flags)
  (set! event-obj
	(make-ftype-pointer sdl-c-event
			    (foreign-alloc (ftype-sizeof sdl-c-event))))

  (*sdl-init* (fold-left bitwise-ior first-flag other-flags)))

(define (sdl-quit)
  (foreign-free (ftype-pointer-address event-obj))
  (*sdl-quit*))

(define (sdl-get-hint-boolean name default)
  (= SDL-TRUE (*sdl-get-hint-boolean* name (if (default) SDL-TRUE SDL-FALSE))))

(define (sdl-set-hint! name value)
  (= SDL-TRUE (*sdl-set-hint* name value)))

(define (sdl-set-hint-w/-priority! name value priority)
  (= SDL-TRUE (*sdl-set-hint-with-priority* name
					    value
					    (cond ((eq? 'SDL-HINT-DEFAULT  priority) 0)
						  ((eq? 'SDL-HINT-NORMAL   priority) 1)
						  ((eq? 'SDL-HINT-OVERRIDE priority) 2)))))

(define (sdl-get-version)
  (let*
      ((data-size (ftype-sizeof sdl-c-version))
       (data-cmem (foreign-alloc data-size))
       (data-cptr (make-ftype-pointer sdl-c-event data-cmem)))
    (*sdl-get-version* data-cptr)
    (let
	((return (list (ftype-ref sdl-c-version (major) data-cptr)
		       (ftype-ref sdl-c-version (minor) data-cptr)
		       (ftype-ref sdl-c-version (patch) data-cptr))))
      (foreign-free data-cmem)
      return)))
