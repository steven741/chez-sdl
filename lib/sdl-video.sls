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

(define (c-point->point c-point)
  (make-sdl-point (ftype-ref sdl-c-point (x) c-point)
		  (ftype-ref sdl-c-point (y) c-point)))

(define (point->c-point point)
  (let ((c-point (make-ftype-pointer
		  sdl-c-point
		  (foreign-alloc (ftype-sizeof sdl-c-point)))))
    (ftype-set! sdl-c-point (x) c-point (sdl-point-x point))
    (ftype-set! sdl-c-point (y) c-point (sdl-point-y point))
    c-point))

(define (points->c-points points count)
  (define (load-point point c-point)
    (ftype-set! sdl-c-point (x) c-point (sdl-point-x point))
    (ftype-set! sdl-c-point (y) c-point (sdl-point-y point))
    c-point)

  (define (load-all points mem index)
    (if (= index count)
	mem
	(let ([c-point (ftype-&ref sdl-c-point () mem index)]
	      [point   (car points)])
	  (load-point point c-point)
	  (load-all (cdr points) mem (+ index 1)))))

  (let ([c-points (make-ftype-pointer
		   sdl-c-point
                   (foreign-alloc (* count
                                     (ftype-sizeof sdl-c-point))))])
    (load-all points c-points 0)))


(define (c-rect->rect c-rect)
  (make-sdl-rect (ftype-ref sdl-c-rect (x) c-rect)
		 (ftype-ref sdl-c-rect (y) c-rect)
		 (ftype-ref sdl-c-rect (w) c-rect)
		 (ftype-ref sdl-c-rect (h) c-rect)))

(define (rect->c-rect rect)
  (let ((c-rect (make-ftype-pointer
		 sdl-c-rect
		 (foreign-alloc (ftype-sizeof sdl-c-rect)))))
    (ftype-set! sdl-c-rect (x) c-rect (sdl-rect-x rect))
    (ftype-set! sdl-c-rect (y) c-rect (sdl-rect-y rect))
    (ftype-set! sdl-c-rect (w) c-rect (sdl-rect-w rect))
    (ftype-set! sdl-c-rect (h) c-rect (sdl-rect-h rect))
    c-rect))


(define (rects->c-rects rects count)
  (define (load-rect rect c-rect)
    (ftype-set! sdl-c-rect (x) c-rect (sdl-rect-x rect))
    (ftype-set! sdl-c-rect (y) c-rect (sdl-rect-y rect))
    (ftype-set! sdl-c-rect (w) c-rect (sdl-rect-w rect))
    (ftype-set! sdl-c-rect (h) c-rect (sdl-rect-h rect))
    c-rect)

  (define (load-all rects mem index)
    (if (= index count)
	mem
	(let ([c-rect (ftype-&ref sdl-c-rect () mem index)]
	      [rect   (car rects)])
	  (load-rect rect c-rect)
	  (load-all (cdr rects) mem (+ index 1)))))

  (let ([c-rects (make-ftype-pointer
		  sdl-c-rect
                  (foreign-alloc (* count
                                    (ftype-sizeof sdl-c-rect))))])
    (load-all rects c-rects 0)))



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

(define SDL-BLEND-MODE-NONE    #x00000000)
(define SDL-BLEND-MODE-BLEND   #x00000001)
(define SDL-BLEND-MODE-ADD     #x00000002)
(define SDL-BLEND-MODE-MOD     #x00000004)
(define SDL-BLEND-MODE-INVALID #x7FFFFFFF)


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
      (let ((c-src (rect->c-rect (car opts)))
	    (c-dst (rect->c-rect (cadr opts))))
	(let ((ret (= 0 (_sdl-render-copy renderer texture c-src c-dst))))
	  (foreign-free (ftype-pointer-address c-src))
	  (foreign-free (ftype-pointer-address c-dst))
	  ret))))


(define sdl-render-present
  (foreign-procedure "SDL_RenderPresent" ((* sdl-c-renderer)) void))


(define (sdl-set-texture-color-mod! texture r g b)
  (let ([func (foreign-procedure "SDL_SetTextureColorMod"
				 ((* sdl-c-texture)
				  unsigned-8
				  unsigned-8
				  unsigned-8)
				 int)])
    (= 0 (func texture r g b))))


(define (sdl-set-texture-blend-mode! texture mode)
  (let ([func (foreign-procedure "SDL_SetTextureBlendMode"
				 ((* sdl-c-texture)
				  int)
				 int)])
    (= 0 (func texture mode))))


(define (sdl-set-texture-alpha-mod! texture alpha)
  (let ([func (foreign-procedure "SDL_SetTextureAlphaMod"
				 ((* sdl-c-texture)
				  unsigned-8)
				 int)])
    (= 0 (func texture mod))))


(define (sdl-set-render-target! renderer . texture)
  (let ([func (foreign-procedure "SDL_SetRenderTarget"
				 ((* sdl-c-renderer)
				  (* sdl-c-texture))
				 int)])
    (= 0 (func renderer (if (null? texture)
			    (make-ftype-pointer sdl-c-texture 0)
			    (car texture))))))


(define (sdl-set-render-draw-color! renderer r g b a)
  (let ([func (foreign-procedure "SDL_SetRenderDrawColor"
				 ((* sdl-c-renderer)
				  unsigned-8
				  unsigned-8
				  unsigned-8
				  unsigned-8)
				 int)])
    (= 0 (func renderer r g b a))))


(define (sdl-set-render-draw-blend-mode! renderer mode)
  (let ([func (foreign-procedure "SDL_SetRenderDrawBlendMode"
				 ((* sdl-c-renderer)
				  int)
				 int)])
    (= 0 (func renderer mode))))


(define (sdl-set-render-viewport! renderer . rect)
  (let ([func (foreign-procedure "SDL_RenderSetViewport"
				 ((* sdl-c-renderer)
				  (* sdl-c-rect))
				 int)])
    (if (null? rect)
	(= 0 (func renderer (make-ftype-pointer sdl-c-rect 0)))
	(let* ((c-rect (rect->c-rect (car rect)))
	       (error (func renderer c-rect)))
	  (foreign-free (ftype-pointer-address c-rect))
	  (= 0 error)))))


(define (sdl-set-render-scale! renderer x y)
  (let ([func (foreign-procedure "SDL_RenderSetScale"
				 ((* sdl-c-renderer)
				  float
				  float)
				 int)])
    (= 0 (func renderer x y))))


(define (sdl-set-render-logical-size! renderer w h)
  (let ([func (foreign-procedure "SDL_RenderSetLogicalSize"
				 ((* sdl-c-renderer)
				  int
				  int)
				 int)])
    (= 0 (func renderer w h))))


(define (sdl-set-render-integer-scale! renderer bool)
  (let ([func (foreign-procedure "SDL_RenderSetIntegerScale"
				 ((* sdl-c-renderer)
				  int)
				 int)])
    (= 0 (func renderer (if (bool) 1 0)))))


(define (sdl-set-render-clip! renderer . rect)
  (let ([func (foreign-procedure "SDL_RenderSetClipRect"
				 ((* sdl-c-renderer)
				  (* sdl-c-rect))
				 int)])
    (if (null? rect)
	(= 0 (func renderer (make-ftype-pointer sdl-c-rect 0)))
	(let* ((c-rect (rect->c-rect (car rect)))
	       (error (func renderer c-rect)))
	  (foreign-free (ftype-pointer-address c-rect))
	  (= 0 error)))))


(define (sdl-render-target-supported? renderer)
  (let ([func (foreign-procedure "SDL_RenderTargetSupported"
				 ((* sdl-c-renderer))
				 int)])
    (= 1 (func renderer))))



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

(define (sdl-enclude-points points . clip)
  (let* ([func (foreign-procedure "SDL_EnclosePoints"
				  ((* sdl-c-point)
				   int
				   (* sdl-c-rect)
				   (* sdl-c-rect))
				  int)]
	 [c-result (make-ftype-pointer
		    sdl-c-rect
		    (foreign-alloc (ftype-sizeof sdl-c-rect)))]
	 [count    (length points)]
	 [c-points (points->c-points points count)])
    (if (null? clip)
	(let* ([error (func c-points
			    count
			    (make-ftype-pointer sdl-c-rect 0)
			    c-result)]
	       [result (if (= 1 error) (c-rect->rect c-result) '())])
	  (foreign-free (ftype-pointer-address c-result))
	  (foreign-free (ftype-pointer-address c-points))
	  result)
	(let* ([c-clip (rect->c-rect (car clip))]
	       [error  (func c-points
			     count
			     clip
			     c-result)]
	       [result (if (= 1 error) (c-rect->rect c-result) '())])
	  (foreign-free (ftype-pointer-address c-clip))
	  (foreign-free (ftype-pointer-address c-result))
	  (foreign-free (ftype-pointer-address c-points))
	  result))))


(define (sdl-has-intersection? a b)
  (let* ([func (foreign-procedure "SDL_HasIntersection"
				  ((* sdl-c-rect) (* sdl-c-rect))
				  int)]
	 [c-a (rect->c-rect a)]
	 [c-b (rect->c-rect b)]
	 [res (func c-a c-b)])
    (foreign-free (ftype-pointer-address c-a))
    (foreign-free (ftype-pointer-address c-b))
    (= 1 res)))


(define (sdl-intersect-rect a b)
  (let* ([func (foreign-procedure "SDL_IntersectRect"
				  ((* sdl-c-rect)
				   (* sdl-c-rect)
				   (* sdl-c-rect))
				  int)]
	 [c-a   (rect->c-rect a)]
	 [c-b   (rect->c-rect b)]
	 [c-res (make-ftype-pointer
		 sdl-c-rect
		 (foreign-alloc (ftype-sizeof sdl-c-rect)))]
	 [has   (func c-a c-b c-res)])
    (foreign-free (ftype-pointer-address c-a))
    (foreign-free (ftype-pointer-address c-b))
    (foreign-free (ftype-pointer-address c-res))
    (if (= 1 has)
	(c-rect->rect c-res)
	'())))


(define (sdl-intersect-and-line rect x1 y1 x2 y2)
  (let ([func (foreign-procedure "SDL_IntersectRectAndLine"
				 ((* sdl-c-rect)
				  (* int)
				  (* int)
				  (* int)
				  (* int))
				 int)]
	[c-x1   (make-ftype-pointer int (foreign-alloc (ftype-sizeof int)))]
	[c-y1   (make-ftype-pointer int (foreign-alloc (ftype-sizeof int)))]
	[c-x2   (make-ftype-pointer int (foreign-alloc (ftype-sizeof int)))]
	[c-y2   (make-ftype-pointer int (foreign-alloc (ftype-sizeof int)))]
	[c-rect (rect->c-rect rect)])
    (ftype-set! int () c-x1 x1)
    (ftype-set! int () c-y1 y1)
    (ftype-set! int () c-x2 x2)
    (ftype-set! int () c-y2 y2)
    (let* ([has (func c-rect c-x1 c-y1 c-x2 c-y2)]
	   [res (list (= 1 has)
		      (make-sdl-point c-x1 c-y1)
		      (make-sdl-point c-x2 c-y2))])
      (foreign-free (ftype-pointer-address c-x1))
      (foreign-free (ftype-pointer-address c-y1))
      (foreign-free (ftype-pointer-address c-x2))
      (foreign-free (ftype-pointer-address c-y2))
      (foreign-free (ftype-pointer-address c-rect))
      res)))


(define (sdl-point-in-rect? point rect)
  (let* ([func (foreign-procedure "SDL_PointInRect"
				  ((* sdl-c-point) (* sdl-c-rect))
				  int)]
	 [c-point (point->c-point point)]
	 [c-rect  (rect->c-rect rect)]
	 [res     (func c-point c-rect)])
    (foreign-free (ftype-pointer-address c-point))
    (foreign-free (ftype-pointer-address c-rect))
    (= 1 res)))


(define (sdl-rect-empty? rect)
  (let* ([func (foreign-procedure "SDL_RectEmpty"
				  ((* sdl-c-rect))
				  int)]
	 [c-rect  (rect->c-rect rect)]
	 [res     (func c-rect)])
    (foreign-free (ftype-pointer-address c-rect))
    (= 1 res)))


(define (sdl-rect-equal? a b)
  (let* ([func (foreign-procedure "SDL_RectEquals"
				  ((* sdl-c-rect) (* sdl-c-rect))
				  int)]
	 [c-rect-a (rect->c-rect a)]
	 [c-rect-b (rect->c-rect b)]
	 [res     (func c-rect-a c-rect-b)])
    (foreign-free (ftype-pointer-address c-rect-a))
    (foreign-free (ftype-pointer-address c-rect-b))
    (= 1 res)))


(define (sdl-union-rect a b)
  (let* ([func (foreign-procedure "SDL_UnionRect"
				  ((* sdl-c-rect)
				   (* sdl-c-rect)
				   (* sdl-c-rect))
				  void)]
	 [c-rect-a (rect->c-rect a)]
	 [c-rect-b (rect->c-rect b)]
	 [c-union  (make-ftype-pointer
		    sdl-c-rect
		    (foreign-alloc (ftype-sizeof sdl-c-rect)))])
    (func c-rect-a
	  c-rect-b
	  c-union)
    (let ([union (c-rect->rect c-union)])
      (foreign-free (ftype-pointer-address c-rect-a))
      (foreign-free (ftype-pointer-address c-rect-b))
      (foreign-free (ftype-pointer-address c-union))
      union)))



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
