;;;; -*- mode: Scheme; -*-

;;;;
;;;;
;;;;


(define SDL-INIT-TIMER          #x00000001)
(define SDL-INIT-AUDIO          #x00000010)
(define SDL-INIT-VIDEO          #x00000020)
(define SDL-INIT-JOYSTICK       #x00000200)
(define SDL-INIT-HAPTIC         #x00001000)
(define SDL-INIT-GAMECONTROLLER #x00002000)
(define SDL-INIT-EVENTS         #x00004000)
(define SDL-INIT-EVERYTHING
  (bitwise-ior SDL-INIT-TIMER
               SDL-INIT-AUDIO
               SDL-INIT-VIDEO
               SDL-INIT-EVENTS
               SDL-INIT-JOYSTICK
               SDL-INIT-HAPTIC
               SDL-INIT-GAMECONTROLLER))

(define SDL-HINT-FRAMEBUFFER-ACCELERATION                 "SDL_FRAMEBUFFER_ACCELERATION")
(define SDL-HINT-RENDER-DRIVER                            "SDL_RENDER_DRIVER")
(define SDL-HINT-RENDER-OPENGL-SHADERS                    "SDL_RENDER_OPENGL_SHADERS")
(define SDL-HINT-RENDER-DIRECT3D-THREADSAFE               "SDL_RENDER_DIRECT3D_THREADSAFE")
(define SDL-HINT-RENDER-DIRECT3D11-DEBUG                  "SDL_RENDER_DIRECT3D11_DEBUG")
(define SDL-HINT-RENDER-LOGICAL-SIZE-MODE                 "SDL_RENDER_LOGICAL_SIZE_MODE")
(define SDL-HINT-RENDER-SCALE-QUALITY                     "SDL_RENDER_SCALE_QUALITY")
(define SDL-HINT-RENDER-VSYNC                             "SDL_RENDER_VSYNC")
(define SDL-HINT-VIDEO-ALLOW-SCREENSAVER                  "SDL_VIDEO_ALLOW_SCREENSAVER")
(define SDL-HINT-VIDEO-X11-XVIDMODE                       "SDL_VIDEO_X11_XVIDMODE")
(define SDL-HINT-VIDEO-X11-XINERAMA                       "SDL_VIDEO_X11_XINERAMA")
(define SDL-HINT-VIDEO-X11-XRANDR                         "SDL_VIDEO_X11_XRANDR")
(define SDL-HINT-VIDEO-X11-NET-WM-PING                    "SDL_VIDEO_X11_NET_WM_PING")
(define SDL-HINT-VIDEO-X11-NET-WM-BYPASS-COMPOSITOR       "SDL_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR")
(define SDL-HINT-WINDOW-FRAME-USABLE-WHILE-CURSOR-HIDDEN  "SDL_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN")
(define SDL-HINT-WINDOWS-INTRESOURCE-ICON                 "SDL_WINDOWS_INTRESOURCE_ICON")
(define SDL-HINT-WINDOWS-INTRESOURCE-ICON-SMALL           "SDL_WINDOWS_INTRESOURCE_ICON_SMALL")
(define SDL-HINT-WINDOWS-ENABLE-MESSAGELOOP               "SDL_WINDOWS_ENABLE_MESSAGELOOP")
(define SDL-HINT-GRAB-KEYBOARD                            "SDL_GRAB_KEYBOARD")
(define SDL-HINT-MOUSE-NORMAL-SPEED-SCALE                 "SDL_MOUSE_NORMAL_SPEED_SCALE")
(define SDL-HINT-MOUSE-RELATIVE-SPEED-SCALE               "SDL_MOUSE_RELATIVE_SPEED_SCALE")
(define SDL-HINT-MOUSE-RELATIVE-MODE-WARP                 "SDL_MOUSE_RELATIVE_MODE_WARP")
(define SDL-HINT-MOUSE-FOCUS-CLICKTHROUGH                 "SDL_MOUSE_FOCUS_CLICKTHROUGH")
(define SDL-HINT-TOUCH-MOUSE-EVENTS                       "SDL_TOUCH_MOUSE_EVENTS")
(define SDL-HINT-VIDEO-MINIMIZE-ON-FOCUS-LOSS             "SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS")
(define SDL-HINT-IDLE-TIMER-DISABLED                      "SDL_IOS_IDLE_TIMER_DISABLED")
(define SDL-HINT-ORIENTATIONS                             "SDL_IOS_ORIENTATIONS")
(define SDL-HINT-APPLE-TV-CONTROLLER-UI-EVENTS            "SDL_APPLE_TV_CONTROLLER_UI_EVENTS")
(define SDL-HINT-APPLE-TV-REMOTE-ALLOW-ROTATION           "SDL_APPLE_TV_REMOTE_ALLOW_ROTATION")
(define SDL-HINT-IOS-HIDE-HOME-INDICATOR                  "SDL_IOS_HIDE_HOME_INDICATOR")
(define SDL-HINT-ACCELEROMETER-AS-JOYSTICK                "SDL_ACCELEROMETER_AS_JOYSTICK")
(define SDL-HINT-TV-REMOTE-AS-JOYSTICK                    "SDL_TV_REMOTE_AS_JOYSTICK")
(define SDL-HINT-XINPUT-ENABLED                           "SDL_XINPUT_ENABLED")
(define SDL-HINT-XINPUT-USE-OLD-JOYSTICK-MAPPING          "SDL_XINPUT_USE_OLD_JOYSTICK_MAPPING")
(define SDL-HINT-GAMECONTROLLERCONFIG                     "SDL_GAMECONTROLLERCONFIG")
(define SDL-HINT-GAMECONTROLLER-IGNORE-DEVICES            "SDL_GAMECONTROLLER_IGNORE_DEVICES")
(define SDL-HINT-GAMECONTROLLER-IGNORE-DEVICES-EXCEPT     "SDL_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT")
(define SDL-HINT-JOYSTICK-ALLOW-BACKGROUND-EVENTS         "SDL_JOYSTICK_ALLOW_BACKGROUND_EVENTS")
(define SDL-HINT-ALLOW-TOPMOST                            "SDL_ALLOW_TOPMOST")
(define SDL-HINT-TIMER-RESOLUTION                         "SDL_TIMER_RESOLUTION")
(define SDL-HINT-QTWAYLAND-CONTENT-ORIENTATION            "SDL_QTWAYLAND_CONTENT_ORIENTATION")
(define SDL-HINT-QTWAYLAND-WINDOW-FLAGS                   "SDL_QTWAYLAND_WINDOW_FLAGS")
(define SDL-HINT-THREAD-STACK-SIZE                        "SDL_THREAD_STACK_SIZE")
(define SDL-HINT-VIDEO-HIGHDPI-DISABLED                   "SDL_VIDEO_HIGHDPI_DISABLED")
(define SDL-HINT-MAC-CTRL-CLICK-EMULATE-RIGHT-CLICK       "SDL_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK")
(define SDL-HINT-VIDEO-WIN-D3DCOMPILER                    "SDL_VIDEO_WIN_D3DCOMPILER")
(define SDL-HINT-VIDEO-WINDOW-SHARE-PIXEL-FORMAT          "SDL_VIDEO_WINDOW_SHARE_PIXEL_FORMAT")
(define SDL-HINT-WINRT-PRIVACY-POLICY-URL                 "SDL_WINRT_PRIVACY_POLICY_URL")
(define SDL-HINT-WINRT-PRIVACY-POLICY-LABEL               "SDL_WINRT_PRIVACY_POLICY_LABEL")
(define SDL-HINT-WINRT-HANDLE-BACK-BUTTON                 "SDL_WINRT_HANDLE_BACK_BUTTON")
(define SDL-HINT-VIDEO-MAC-FULLSCREEN-SPACES              "SDL_VIDEO_MAC_FULLSCREEN_SPACES")
(define SDL-HINT-MAC-BACKGROUND-APP                       "SDL_MAC_BACKGROUND_APP")
(define SDL-HINT-ANDROID-APK-EXPANSION-MAIN-FILE-VERSION  "SDL_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION")
(define SDL-HINT-ANDROID-APK-EXPANSION-PATCH-FILE-VERSION "SDL_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION")
(define SDL-HINT-IME-INTERNAL-EDITING                     "SDL_IME_INTERNAL_EDITING")
(define SDL-HINT-ANDROID-SEPARATE-MOUSE-AND-TOUCH         "SDL_ANDROID_SEPARATE_MOUSE_AND_TOUCH")
(define SDL-HINT-ANDROID-TRAP-BACK-BUTTON                 "SDL_ANDROID_TRAP_BACK_BUTTON")
(define SDL-HINT-RETURN-KEY-HIDES-IME                     "SDL_RETURN_KEY_HIDES_IME")
(define SDL-HINT-EMSCRIPTEN-KEYBOARD-ELEMENT              "SDL_EMSCRIPTEN_KEYBOARD_ELEMENT")
(define SDL-HINT-NO-SIGNAL-HANDLERS                       "SDL_NO_SIGNAL_HANDLERS")
(define SDL-HINT-WINDOWS-NO-CLOSE-ON-ALT-F4               "SDL_WINDOWS_NO_CLOSE_ON_ALT_F4")
(define SDL-HINT-BMP-SAVE-LEGACY-FORMAT                   "SDL_BMP_SAVE_LEGACY_FORMAT")
(define SDL-HINT-WINDOWS-DISABLE-THREAD-NAMING            "SDL_WINDOWS_DISABLE_THREAD_NAMING")
(define SDL-HINT-RPI-VIDEO-LAYER                          "SDL_RPI_VIDEO_LAYER")
(define SDL-HINT-VIDEO-DOUBLE-BUFFER                      "SDL_VIDEO_DOUBLE_BUFFER")
(define SDL-HINT-OPENGL-ES-DRIVER                         "SDL_OPENGL_ES_DRIVER")
(define SDL-HINT-AUDIO-RESAMPLING-MODE                    "SDL_AUDIO_RESAMPLING_MODE")
(define SDL-HINT-AUDIO-CATEGORY                           "SDL_AUDIO_CATEGORY")


(define-ftype sdl-c-version
  (struct
   [major unsigned-8]
   [minor unsigned-8]
   [patch unsigned-8]))



;;;; Init ;;;;

(define (sdl-init flags)
  ; Allocate some memory for the event system
  (set! event-mem
	(make-ftype-pointer sdl-c-event
			    (foreign-alloc (ftype-sizeof sdl-c-event))))

  (= 0 ((foreign-procedure "SDL_Init" (unsigned-32) int) flags)))


(define (sdl-quit)
  ; Release event system memory
  (foreign-free (ftype-pointer-address event-mem))

  (foreign-procedure "SDL_Quit" () void))



;;;; Hints ;;;;

(define _sdl-get-hint-bool
  (foreign-procedure "SDL_GetHintBoolean" (string int) int))

(define _sdl-set-hint
  (foreign-procedure "SDL_SetHint" (string string) int))

(define _sdl-set-hint-w/-priority
  (foreign-procedure "SDL_SetHintWithPriority" (string string int) int))


(define sdl-clear-hints!
  (foreign-procedure "SDL_ClearHints" () void))


(define (sdl-get-hint-boolean name default)
  (= 1 (_sdl-get-hint-bool name (if (default) 1 0))))


(define (sdl-set-hint! name value)
  (= 1 (_sdl-set-hint name value)))


(define (sdl-set-hint-w/-priority! name value priority)
  (= 1 (_sdl-set-hint-w/-priority name
				  value
				  (cond
				   ((eq? 'SDL-HINT-DEFAULT  priority) 0)
				   ((eq? 'SDL-HINT-NORMAL   priority) 1)
				   ((eq? 'SDL-HINT-OVERRIDE priority) 2)))))



;;;; Version Query ;;;;

(define (sdl-get-version)
  (let
      ([s (make-ftype-pointer
	   sdl-c-version
	   (foreign-alloc (ftype-sizeof sdl-c-version)))])
    ((foreign-procedure "SDL_GetVersion" ((* sdl-c-version)) void) s)

    (let
	([ver (list
	       (ftype-ref sdl-c-version (major) s)
	       (ftype-ref sdl-c-version (minor) s)
	       (ftype-ref sdl-c-version (patch) s))])
      (foreign-free (ftype-pointer-address s))

      ver)))


(define sdl-get-revision
  (foreign-procedure "SDL_GetRevision" () string))


(define sdl-get-revision-num
  (foreign-procedure "SDL_GetRevisionNumber" () int))



;;;; Error ;;;;

(define sdl-clear-error!
  (foreign-procedure "SDL_ClearError" () void))


(define sdl-get-error
  (foreign-procedure "SDL_GetError" () string))
