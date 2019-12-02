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

(define sdl-new-audio-stream SDL_NewAudioStream)

(define (sdl-audio-stream-put stream buffer)
  (SDL_AudioStreamPut stream buffer (bytevector-length buffer)))

(define (sdl-audio-stream-get stream buffer)
  (SDL_AudioStreamGet stream buffer (bytevector-length buffer)))

(define sdl-audio-stream-available SDL_AudioStreamAvailable)

(define sdl-audio-stream-flush SDL_AudioStreamFlush)
(define sdl-audio-stream-clear SDL_AudioStreamClear)
(define sdl-free-audio-stream SDL_FreeAudioStream)


(define sdl-audio-init SDL_AudioInit)

(define sdl-audio-quit SDL_AudioQuit)

(define sdl-clear-queued-audio SDL_ClearQueuedAudio)

(define sdl-close-audio SDL_CloseAudio)

(define sdl-close-audio-device SDL_CloseAudioDevice)

