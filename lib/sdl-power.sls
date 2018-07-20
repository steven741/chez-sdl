;;;; -*- mode: Scheme; -*-

;;;;
;;;;
;;;;


(define (sdl-get-power-info)
  (define _get-power-info
    (foreign-procedure "SDL_GetPowerInfo" ((* int) (* int)) int))

  (define %
    (make-ftype-pointer int (foreign-alloc (ftype-sizeof int))))

  (define t
    (make-ftype-pointer int (foreign-alloc (ftype-sizeof int))))

  (define s (_get-power-info t %))

  (define ret
    (list (ftype-ref int () t)
	  (ftype-ref int () %)
	  (cond
	   ((= s 0) 'SDL-POWERSTATE-UNKNOWN)
	   ((= s 1) 'SDL-POWERSTATE-ON-BATTERY)
	   ((= s 2) 'SDL-POWERSTATE-NO-BATTERY)
	   ((= s 3) 'SDL-POWERSTATE-CHARGING)
	   ((= s 4) 'SDL-POWERSTATE-CHARGED))))

  (foreign-free (ftype-pointer-address %))
  (foreign-free (ftype-pointer-address t))

  ret)
