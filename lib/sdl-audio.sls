;;;; -*- mode: Scheme; -*-

(define-record-type sdl-audio-spec
  (fields freq
	  format
	  channels
	  silence
	  samples
	  size
	  callback
	  userdata))

;; SDL_BuildAudioCVT - won't support
;; SDL_ConvertAudio  - won't support

(define (sdl-new-audio-stream src-fmt src-chs src-rate
			      dst-fmt dst-chs dst rate) 0)

(define sdl-audio-init SDL_AudioInit)

(define sdl-audio-quit SDL_AudioQuit)

(define sdl-clear-queued-audio SDL_ClearQueuedAudio)

(define sdl-close-audio SDL_CloseAudio)

(define sdl-close-audio-device SDL_CloseAudioDevice)

