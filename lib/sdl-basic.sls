;;;; -*- mode: Scheme; -*-

(define sdl-free-rw SDL_FreeRW)


(define (sdl-make-hint-callback procedure)
  (let
      ((proc (foreign-callable __collect_safe
			       (lambda (userdata name old-value new-value)
				 (procedure name old-value new-value))
			       (void* string string string)
			       void)))
    (lock-object proc)
    (foreign-callable-entry-point proc)))


(define (sdl-init first-flag . other-flags)
  (set! *event-obj*
	(make-ftype-pointer SDL_Event
			    (foreign-alloc (ftype-sizeof SDL_Event))))

  (SDL_Init (fold-left bitwise-ior first-flag other-flags)))

(define (sdl-init-sub-system first-flag . other-flags)
  (SDL_InitSubSystem (fold-left bitwise-ior first-flag other-flags)))

(define (sdl-quit)
  (foreign-free (ftype-pointer-address *event-obj*))
  (SDL_Quit))

(define (sdl-quit-sub-system first-flag . other-flags)
  (SDL_QuitSubSystem (fold-left bitwise-ior first-flag other-flags)))

(define sdl-set-main-ready! SDL_SetMainReady)

(define (sdl-init? first-flag . other-flags)
  (let ((mask (fold-left bitwise-ior first-flag other-flags)))
    (= (SDL_WasInit mask) mask)))


(define (sdl-add-hint-callback! name callback)
  (SDL_AddHintCallback name callback 0))

(define sdl-clear-hints! SDL_ClearHints)

(define (sdl-del-hint-callback! name callback)
  (SDL_DelHintCallback name callback 0))

(define sdl-get-hint SDL_GetHint)

(define (sdl-get-hint-boolean name default)
  (= SDL-TRUE (SDL_GetHintBoolean name (if (default) SDL-TRUE SDL-FALSE))))

(define (sdl-set-hint! name value)
  (= SDL-TRUE (SDL_SetHint name value)))

(define (sdl-set-hint-w/-priority! name value priority)
  (= SDL-TRUE (SDL_SetHintWithPriority name value priority)))


(define sdl-clear-error! SDL_ClearError)
(define sdl-get-error    SDL_GetError)
(define sdl-set-error!   SDL_SetError)


(define (sdl-get-version)
  (let*
      ((data-size (ftype-sizeof SDL_version))
       (data-addr (foreign-alloc data-size))
       (data-fptr (make-ftype-pointer SDL_version data-addr)))
    (SDL_GetVersion data-fptr)
    (let
	((version (list (ftype-ref SDL_version (major) data-fptr)
			(ftype-ref SDL_version (minor) data-fptr)
			(ftype-ref SDL_version (patch) data-fptr))))
      (foreign-free data-addr)
      version)))

(define sdl-get-revision     SDL_GetRevision)
(define sdl-get-revision-num SDL_GetRevisionNumber)
