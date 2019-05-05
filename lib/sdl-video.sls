;;;; -*- mode: Scheme; -*-

;;;;;;;;;;;;;;;;;;;;;;
;;; Scheme Records ;;;
;;;;;;;;;;;;;;;;;;;;;;

(define-record-type sdl-rect
  (fields x y w h))

(define (with-c-rect rect procedure)
  (let*
      ((size (ftype-sizeof SDL_Rect))
       (addr (foreign-alloc size))
       (fptr (make-ftype-pointer SDL_Rect addr)))
    (ftype-set! SDL_Rect (x) fptr (sdl-rect-x rect))
    (ftype-set! SDL_Rect (y) fptr (sdl-rect-y rect))
    (ftype-set! SDL_Rect (w) fptr (sdl-rect-w rect))
    (ftype-set! SDL_Rect (h) fptr (sdl-rect-h rect))
    (let
	((ret (procedure fptr)))
      (foreign-free addr)
      ret)))


(define-record-type sdl-point
  (fields x y))


;;;;;;;;;;;;;;;;;;;
;;; Marshalling ;;;
;;;;;;;;;;;;;;;;;;;

(define sdl-show-window              SDL_ShowWindow)
(define sdl-destroy-window           SDL_DestroyWindow)
(define sdl-disable-screen-saver     SDL_DisableScreenSaver)
(define sdl-enable-screen-saver      SDL_EnableScreenSaver)
(define sdl-get-current-video-driver SDL_GetCurrentVideoDriver)
(define sdl-get-window-surface       SDL_GetWindowSurface)
(define sdl-get-display-name         SDL_GetDisplayName)
(define sdl-get-grabbed-window       SDL_GetGrabbedWindow)
(define sdl-get-num-display-modes    SDL_GetNumDisplayModes)
(define sdl-get-num-video-displays   SDL_GetNumVideoDisplays)
(define sdl-get-num-video-drivers    SDL_GetNumVideoDrivers)
(define sdl-get-video-driver         SDL_GetVideoDriver)
(define sdl-update-window-surface    SDL_UpdateWindowSurface)
(define sdl-gl-create-context        SDL_GL_CreateContext)
(define sdl-gl-delete-context        SDL_GL_DeleteContext)
(define sdl-gl-get-current-context   SDL_GL_GetCurrentContext)
(define sdl-gl-get-current-window    SDL_GL_GetCurrentWindow)
(define sdl-gl-get-swap-interval     SDL_GL_GetSwapInterval)
(define sdl-gl-make-current          SDL_GL_MakeCurrent)
(define sdl-gl-reset-attributes!     SDL_GL_ResetAttributes)
(define sdl-gl-set-attribute!        SDL_GL_SetAttribute)
(define sdl-gl-set-swap-interval!    SDL_GL_SetSwapInterval)
(define sdl-gl-swap-window           SDL_GL_SwapWindow)


(define (sdl-create-window title x y w h . flags)
  (SDL_CreateWindow title x y w h (fold-left bitwise-ior 0 flags)))


(define (sdl-gl-extension-supported? extension)
  (= SDL-TRUE (SDL_GL_ExtensionSupported extension)))


(define (sdl-gl-get-attribute attribute)
  (let*
      ((c-val (make-ftype-pointer int (foreign-alloc (ftype-sizeof int))))
       (ret   (SDL_GL_GetAttribute attribute c-val))
       (value (ftype-ref int () c-val)))
    (foreign-free (ftype-pointer-address c-val))
    (if (= ret 0) value ret)))


(define (sdl-gl-get-drawable-size window)
  (let
      ((c-w (make-ftype-pointer int (foreign-alloc (ftype-sizeof int))))
       (c-h (make-ftype-pointer int (foreign-alloc (ftype-sizeof int)))))
    (SDL_GL_GetDrawableSize window c-w c-h)
    (let
	((w (ftype-ref int () c-w))
	 (h (ftype-ref int () c-h)))
      (foreign-free (ftype-pointer-address c-w))
      (foreign-free (ftype-pointer-address c-h))
      (list w h))))


(define (sdl-get-display-bounds display-index)
  (let*
      ((c-rect (make-ftype-pointer SDL_Rect
				   (foreign-alloc (ftype-sizeof SDL_Rect))))
       (ret (SDL_GetDisplayBounds display-index c-rect))
       (val (if (= ret 0)
		(make-sdl-rect (ftype-ref SDL_Rect (x) c-rect)
			       (ftype-ref SDL_Rect (y) c-rect)
			       (ftype-ref SDL_Rect (w) c-rect)
			       (ftype-ref SDL_Rect (h) c-rect))
		ret)))
    (foreign-free (ftype-pointer-address c-rect))
    val))


(define (sdl-get-display-dpi display-index)
  (let*
      ((c-ddpi (make-ftype-pointer float (foreign-alloc (ftype-sizeof float))))
       (c-hdpi (make-ftype-pointer float (foreign-alloc (ftype-sizeof float))))
       (c-vdpi (make-ftype-pointer float (foreign-alloc (ftype-sizeof float))))
       (f-ret  (SDL_GetDisplayDPI display-index c-ddpi c-hdpi c-vdpi))
       (val (if (= f-ret 0)
		(list (ftype-ref float () c-ddpi)
		      (ftype-ref float () c-hdpi)
		      (ftype-ref float () c-vdpi))
		f-ret)))
    (foreign-free (ftype-pointer-address c-ddpi))
    (foreign-free (ftype-pointer-address c-hdpi))
    (foreign-free (ftype-pointer-address c-vdpi))
    val))


(define (sdl-get-display-usable-bounds display-index)
  (let*
      ((c-rect (make-ftype-pointer SDL_Rect (foreign-alloc (ftype-sizeof SDL_Rect))))
       (ret (SDL_GetDisplayUsableBounds display-index c-rect))
       (val (if (= ret 0)
		(make-sdl-rect (ftype-ref SDL_Rect (x) c-rect)
			       (ftype-ref SDL_Rect (y) c-rect)
			       (ftype-ref SDL_Rect (w) c-rect)
			       (ftype-ref SDL_Rect (h) c-rect))
		ret)))
    (foreign-free (ftype-pointer-address c-rect))
    val))


























































































































(define (c-point->point c-point)
  (make-sdl-point (ftype-ref SDL_Point (x) c-point)
		  (ftype-ref SDL_Point (y) c-point)))

(define (point->c-point point)
  (let ((c-point (make-ftype-pointer
		  SDL_Point
		  (foreign-alloc (ftype-sizeof SDL_Point)))))
    (ftype-set! SDL_Point (x) c-point (sdl-point-x point))
    (ftype-set! SDL_Point (y) c-point (sdl-point-y point))
    c-point))

(define (points->c-points points count)
  (define (load-point point c-point)
    (ftype-set! SDL_Point (x) c-point (sdl-point-x point))
    (ftype-set! SDL_Point (y) c-point (sdl-point-y point))
    c-point)

  (define (load-all points mem index)
    (if (= index count)
	mem
	(let ((c-point (ftype-&ref SDL_Point () mem index))
	      (point   (car points)))
	  (load-point point c-point)
	  (load-all (cdr points) mem (+ index 1)))))

  (let ((c-points (make-ftype-pointer
		   SDL_Point
                   (foreign-alloc (* count
                                     (ftype-sizeof SDL_Point))))))
    (load-all points c-points 0)))


(define (c-rect->rect c-rect)
  (make-sdl-rect (ftype-ref SDL_Rect (x) c-rect)
		 (ftype-ref SDL_Rect (y) c-rect)
		 (ftype-ref SDL_Rect (w) c-rect)
		 (ftype-ref SDL_Rect (h) c-rect)))

(define (rect->c-rect rect)
  (let ((c-rect (make-ftype-pointer
		 SDL_Rect
		 (foreign-alloc (ftype-sizeof SDL_Rect)))))
    (ftype-set! SDL_Rect (x) c-rect (sdl-rect-x rect))
    (ftype-set! SDL_Rect (y) c-rect (sdl-rect-y rect))
    (ftype-set! SDL_Rect (w) c-rect (sdl-rect-w rect))
    (ftype-set! SDL_Rect (h) c-rect (sdl-rect-h rect))
    c-rect))


(define (rects->c-rects rects count)
  (define (load-rect rect c-rect)
    (ftype-set! SDL_Rect (x) c-rect (sdl-rect-x rect))
    (ftype-set! SDL_Rect (y) c-rect (sdl-rect-y rect))
    (ftype-set! SDL_Rect (w) c-rect (sdl-rect-w rect))
    (ftype-set! SDL_Rect (h) c-rect (sdl-rect-h rect))
    c-rect)

  (define (load-all rects mem index)
    (if (= index count)
	mem
	(let ((c-rect (ftype-&ref SDL_Rect () mem index))
	      (rect   (car rects)))
	  (load-rect rect c-rect)
	  (load-all (cdr rects) mem (+ index 1)))))

  (let ((c-rects (make-ftype-pointer
		  SDL_Rect
                  (foreign-alloc (* count
                                    (ftype-sizeof SDL_Rect))))))
    (load-all rects c-rects 0)))


;;;          ;;;
;;; Renderer ;;;
;;;          ;;;

(define (sdl-create-renderer window index . flags)
  (let ((func SDL_CreateRenderer))
    (if (null? flags)
	(error 'SDL-CREATE-RENDERER "No flags set.")
	(func window index (fold-left bitwise-ior 0 flags)))))


(define sdl-create-software-renderer
  SDL_CreateSoftwareRenderer)


(define sdl-create-texture
  SDL_CreateTexture)


(define sdl-create-texture-from-surface
  (foreign-procedure "SDL_CreateTextureFromSurface"
		     ((* SDL_Renderer) (* SDL_Surface))
		     (* SDL_Texture)))


(define sdl-destroy-renderer
  (foreign-procedure "SDL_DestroyRenderer" ((* SDL_Renderer)) void))


(define sdl-destroy-texture
  (foreign-procedure "SDL_DestroyTexture" ((* SDL_Texture)) void))


(define sdl-get-num-render-drivers
  (foreign-procedure "SDL_GetNumRenderDrivers" () int))


(define _sdl-get-render-draw-blend-mode
  (foreign-procedure "SDL_GetRenderDrawBlendMode"
		     ((* SDL_Renderer) (* int))
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
		     ((* SDL_Renderer)
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
		     ((* SDL_Renderer))
		     (* SDL_Texture)))


(define sdl-get-renderer
  (foreign-procedure "SDL_GetRenderer"
		     ((* SDL_Window))
		     (* SDL_Renderer)))


(define _sdl-render-clear
  (foreign-procedure "SDL_RenderClear" ((* SDL_Renderer)) int))

(define (sdl-render-clear renderer)
  (= 0 (_sdl-render-clear renderer)))


(define _sdl-render-copy
  (foreign-procedure "SDL_RenderCopy"
		     ((* SDL_Renderer)
		      (* SDL_Texture)
		      (* SDL_Rect)
		      (* SDL_Rect))
		     int))

(define (sdl-render-copy renderer texture . opts)
  (if (null? opts)
      (= 0 (_sdl-render-copy renderer
			     texture
			     (make-ftype-pointer SDL_Rect 0)
			     (make-ftype-pointer SDL_Rect 0)))
      (let ((c-src (rect->c-rect (car opts)))
	    (c-dst (rect->c-rect (cadr opts))))
	(let ((ret (= 0 (_sdl-render-copy renderer texture c-src c-dst))))
	  (foreign-free (ftype-pointer-address c-src))
	  (foreign-free (ftype-pointer-address c-dst))
	  ret))))


(define sdl-render-present
  (foreign-procedure "SDL_RenderPresent" ((* SDL_Renderer)) void))


(define (sdl-set-texture-color-mod! texture r g b)
  (let ((func (foreign-procedure "SDL_SetTextureColorMod"
				 ((* SDL_Texture)
				  unsigned-8
				  unsigned-8
				  unsigned-8)
				 int)))
    (= 0 (func texture r g b))))


(define (sdl-set-texture-blend-mode! texture mode)
  (let ((func (foreign-procedure "SDL_SetTextureBlendMode"
				 ((* SDL_Texture)
				  int)
				 int)))
    (= 0 (func texture mode))))


(define (sdl-set-texture-alpha-mod! texture alpha)
  (let ((func (foreign-procedure "SDL_SetTextureAlphaMod"
				 ((* SDL_Texture)
				  unsigned-8)
				 int)))
    (= 0 (func texture mod))))


(define (sdl-set-render-target! renderer . texture)
  (let ((func (foreign-procedure "SDL_SetRenderTarget"
				 ((* SDL_Renderer)
				  (* SDL_Texture))
				 int)))
    (= 0 (func renderer (if (null? texture)
			    (make-ftype-pointer SDL_Texture 0)
			    (car texture))))))


(define (sdl-set-render-draw-color! renderer r g b a)
  (let ((func (foreign-procedure "SDL_SetRenderDrawColor"
				 ((* SDL_Renderer)
				  unsigned-8
				  unsigned-8
				  unsigned-8
				  unsigned-8)
				 int)))
    (= 0 (func renderer r g b a))))


(define (sdl-set-render-draw-blend-mode! renderer mode)
  (let ((func (foreign-procedure "SDL_SetRenderDrawBlendMode"
				 ((* SDL_Renderer)
				  int)
				 int)))
    (= 0 (func renderer mode))))


(define (sdl-set-render-viewport! renderer . rect)
  (let ((func (foreign-procedure "SDL_RenderSetViewport"
				 ((* SDL_Renderer)
				  (* SDL_Rect))
				 int)))
    (if (null? rect)
	(= 0 (func renderer (make-ftype-pointer SDL_Rect 0)))
	(let* ((c-rect (rect->c-rect (car rect)))
	       (error (func renderer c-rect)))
	  (foreign-free (ftype-pointer-address c-rect))
	  (= 0 error)))))


(define (sdl-set-render-scale! renderer x y)
  (let ((func (foreign-procedure "SDL_RenderSetScale"
				 ((* SDL_Renderer)
				  float
				  float)
				 int)))
    (= 0 (func renderer x y))))


(define (sdl-set-render-logical-size! renderer w h)
  (let ((func (foreign-procedure "SDL_RenderSetLogicalSize"
				 ((* SDL_Renderer)
				  int
				  int)
				 int)))
    (= 0 (func renderer w h))))


(define (sdl-set-render-integer-scale! renderer bool)
  (let ((func (foreign-procedure "SDL_RenderSetIntegerScale"
				 ((* SDL_Renderer)
				  int)
				 int)))
    (= 0 (func renderer (if (bool) 1 0)))))


(define (sdl-set-render-clip! renderer . rect)
  (let ((func (foreign-procedure "SDL_RenderSetClipRect"
				 ((* SDL_Renderer)
				  (* SDL_Rect))
				 int)))
    (if (null? rect)
	(= 0 (func renderer (make-ftype-pointer SDL_Rect 0)))
	(let* ((c-rect (rect->c-rect (car rect)))
	       (error (func renderer c-rect)))
	  (foreign-free (ftype-pointer-address c-rect))
	  (= 0 error)))))


(define (sdl-render-target-supported? renderer)
  (let ((func (foreign-procedure "SDL_RenderTargetSupported"
				 ((* SDL_Renderer))
				 int)))
    (= 1 (func renderer))))



;;;        ;;;
;;; Pixels ;;;
;;;        ;;;

(define sdl-map-rgb
  (foreign-procedure "SDL_MapRGB"
		     ((* SDL_PixelFormat)
		      unsigned-8
		      unsigned-8
		      unsigned-8) unsigned-32))



;;;      ;;;
;;; Rect ;;;
;;;      ;;;

(define (sdl-enclude-points points . clip)
  (let* ((func (foreign-procedure "SDL_EnclosePoints"
				  ((* SDL_Point)
				   int
				   (* SDL_Rect)
				   (* SDL_Rect))
				  int))
	 (c-result (make-ftype-pointer
		    SDL_Rect
		    (foreign-alloc (ftype-sizeof SDL_Rect))))
	 (count    (length points))
	 (c-points (points->c-points points count)))
    (if (null? clip)
	(let* ((error (func c-points
			    count
			    (make-ftype-pointer SDL_Rect 0)
			    c-result))
	       (result (if (= 1 error) (c-rect->rect c-result) '())))
	  (foreign-free (ftype-pointer-address c-result))
	  (foreign-free (ftype-pointer-address c-points))
	  result)
	(let* ((c-clip (rect->c-rect (car clip)))
	       (error  (func c-points
			     count
			     clip
			     c-result))
	       (result (if (= 1 error) (c-rect->rect c-result) '())))
	  (foreign-free (ftype-pointer-address c-clip))
	  (foreign-free (ftype-pointer-address c-result))
	  (foreign-free (ftype-pointer-address c-points))
	  result))))


(define (sdl-has-intersection? a b)
  (let* ((func (foreign-procedure "SDL_HasIntersection"
				  ((* SDL_Rect) (* SDL_Rect))
				  int))
	 (c-a (rect->c-rect a))
	 (c-b (rect->c-rect b))
	 (res (func c-a c-b)))
    (foreign-free (ftype-pointer-address c-a))
    (foreign-free (ftype-pointer-address c-b))
    (= 1 res)))


(define (sdl-intersect-rect a b)
  (let* ((func (foreign-procedure "SDL_IntersectRect"
				  ((* SDL_Rect)
				   (* SDL_Rect)
				   (* SDL_Rect))
				  int))
	 (c-a   (rect->c-rect a))
	 (c-b   (rect->c-rect b))
	 (c-res (make-ftype-pointer
		 SDL_Rect
		 (foreign-alloc (ftype-sizeof SDL_Rect))))
	 (has   (func c-a c-b c-res)))
    (foreign-free (ftype-pointer-address c-a))
    (foreign-free (ftype-pointer-address c-b))
    (foreign-free (ftype-pointer-address c-res))
    (if (= 1 has)
	(c-rect->rect c-res)
	'())))


(define (sdl-intersect-and-line rect x1 y1 x2 y2)
  (let ((func (foreign-procedure "SDL_IntersectRectAndLine"
				 ((* SDL_Rect)
				  (* int)
				  (* int)
				  (* int)
				  (* int))
				 int))
	(c-x1   (make-ftype-pointer int (foreign-alloc (ftype-sizeof int))))
	(c-y1   (make-ftype-pointer int (foreign-alloc (ftype-sizeof int))))
	(c-x2   (make-ftype-pointer int (foreign-alloc (ftype-sizeof int))))
	(c-y2   (make-ftype-pointer int (foreign-alloc (ftype-sizeof int))))
	(c-rect (rect->c-rect rect)))
    (ftype-set! int () c-x1 x1)
    (ftype-set! int () c-y1 y1)
    (ftype-set! int () c-x2 x2)
    (ftype-set! int () c-y2 y2)
    (let* ((has (func c-rect c-x1 c-y1 c-x2 c-y2))
	   (res (list (= 1 has)
		      (make-sdl-point c-x1 c-y1)
		      (make-sdl-point c-x2 c-y2))))
      (foreign-free (ftype-pointer-address c-x1))
      (foreign-free (ftype-pointer-address c-y1))
      (foreign-free (ftype-pointer-address c-x2))
      (foreign-free (ftype-pointer-address c-y2))
      (foreign-free (ftype-pointer-address c-rect))
      res)))


(define (sdl-point-in-rect? point rect)
  (let* ((func (foreign-procedure "SDL_PointInRect"
				  ((* SDL_Point) (* SDL_Rect))
				  int))
	 (c-point (point->c-point point))
	 (c-rect  (rect->c-rect rect))
	 (res     (func c-point c-rect)))
    (foreign-free (ftype-pointer-address c-point))
    (foreign-free (ftype-pointer-address c-rect))
    (= 1 res)))


(define (sdl-rect-empty? rect)
  (let* ((func (foreign-procedure "SDL_RectEmpty"
				  ((* SDL_Rect))
				  int))
	 (c-rect  (rect->c-rect rect))
	 (res     (func c-rect)))
    (foreign-free (ftype-pointer-address c-rect))
    (= 1 res)))


(define (sdl-rect-equal? a b)
  (let* ((func (foreign-procedure "SDL_RectEquals"
				  ((* SDL_Rect) (* SDL_Rect))
				  int))
	 (c-rect-a (rect->c-rect a))
	 (c-rect-b (rect->c-rect b))
	 (res     (func c-rect-a c-rect-b)))
    (foreign-free (ftype-pointer-address c-rect-a))
    (foreign-free (ftype-pointer-address c-rect-b))
    (= 1 res)))


(define (sdl-union-rect a b)
  (let* ((func (foreign-procedure "SDL_UnionRect"
				  ((* SDL_Rect)
				   (* SDL_Rect)
				   (* SDL_Rect))
				  void))
	 (c-rect-a (rect->c-rect a))
	 (c-rect-b (rect->c-rect b))
	 (c-union  (make-ftype-pointer
		    SDL_Rect
		    (foreign-alloc (ftype-sizeof SDL_Rect)))))
    (func c-rect-a
	  c-rect-b
	  c-union)
    (let ((union (c-rect->rect c-union)))
      (foreign-free (ftype-pointer-address c-rect-a))
      (foreign-free (ftype-pointer-address c-rect-b))
      (foreign-free (ftype-pointer-address c-union))
      union)))



;;;          ;;;
;;; Surfaces ;;;
;;;          ;;;

(define sdl-free-surface
  (foreign-procedure "SDL_FreeSurface" ((* SDL_Surface)) void))


(define sdl-load-bmp SDL_LoadBMP)


(define sdl-fill-rect
  (foreign-procedure "SDL_FillRect"
		     ((* SDL_Surface) void* unsigned-32) int))



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
