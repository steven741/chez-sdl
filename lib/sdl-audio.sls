;;;; -*- mode: Scheme; -*-

;;;;;;;;;;;;;;;;;;;;;;;
;;; Foreign C Types ;;;
;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;
;;; Scheme Records ;;;
;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; C Function Bindings ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define *sdl-audio-init*               (sdl-procedure "SDL_AudioInit" () void))
(define *sdl-audio-quit*               (sdl-procedure "SDL_AudioQuit" () void))
(define *sdl-build-audio-cvt*          (sdl-procedure "SDL_BuildAudioCVT" () void))
(define *sdl-clear-queued-audio*       (sdl-procedure "SDL_ClearQueuedAudio" () void))
(define *sdl-close-audio*              (sdl-procedure "SDL_CloseAudio" () void))
(define *sdl-close-audio-device*       (sdl-procedure "SDL_CloseAudioDevice" () void))
(define *sdl-convert-audio*            (sdl-procedure "SDL_ConvertAudio" () void))
(define *sdl-dequeue-audio*            (sdl-procedure "SDL_DequeueAudio" () void))
(define *sdl-free-wav*                 (sdl-procedure "SDL_FreeWAV" () void))
(define *sdl-get-audio-device-name*    (sdl-procedure "SDL_GetAudioDeviceName" () void))
(define *sdl-get-audio-device-status*  (sdl-procedure "SDL_GetAudioDeviceStatus" () void))
(define *sdl-get-audio-driver*         (sdl-procedure "SDL_GetAudioDriver" () void))
(define *sdl-get-audio-status*         (sdl-procedure "SDL_GetAudioStatus" () void))
(define *sdl-get-current-audio-driver* (sdl-procedure "SDL_GetCurrentAudioDriver" () void))
(define *sdl-get-num-audio-devices*    (sdl-procedure "SDL_GetNumAudioDevices" () void))
(define *sdl-get-num-audio-drivers*    (sdl-procedure "SDL_GetNumAudioDrivers" () void))
(define *sdl-get-queued-audio-size*    (sdl-procedure "SDL_GetQueuedAudioSize" () void))
(define *sdl-load-wav*                 (lambda (path spec buff length) (*sdl-load-wav-rw* (sdl-rw-from-file path "rb") 1 spec buff length)))
(define *sdl-load-wav-rw*              (sdl-procedure "SDL_LoadWAV_RW" () void))
(define *sdl-lock-audio*               (sdl-procedure "SDL_LockAudio" () void))
(define *sdl-lock-audio-device*        (sdl-procedure "SDL_LockAudioDevice" () void))
(define *sdl-mix-audio*                (sdl-procedure "SDL_MixAudio" () void))
(define *sdl-mix-audio-format*         (sdl-procedure "SDL_MixAudioFormat" () void))
(define *sdl-open-audio*               (sdl-procedure "SDL_OpenAudio" () void))
(define *sdl-open-audio-device*        (sdl-procedure "SDL_OpenAudioDevice" () void))
(define *sdl-pause-audio*              (sdl-procedure "SDL_PauseAudio" () void))
(define *sdl-pause-audio-device*       (sdl-procedure "SDL_PauseAudioDevice" () void))
(define *sdl-queue-audio*              (sdl-procedure "SDL_QueueAudio" () void))
(define *sdl-unlock-audio*             (sdl-procedure "SDL_UnlockAudio" () void))
(define *sdl-unlock-audio-device*      (sdl-procedure "SDL_UnlockAudioDevice" () void))


;;;;;;;;;;;;;;;;;;;
;;; Marshalling ;;;
;;;;;;;;;;;;;;;;;;;

