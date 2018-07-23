;;;; -*- mode: Scheme; -*-

;;;;
;;;;
;;;;


(define _sdl-get-power-info
  (foreign-procedure "SDL_GetPowerInfo" ((* int) (* int)) int))


(define (sdl-get-power-info)
  (let*
      (;; Allocate Memory
       [% (make-ftype-pointer int (foreign-alloc (ftype-sizeof int)))]
       [t (make-ftype-pointer int (foreign-alloc (ftype-sizeof int)))]

       ;; Call the function and build a list
       [_info (_sdl-get-power-info t %)]
       [info (list (ftype-ref int () t)
		   (ftype-ref int () %)
		   (cond
		    ((= _info 0) 'SDL-POWERSTATE-UNKNOWN)
		    ((= _info 1) 'SDL-POWERSTATE-ON-BATTERY)
		    ((= _info 2) 'SDL-POWERSTATE-NO-BATTERY)
		    ((= _info 3) 'SDL-POWERSTATE-CHARGING)
		    ((= _info 4) 'SDL-POWERSTATE-CHARGED)))])
    ;; Release Allocated Memory
    (foreign-free (ftype-pointer-address %))
    (foreign-free (ftype-pointer-address t))

    ;; Eval to the list of data
    info))
