;;;; -*- mode: Scheme; -*-


(define-record-type sdl-audio-cvt
  (fields needed
	  src-fmt
	  dst-fmt
	  rate-incr
	  buf
	  len
	  len-cvt
	  len-mult
	  len-ratio))


(define sdl-audio-init SDL_AudioInit)

(define sdl-audio-quit SDL_AudioQuit)

(define (build-audio-cvt src-format src-channels src-rate
			 dst-format dst-channels dst-rate)
  (let* ((cvt-size (ftype-sizeof SDL_AudioCVT))
	 (cvt-addr (foreign-alloc cvt-size))
	 (cvt-fptr (make-ftype-pointer SDL_AudioCVT cvt-addr))
	 (result   (SDL_BuildAudioCVT cvt-fptr
				      src-format src-channels src-rate
				      dst-format dst-channels dst-rate)))
    (cond ((= result 1) cvt-fptr)
	  ((= result 0) cvt-fptr)
	  (else result))))
