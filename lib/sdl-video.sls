;;;; -*- mode: Scheme; -*-

;;;;
;;;;
;;;;

(define sdl-rw-from-file!
  (foreign-procedure "SDL_RWFromFile" (string string) void*))

(define sdl-load-bmp-rw!
  (foreign-procedure "SDL_LoadBMP_RW" (void* int) (* sdl-c-surface)))



;;;
;;;
;;;

(define SDL-WINDOW-FULLSCREEN         #x00000001)
(define SDL-WINDOW-OPENGL             #x00000002)
(define SDL-WINDOW-SHOWN              #x00000004)
(define SDL-WINDOW-HIDDEN             #x00000008)
(define SDL-WINDOW-BORDERLESS         #x00000010)
(define SDL-WINDOW-RESIZABLE          #x00000020)
(define SDL-WINDOW-MINIMIZED          #x00000040)
(define SDL-WINDOW-MAXIMIZED          #x00000080)
(define SDL-WINDOW-INPUT-GRABBED      #x00000100)
(define SDL-WINDOW-INPUT-FOCUS        #x00000200)
(define SDL-WINDOW-MOUSE-FOCUS        #x00000400)
(define SDL-WINDOW-FULLSCREEN-DESKTOP (bitwise-ior SDL-WINDOW-FULLSCREEN
						   #x00001000))
(define SDL-WINDOW-FOREIGN            #x00000800)
(define SDL-WINDOW-ALLOW-HIGHDPI      #x00002000)


(define SDL-WINDOWPOS-UNDEFINED-MASK #x1FFF0000)

(define (SDL-WINDOWPOS-UNDEFINED-DISPLAY X)
  (bitwise-ior SDL-WINDOWPOS-UNDEFINED-MASK X))

(define SDL-WINDOWPOS-UNDEFINED
  (SDL-WINDOWPOS-UNDEFINED-DISPLAY 0))

(define (SDL-WINDOWPOS-ISUNDEFINED X)
  (= (bitwise-and X #xFFFF0000) SDL-WINDOWPOS-UNDEFINED-MASK))


(define SDL-WINDOWPOS-CENTERED-MASK #x2FFF0000)

(define (SDL-WINDOWPOS-CENTERED-DISPLAY X)
  (bitwise-ior SDL-WINDOWPOS-CENTERED-MASK X))

(define SDL-WINDOWPOS-CENTERED
  (SDL-WINDOWPOS-CENTERED-DISPLAY 0))

(define (SDL-WINDOWPOS-ISCENTERED X)
  (= (bitwise-and X #xFFFF0000) SDL-WINDOWPOS-CENTERED-MASK))


(define SDL-RENDERER-SOFTWARE      #x00000001)
(define SDL-RENDERER-ACCELERATED   #x00000002)
(define SDL-RENDERER-PRESENTVSYNC  #x00000004)
(define SDL-RENDERER-TARGETTEXTURE #x00000008)


(define-ftype sdl-c-rect
  (struct
    [x int]
    [y int]
    [w int]
    [h int]))

(define-ftype sdl-c-point
  (struct
    [x int]
    [y int]))

(define-ftype sdl-c-color
  (struct
    [r unsigned-8]
    [g unsigned-8]
    [b unsigned-8]
    [a unsigned-8]))

(define-ftype sdl-c-palette
  (struct
    [ncolors  int]
    [colors   (* sdl-c-color)]
    [version  unsigned-32]
    [refcount int]))

(define-ftype sdl-c-pixel-format
  (struct
    [format          unsigned-32]
    [palette         (* sdl-c-palette)]
    [bits-per-pixel  unsigned-8]
    [bytes-per-pixel unsigned-8]
    [padding         (array 2 unsigned-8)]
    [r-mask          unsigned-32]
    [g-mask          unsigned-32]
    [b-mask          unsigned-32]
    [a-mask          unsigned-32]
    [r-loss          unsigned-8]
    [g-loss          unsigned-8]
    [b-loss          unsigned-8]
    [a-loss          unsigned-8]
    [r-shift         unsigned-8]
    [g-shift         unsigned-8]
    [b-shift         unsigned-8]
    [a-shift         unsigned-8]
    [refcount        int]
    [next            (* sdl-c-pixel-format)]))

(define-ftype sdl-c-surface
  (struct
    [flags     unsigned-32]
    [format    (* sdl-c-pixel-format)]
    [w         int]
    [h         int]
    [pitch     int]
    [pixels    void*]
    [userdata  void*]
    [locked    int]
    [lock-data void*]
    [clip-rect sdl-c-rect]
    [b-map     void*] ; NOTE: Should be SDL_BlitMap
    [refcount  int]))

(define-ftype sdl-c-window
  (struct
   [flags unsigned-32]))

(define-ftype sdl-c-renderer
  (struct
   [flags unsigned-32]))

(define-ftype sdl-c-texture
  (struct
   [flags unsigned-32]))



(define-record-type sdl-rect
  (fields x y w h))

(define-record-type sdl-point
  (fields x y))

(define (sdl-surface-fmt s) 0)

(define (sdl-surface-w s) 0)

(define (sdl-surface-h s) 0)

(define (sdl-surface-pitch s) 0)

(define (sdl-surface-pxl s) 0)



;;;         ;;;
;;; Windows ;;;
;;;         ;;;

(define sdl-create-window
  (foreign-procedure "SDL_CreateWindow"
		     (string int int int int unsigned-32) (* sdl-c-window)))

(define sdl-destroy-window
  (foreign-procedure "SDL_DestroyWindow" ((* sdl-c-window)) void))

(define sdl-disable-screen-saver
  (foreign-procedure "SDL_DisableScreenSaver" () void))

(define sdl-enable-screen-saver
  (foreign-procedure "SDL_EnableScreenSaver" () void))

(define sdl-get-window-surface
  (foreign-procedure "SDL_GetWindowSurface" (void*) (* sdl-c-surface)))

(define sdl-update-window-surface
  (foreign-procedure "SDL_UpdateWindowSurface" (void*) int))



;;;          ;;;
;;; Renderer ;;;
;;;          ;;;

(define sdl-create-renderer
  (foreign-procedure "SDL_CreateRenderer"
		     ((* sdl-c-window) int unsigned-32)
		     (* sdl-c-renderer)))


(define sdl-create-software-renderer
  (foreign-procedure "SDL_CreateSoftwareRenderer"
		     ((* sdl-c-surface))
		     (* sdl-c-renderer)))


(define sdl-create-texture
  (foreign-procedure "SDL_CreateTexture"
		     ((* sdl-c-renderer) unsigned-32 int int int)
		     (* sdl-c-texture)))


(define sdl-create-texture-from-surface
  (foreign-procedure "SDL_CreateTextureFromSurface"
		     ((* sdl-c-renderer) (* sdl-c-surface))
		     (* sdl-c-texture)))


(define sdl-destroy-renderer
  (foreign-procedure "SDL_DestroyRenderer" ((* sdl-c-renderer)) void))


(define sdl-destroy-texture
  (foreign-procedure "SDL_DestroyTexture" ((* sdl-c-texture)) void))


(define sdl-get-num-render-drivers
  (foreign-procedure "SDL_GetNumRenderDrivers" () int))


(define _sdl-get-render-draw-blend-mode
  (foreign-procedure "SDL_GetRenderDrawBlendMode"
		     ((* sdl-c-renderer) (* int))
		     int))

(define (sdl-get-render-draw-blend-mode renderer)
  (let* ((blend (make-ftype-pointer int (foreign-alloc (ftype-sizeof int))))
	 (error (_sdl-get-render-draw-blend-mode renderer blend))
	 (blend-val (ftype-ref int () blend)))
    (foreign-free (ftype-pointer-address blend))
    (if (= 0 error)
	blend-val
	'())))


(define _sdl-get-render-draw-color
  (foreign-procedure "SDL_GetRenderDrawColor"
		     ((* sdl-c-renderer)
		      (* unsigned-8)
		      (* unsigned-8)
		      (* unsigned-8)
		      (* unsigned-8))
		     int))

(define (sdl-get-render-draw-color renderer)
  (let* ((r (make-ftype-pointer unsigned-8 (foreign-alloc 1)))
	 (g (make-ftype-pointer unsigned-8 (foreign-alloc 1)))
	 (b (make-ftype-pointer unsigned-8 (foreign-alloc 1)))
	 (a (make-ftype-pointer unsigned-8 (foreign-alloc 1)))

	 (error   (_sdl-get-render-draw-color renderer r g b a))
	 (color-r (ftype-ref unsigned-8 () r))
	 (color-g (ftype-ref unsigned-8 () g))
	 (color-b (ftype-ref unsigned-8 () b))
	 (color-a (ftype-ref unsigned-8 () a)))
    (foreign-free (ftype-pointer-address color-r))
    (foreign-free (ftype-pointer-address color-g))
    (foreign-free (ftype-pointer-address color-b))
    (foreign-free (ftype-pointer-address color-a))
    (if (= 0 error)
	(list color-r color-g color-b color-a)
	'())))


(define sdl-get-render-target
  (foreign-procedure "SDL_GetRenderTarget"
		     ((* sdl-c-renderer))
		     (* sdl-c-texture)))


(define sdl-get-renderer
  (foreign-procedure "SDL_GetRenderer"
		     ((* sdl-c-window))
		     (* sdl-c-renderer)))


;;; TODO: SDL_GetRenderDriverInfo, SDL_GetRendererInfo,
;;; SDL_GetRendererOutputSize, SDL_GetTextureAlphaMod,
;;; SDL_GetTextureBlendMode, SDL_GetTextureColorMod


(define _sdl-render-clear
  (foreign-procedure "SDL_RenderClear" ((* sdl-c-renderer)) int))

(define (sdl-render-clear renderer)
  (= 0 (_sdl-render-clear renderer)))


(define _sdl-render-copy
  (foreign-procedure "SDL_RenderCopy"
		     ((* sdl-c-renderer)
		      (* sdl-c-texture)
		      (* sdl-c-rect)
		      (* sdl-c-rect))
		     int))

(define (sdl-render-copy renderer texture . opts)
  (if (null? opts)
      (= 0 (_sdl-render-copy renderer
			     texture
			     (make-ftype-pointer sdl-c-rect 0)
			     (make-ftype-pointer sdl-c-rect 0)))
      (let* ((c-rect (lambda (rect)
		       (let ((c-rect
			      (make-ftype-pointer
			       sdl-c-rect
			       (foreign-alloc (ftype-sizeof sdl-c-rect)))))
			 (ftype-set! sdl-c-rect (x) c-rect (sdl-rect-x rect))
			 (ftype-set! sdl-c-rect (y) c-rect (sdl-rect-y rect))
			 (ftype-set! sdl-c-rect (w) c-rect (sdl-rect-w rect))
			 (ftype-set! sdl-c-rect (h) c-rect (sdl-rect-h rect))
			 c-rect)))
	     (c-src (c-rect (car opts)))
	     (c-dst (c-rect (cadr opts))))
	(let ((ret (= 0 (_sdl-render-copy renderer texture c-src c-dst))))
	  (foreign-free (ftype-pointer-address c-src))
	  (foreign-free (ftype-pointer-address c-dst))
	  ret))))

;;; TODO: SDL_RenderCopyEx


(define sdl-render-present
  (foreign-procedure "SDL_RenderPresent" ((* sdl-c-renderer)) void))



;;;        ;;;
;;; Pixels ;;;
;;;        ;;;

(define sdl-map-rgb
  (foreign-procedure "SDL_MapRGB"
		     ((* sdl-c-pixel-format)
		      unsigned-8
		      unsigned-8
		      unsigned-8) unsigned-32))



;;;      ;;;
;;; Rect ;;;
;;;      ;;;

(define _sdl-enclose-points
  (foreign-procedure "SDL_EnclosePoints"
		     ((* sdl-c-point) int (* sdl-c-rect) (* sdl-c-rect))
		     int))

;; TODO
(define (sdl-enclose-points points . clip)
  (define (c-points pnts len)
    (letrec ((mem (make-ftype-pointer sdl-c-point
				      (foreign-alloc
				       (* len
					  (ftype-sizeof sdl-c-point)))))
	     (loop (lambda (i pnts)
		     (if (= i len)
			 mem
			 (let ((c-pnt (ftype-&ref sdl-c-point () mem i))
			       (pnt (car pnts)))
			   (ftype-set! sdl-c-point (x) c-pnt (sdl-point-x pnt))
			   (ftype-set! sdl-c-point (y) c-pnt (sdl-point-y pnt))
			   (loop (+ i 1) (cdr pnts)))))))
      (loop 0 pnts)))
  (let ((len (length points)))
    ;; (foreign-free (ftype-pointer-address %))
    (c-points points len)))



;;;          ;;;
;;; Surfaces ;;;
;;;          ;;;

(define sdl-free-surface
  (foreign-procedure "SDL_FreeSurface" ((* sdl-c-surface)) void))


(define (sdl-load-bmp file)
  (sdl-load-bmp-rw! (sdl-rw-from-file! file "rb") 1))


(define sdl-fill-rect
  (foreign-procedure "SDL_FillRect"
		     ((* sdl-c-surface) void* unsigned-32) int))



;;;           ;;;
;;; Clipboard ;;;
;;;           ;;;

(define sdl-get-clipboard-text
  (foreign-procedure "SDL_GetClipboardText" () string))

(define _sdl-has-clipboard-text?
  (foreign-procedure "SDL_HasClipboardText" () int))

(define sdl-has-clipboard-text?
  (= 1 (_sdl-has-clipboard-text?)))

(define _sdl-set-clipboard-text!
  (foreign-procedure "SDL_SetClipboardText" (string) int))

(define (sdl-set-clipboard-text! text)
  (= 1 (_sdl-set-clipboard-text! text)))
