;;;; -*- mode: Scheme; -*-

(define-record-type sdl-audio-spec
  (fields freq
	  format
	  channels
	  silence
	  samples
	  size
	  callback
	  user-data))


(define sdl-audio-init SDL_AudioInit)

(define sdl-audio-quit SDL_AudioQuit)

