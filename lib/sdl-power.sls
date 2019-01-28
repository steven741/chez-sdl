;;;; -*- mode: Scheme; -*-

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; C Function Bindings ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define *sdl-get-power-info* (sdl-procedure "SDL_GetPowerInfo" ((* int) (* int)) int))


;;;;;;;;;;;;;;;;;;;
;;; Marshalling ;;;
;;;;;;;;;;;;;;;;;;;

(define (sdl-get-power-info)
  (let*
      ((t (make-ftype-pointer int (foreign-alloc (ftype-sizeof int))))
       (% (make-ftype-pointer int (foreign-alloc (ftype-sizeof int))))

       (state (*sdl-get-power-info* t %))
       (data  (list (ftype-ref int () t)
		    (ftype-ref int () %)
		    (cond
		     ((= state 0) 'SDL-POWERSTATE-UNKNOWN)
		     ((= state 1) 'SDL-POWERSTATE-ON-BATTERY)
		     ((= state 2) 'SDL-POWERSTATE-NO-BATTERY)
		     ((= state 3) 'SDL-POWERSTATE-CHARGING)
		     ((= state 4) 'SDL-POWERSTATE-CHARGED)))))
    (foreign-free (ftype-pointer-address t))
    (foreign-free (ftype-pointer-address %))
    data))
