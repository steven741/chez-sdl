;;;; -*- mode: Scheme; -*-

(library (sdl ftype)
  (export SDL_version
	  SDL_Keysym
	  SDL_CommonEvent
	  SDL_WindowEvent
	  SDL_KeyboardEvent
	  SDL_TextEditingEvent
	  SDL_TextInputEvent
	  SDL_MouseMotionEvent
	  SDL_MouseButtonEvent
	  SDL_MouseWheelEvent
	  SDL_JoyAxisEvent
	  SDL_JoyBallEvent
	  SDL_JoyHatEvent
	  SDL_JoyButtonEvent
	  SDL_JoyDeviceEvent
	  SDL_ControllerAxisEvent
	  SDL_ControllerButtonEvent
	  SDL_ControllerDeviceEvent
	  SDL_AudioDeviceEvent
	  SDL_QuitEvent
	  SDL_UserEvent
	  SDL_SysWMEvent
	  SDL_TouchFingerEvent
	  SDL_MultiGestureEvent
	  SDL_DollarGestureEvent
	  SDL_DropEvent
	  SDL_Event
	  SDL_Haptic
	  SDL_HapticDirection
	  SDL_HapticConstant
	  SDL_HapticPeriodic
	  SDL_HapticCondition
	  SDL_HapticRamp
	  SDL_HapticLeftRight
	  SDL_HapticCustom
	  SDL_HapticEffect
	  SDL_Cursor
	  SDL_Joystick
	  SDL_GameController
	  SDL_Finger
	  SDL_JoystickGUID
	  SDL_GameControllerButtonBind
	  SDL_Rect
	  SDL_Point
	  SDL_Color
	  SDL_Palette
	  SDL_PixelFormat
	  SDL_Surface
	  SDL_DisplayMode
	  SDL_RendererInfo
	  SDL_SysWMinfo
	  SDL_MessageBoxColor
	  SDL_MessageBoxColorScheme
	  SDL_MessageBoxButtonData
	  SDL_MessageBoxData
	  SDL_Window
	  SDL_Renderer
	  SDL_Texture
	  SDL_GLContext
	  SDL_AudioCallback
	  SDL_AudioFilter
	  SDL_AudioFormat
	  SDL_AudioSpec
	  SDL_AudioCVT
	  SDL_AudioStream
  
	  SDL_free
	  SDL_FreeRW
	  SDL_RWFromFile
	  SDL_AudioInit
	  SDL_AudioQuit
	  SDL_BuildAudioCVT
	  SDL_ClearQueuedAudio
	  SDL_CloseAudio
	  SDL_CloseAudioDevice
	  SDL_ConvertAudio
	  SDL_DequeueAudio
	  SDL_FreeWAV
	  SDL_GetAudioDeviceName
	  SDL_GetAudioDeviceStatus
	  SDL_GetAudioDriver
	  SDL_GetAudioStatus
	  SDL_GetCurrentAudioDriver
	  SDL_GetNumAudioDevices
	  SDL_GetNumAudioDrivers
	  SDL_GetQueuedAudioSize
	  SDL_LoadWAV
	  SDL_LoadWAV_RW
	  SDL_LockAudio
	  SDL_LockAudioDevice
	  SDL_MixAudio
	  SDL_MixAudioFormat
	  SDL_OpenAudio
	  SDL_OpenAudioDevice
	  SDL_PauseAudio
	  SDL_PauseAudioDevice
	  SDL_QueueAudio
	  SDL_UnlockAudio
	  SDL_UnlockAudioDevice
	  SDL_Init
	  SDL_InitSubSystem
	  SDL_Quit
	  SDL_QuitSubSystem
	  SDL_SetMainReady
	  SDL_WasInit
	  SDL_AddHintCallback
	  SDL_ClearHints
	  SDL_DelHintCallback
	  SDL_GetHint
	  SDL_GetHintBoolean
	  SDL_SetHint
	  SDL_SetHintWithPriority
	  SDL_ClearError
	  SDL_GetError
	  SDL_SetError
	  SDL_GetVersion
	  SDL_GetRevision
	  SDL_GetRevisionNumber
	  SDL_PollEvent
	  SDL_HapticClose
	  SDL_HapticDestroyEffect
	  SDL_HapticEffectSupported
	  SDL_HapticGetEffectStatus
	  SDL_HapticIndex
	  SDL_HapticName
	  SDL_HapticNewEffect
	  SDL_HapticNumAxes
	  SDL_HapticNumEffects
	  SDL_HapticNumEffectsPlaying
	  SDL_HapticOpen
	  SDL_HapticOpenFromJoystick
	  SDL_HapticOpenFromMouse
	  SDL_HapticOpened
	  SDL_HapticPause
	  SDL_HapticQuery
	  SDL_HapticRumbleInit
	  SDL_HapticRumblePlay
	  SDL_HapticRumbleStop
	  SDL_HapticRumbleSupported
	  SDL_HapticRunEffect
	  SDL_HapticSetAutocenter
	  SDL_HapticSetGain
	  SDL_HapticStopAll
	  SDL_HapticStopEffect
	  SDL_HapticUnpause
	  SDL_HapticUpdateEffect
	  SDL_JoystickIsHaptic
	  SDL_MouseIsHaptic
	  SDL_NumHaptics
	  SDL_GetKeyFromName
	  SDL_GetKeyFromScancode
	  SDL_GetKeyName
	  SDL_GetKeyboardFocus
	  SDL_GetKeyboardState
	  SDL_GetModState
	  SDL_GetScancodeFromKey
	  SDL_GetScancodeFromName
	  SDL_GetScancodeName
	  SDL_HasScreenKeyboardSupport
	  SDL_IsScreenKeyboardShown
	  SDL_IsTextInputActive
	  SDL_SetModState
	  SDL_SetTextInputRect
	  SDL_StartTextInput
	  SDL_StopTextInput
	  SDL_CaptureMouse
	  SDL_CreateColorCursor
	  SDL_CreateCursor
	  SDL_CreateSystemCursor
	  SDL_FreeCursor
	  SDL_GetCursor
	  SDL_GetDefaultCursor
	  SDL_GetGlobalMouseState
	  SDL_GetMouseFocus
	  SDL_GetMouseState
	  SDL_GetRelativeMouseMode
	  SDL_GetRelativeMouseState
	  SDL_SetCursor
	  SDL_SetRelativeMouseMode
	  SDL_ShowCursor
	  SDL_WarpMouseGlobal
	  SDL_WarpMouseInWindow
	  SDL_JoystickClose
	  SDL_JoystickCurrentPowerLevel
	  SDL_JoystickEventState
	  SDL_JoystickFromInstanceID
	  SDL_JoystickGetAttached
	  SDL_JoystickGetAxis
	  SDL_JoystickGetBall
	  SDL_JoystickGetButton
	  SDL_JoystickGetDeviceGUID
	  SDL_JoystickGetGUID
	  SDL_JoystickGetGUIDFromString
	  SDL_JoystickGetGUIDString
	  SDL_JoystickGetHat
	  SDL_JoystickInstanceID
	  SDL_JoystickName
	  SDL_JoystickNameForIndex
	  SDL_JoystickNumAxes
	  SDL_JoystickNumBalls
	  SDL_JoystickNumButtons
	  SDL_JoystickNumHats
	  SDL_JoystickOpen
	  SDL_JoystickUpdate
	  SDL_NumJoysticks
	  SDL_GameControllerAddMapping
	  SDL_GameControllerAddMappingsFromFile
	  SDL_GameControllerAddMappingsFromRW
	  SDL_GameControllerClose
	  SDL_GameControllerEventState
	  SDL_GameControllerFromInstanceID
	  SDL_GameControllerGetAttached
	  SDL_GameControllerGetAxis
	  SDL_GameControllerGetAxisFromString
	  SDL_GameControllerGetBindForAxis
	  SDL_GameControllerGetBindForButton
	  SDL_GameControllerGetButton
	  SDL_GameControllerGetButtonFromString
	  SDL_GameControllerGetJoystick
	  SDL_GameControllerGetStringForAxis
	  SDL_GameControllerGetStringForButton
	  SDL_GameControllerMapping
	  SDL_GameControllerMappingForGUID
	  SDL_GameControllerName
	  SDL_GameControllerNameForIndex
	  SDL_GameControllerOpen
	  SDL_GameControllerUpdate
	  SDL_IsGameController
	  SDL_GetNumTouchDevices
	  SDL_GetTouchDevice
	  SDL_GetNumTouchFingers
	  SDL_GetTouchFinger
	  SDL_GetPowerInfo
	  SDL_AddTimer
	  SDL_Delay
	  SDL_GetPerformanceCounter
	  SDL_GetPerformanceFrequency
	  SDL_GetTicks
	  SDL_RemoveTimer
	  SDL_CreateWindow
	  SDL_CreateWindowFrom
	  SDL_DestroyWindow
	  SDL_DisableScreenSaver
	  SDL_EnableScreenSaver
	  SDL_GL_CreateContext
	  SDL_GL_DeleteContext
	  SDL_GL_ExtensionSupported
	  SDL_GL_GetAttribute
	  SDL_GL_GetCurrentContext
	  SDL_GL_GetCurrentWindow
	  SDL_GL_GetDrawableSize
	  SDL_GL_GetProcAddress
	  SDL_GL_GetSwapInterval
	  SDL_GL_LoadLibrary
	  SDL_GL_MakeCurrent
	  SDL_GL_ResetAttributes
	  SDL_GL_SetAttribute
	  SDL_GL_SetSwapInterval
	  SDL_GL_SwapWindow
	  SDL_GL_UnloadLibrary
	  SDL_GetClosestDisplayMode
	  SDL_GetCurrentDisplayMode
	  SDL_GetCurrentVideoDriver
	  SDL_GetDesktopDisplayMode
	  SDL_GetDisplayBounds
	  SDL_GetDisplayDPI
	  SDL_GetDisplayName
	  SDL_GetDisplayUsableBounds
	  SDL_GetGrabbedWindow
	  SDL_GetNumDisplayModes
	  SDL_GetNumVideoDisplays
	  SDL_GetNumVideoDrivers
	  SDL_GetVideoDriver
	  SDL_GetWindowBordersSize
	  SDL_GetWindowBrightness
	  SDL_GetWindowData
	  SDL_GetWindowDisplayIndex
	  SDL_GetWindowDisplayMode
	  SDL_GetWindowFlags
	  SDL_GetWindowFromID
	  SDL_GetWindowGammaRamp
	  SDL_GetWindowGrab
	  SDL_GetWindowID
	  SDL_GetWindowMaximumSize
	  SDL_GetWindowMinimumSize
	  SDL_GetWindowOpacity
	  SDL_GetWindowPixelFormat
	  SDL_GetWindowPosition
	  SDL_GetWindowSize
	  SDL_GetWindowSurface
	  SDL_GetWindowTitle
	  SDL_GetWindowWMInfo
	  SDL_HideWindow
	  SDL_IsScreenSaverEnabled
	  SDL_MaximizeWindow
	  SDL_MinimizeWindow
	  SDL_RaiseWindow
	  SDL_RestoreWindow
	  SDL_SetWindowBordered
	  SDL_SetWindowBrightness
	  SDL_SetWindowData
	  SDL_SetWindowDisplayMode
	  SDL_SetWindowFullscreen
	  SDL_SetWindowGammaRamp
	  SDL_SetWindowGrab
	  SDL_SetWindowIcon
	  SDL_SetWindowInputFocus
	  SDL_SetWindowMaximumSize
	  SDL_SetWindowMinimumSize
	  SDL_SetWindowModalFor
	  SDL_SetWindowOpacity
	  SDL_SetWindowPosition
	  SDL_SetWindowResizable
	  SDL_SetWindowSize
	  SDL_SetWindowTitle
	  SDL_ShowMessageBox
	  SDL_ShowSimpleMessageBox
	  SDL_ShowWindow
	  SDL_UpdateWindowSurface
	  SDL_UpdateWindowSurfaceRects
	  SDL_VideoInit
	  SDL_VideoQuit
	  SDL_ComposeCustomBlendMode
	  SDL_CreateRenderer
	  SDL_CreateSoftwareRenderer
	  SDL_CreateTexture
	  SDL_CreateTextureFromSurface
	  SDL_CreateWindowAndRenderer
	  SDL_DestroyRenderer
	  SDL_DestroyTexture
	  SDL_GL_BindTexture
	  SDL_GL_UnbindTexture
	  SDL_GetNumRenderDrivers
	  SDL_GetRenderDrawBlendMode
	  SDL_GetRenderDrawColor
	  SDL_GetRenderDriverInfo
	  SDL_GetRenderTarget
	  SDL_GetRenderer
	  SDL_GetRendererInfo
	  SDL_GetRendererOutputSize
	  SDL_GetTextureAlphaMod
	  SDL_GetTextureBlendMode
	  SDL_GetTextureColorMod
	  SDL_LockTexture
	  SDL_QueryTexture
	  SDL_RenderClear
	  SDL_RenderCopy
	  SDL_RenderCopyEx
	  SDL_RenderDrawLine
	  SDL_RenderDrawLines
	  SDL_RenderDrawPoint
	  SDL_RenderDrawPoints
	  SDL_RenderDrawRect
	  SDL_RenderDrawRects
	  SDL_RenderFillRect
	  SDL_RenderFillRects
	  SDL_RenderGetClipRect
	  SDL_RenderGetIntegerScale
	  SDL_RenderGetLogicalSize
	  SDL_RenderGetScale
	  SDL_RenderGetViewport
	  SDL_RenderIsClipEnabled
	  SDL_RenderPresent
	  SDL_RenderReadPixels
	  SDL_RenderSetClipRect
	  SDL_RenderSetIntegerScale
	  SDL_RenderSetLogicalSize
	  SDL_RenderSetScale
	  SDL_RenderSetViewport
	  SDL_RenderTargetSupported
	  SDL_SetRenderDrawBlendMode
	  SDL_SetRenderDrawColor
	  SDL_SetRenderTarget
	  SDL_SetTextureAlphaMod
	  SDL_SetTextureBlendMode
	  SDL_SetTextureColorMod
	  SDL_UnlockTexture
	  SDL_UpdateTexture
	  SDL_UpdateYUVTexture
	  SDL_AllocFormat
	  SDL_AllocPalette
	  SDL_CalculateGammaRamp
	  SDL_FreeFormat
	  SDL_FreePalette
	  SDL_GetPixelFormatName
	  SDL_GetRGB
	  SDL_GetRGBA
	  SDL_MapRGB
	  SDL_MapRGBA
	  SDL_MasksToPixelFormatEnum
	  SDL_PixelFormatEnumToMasks
	  SDL_SetPaletteColors
	  SDL_SetPixelFormatPalette
	  SDL_EnclosePoints
	  SDL_HasIntersection
	  SDL_IntersectRect
	  SDL_IntersectRectAndLine
	  SDL_PointInRect
	  SDL_RectEmpty
	  SDL_RectEquals
	  SDL_UnionRect
	  SDL_GetSpanEnclosingRect
	  SDL_UpperBlitScaled
	  SDL_UpperBlit
	  SDL_ConvertPixels
	  SDL_ConvertSurface
	  SDL_ConvertSurfaceFormat
	  SDL_CreateRGBSurface
	  SDL_CreateRGBSurfaceFrom
	  SDL_CreateRGBSurfaceWithFormat
	  SDL_CreateRGBSurfaceWithFormatFrom
	  SDL_FillRect
	  SDL_FillRects
	  SDL_FreeSurface
	  SDL_GetClipRect
	  SDL_GetColorKey
	  SDL_GetSurfaceAlphaMod
	  SDL_GetSurfaceBlendMode
	  SDL_GetSurfaceColorMod
	  SDL_LoadBMP
	  SDL_LoadBMP_RW
	  SDL_LockSurface
	  SDL_LowerBlit
	  SDL_LowerBlitScaled
	  SDL_MUSTLOCK
	  SDL_SaveBMP
	  SDL_SaveBMP_RW
	  SDL_SetClipRect
	  SDL_SetColorKey
	  SDL_SetSurfaceAlphaMod
	  SDL_SetSurfaceBlendMode
	  SDL_SetSurfaceColorMod
	  SDL_SetSurfacePalette
	  SDL_SetSurfaceRLE
	  SDL_UnlockSurface
	  SDL_GetClipboardText
	  SDL_HasClipboardText
	  SDL_SetClipboardText
	  SDL_Vulkan_CreateSurface
	  SDL_Vulkan_GetDrawableSize
	  SDL_Vulkan_GetInstanceExtensions
	  SDL_Vulkan_GetVkGetInstanceProcAddr
	  SDL_Vulkan_LoadLibrary
	  SDL_Vulkan_UnloadLibrary)

  (import (chezscheme))

  (define *sdl*
    (case (machine-type)
      ((i3nt  ti3nt  a6nt  ta6nt)  (load-shared-object "SDL2.dll"))
      ((i3le  ti3le  a6le  ta6le)  (load-shared-object "libSDL2.so"))
      ((i3osx ti3osx a6osx ta6osx) (load-shared-object "libSDL2.dylib"))))

  (define-syntax sdl-procedure
    (syntax-rules ()
      ((sdl-procedure name params return)
       (if (foreign-entry? name)
	   (foreign-procedure name params return)
	   (lambda args
	     (error 'SDL "Function not exported in libSDL2." name))))))


  (define-ftype SDL_SysWMinfo      void*)
  (define-ftype SDL_Cursor         void*)
  (define-ftype SDL_Joystick       void*)
  (define-ftype SDL_GameController void*)
  (define-ftype SDL_Haptic         void*)
  (define-ftype SDL_Window         void*)
  (define-ftype SDL_Renderer       void*)
  (define-ftype SDL_Texture        void*)
  (define-ftype SDL_GLContext      void*)

  (define-ftype SDL_version
    (struct (major unsigned-8)
	    (minor unsigned-8)
	    (patch unsigned-8)))

  (define-ftype SDL_Keysym
    (struct (scancode unsigned)
	    (sym      integer-32)
	    (mod      unsigned-16)
	    (unused   unsigned-32)))

  (define-ftype SDL_CommonEvent
    (struct (type      unsigned-32)
	    (timestamp unsigned-32)))

  (define-ftype SDL_WindowEvent
    (struct (type      unsigned-32)
	    (timestamp unsigned-32)
	    (windowID  unsigned-32)
	    (event     unsigned-8)
	    (padding1  unsigned-8)
	    (padding2  unsigned-8)
	    (padding3  unsigned-8)
	    (data1     integer-32)
	    (data2     integer-32)))

  (define-ftype SDL_KeyboardEvent
    (struct (type      unsigned-32)
	    (timestamp unsigned-32)
	    (windowID  unsigned-32)
	    (state     unsigned-8)
	    (repeat    unsigned-8)
	    (keysym    SDL_Keysym)))

  (define-ftype SDL_TextEditingEvent
    (struct (type      unsigned-32)
	    (timestamp unsigned-32)
	    (windowID  unsigned-32)
	    (text      (array 32 char))
	    (start     integer-32)
	    (length    integer-32)))

  (define-ftype SDL_TextInputEvent
    (struct (type      unsigned-32)
	    (timestamp unsigned-32)
	    (windowID  unsigned-32)
	    (text      (array 32 char))))

  (define-ftype SDL_MouseMotionEvent
    (struct (type      unsigned-32)
	    (timestamp unsigned-32)
	    (windowID  unsigned-32)
	    (which     unsigned-32)
	    (state     unsigned-32)
	    (x         integer-32)
	    (y         integer-32)
	    (xrel      integer-32)
	    (yrel      integer-32)))

  (define-ftype SDL_MouseButtonEvent
    (struct (type      unsigned-32)
	    (timestamp unsigned-32)
	    (windowID  unsigned-32)
	    (which     unsigned-32)
	    (button    unsigned-8)
	    (state     unsigned-8)
	    (clicks    unsigned-8)
	    (padding1  unsigned-8)
	    (x         integer-32)
	    (y         integer-32)))

  (define-ftype SDL_MouseWheelEvent
    (struct (type      unsigned-32)
	    (timestamp unsigned-32)
	    (windowID  unsigned-32)
	    (which     unsigned-32)
	    (x         integer-32)
	    (y         integer-32)
	    (direction unsigned-32)))

  (define-ftype SDL_JoyAxisEvent
    (struct (type      unsigned-32)
	    (timestamp unsigned-32)
	    (which     integer-32)
	    (axis      unsigned-8)
	    (padding1  unsigned-8)
	    (padding2  unsigned-8)
	    (padding3  unsigned-8)
	    (value     integer-16)
	    (padding4  unsigned-16)))

  (define-ftype SDL_JoyBallEvent
    (struct (type      unsigned-32)
	    (timestamp unsigned-32)
	    (which     integer-32)
	    (ball      unsigned-8)
	    (padding1  unsigned-8)
	    (padding2  unsigned-8)
	    (padding3  unsigned-8)
	    (xrel      integer-16)
	    (yrel      integer-16)))

  (define-ftype SDL_JoyHatEvent
    (struct (type      unsigned-32)
	    (timestamp unsigned-32)
	    (which     integer-32)
	    (hat       unsigned-8)
	    (value     unsigned-8)
	    (padding1  unsigned-8)
	    (padding2  unsigned-8)))

  (define-ftype SDL_JoyButtonEvent
    (struct (type      unsigned-32)
	    (timestamp unsigned-32)
	    (which     integer-32)
	    (button    unsigned-8)
	    (state     unsigned-8)
	    (padding1  unsigned-8)
	    (padding2  unsigned-8)))

  (define-ftype SDL_JoyDeviceEvent
    (struct (type      unsigned-32)
	    (timestamp unsigned-32)
	    (which     integer-32)))

  (define-ftype SDL_ControllerAxisEvent
    (struct (type      unsigned-32)
	    (timestamp unsigned-32)
	    (which     integer-32)
	    (axis      unsigned-8)
	    (padding1  unsigned-8)
	    (padding2  unsigned-8)
	    (padding3  unsigned-8)
	    (value     unsigned-16)
	    (padding4  unsigned-16)))

  (define-ftype SDL_ControllerButtonEvent
    (struct (type      unsigned-32)
	    (timestamp unsigned-32)
	    (which     integer-32)
	    (button    unsigned-8)
	    (state     unsigned-8)
	    (padding1  unsigned-8)
	    (padding2  unsigned-8)))

  (define-ftype SDL_ControllerDeviceEvent
    (struct (type      unsigned-32)
	    (timestamp unsigned-32)
	    (which     integer-32)))

  (define-ftype SDL_AudioDeviceEvent
    (struct (type      unsigned-32)
	    (timestamp unsigned-32)
	    (which     unsigned-32)
	    (iscapture unsigned-8)
	    (padding1  unsigned-8)
	    (padding2  unsigned-8)
	    (padding3  unsigned-8)))

  (define-ftype SDL_QuitEvent
    (struct (type      unsigned-32)
	    (timestamp unsigned-32)))

  (define-ftype SDL_UserEvent
    (struct (type      unsigned-32)
	    (timestamp unsigned-32)
	    (windowID  unsigned-32)
	    (code      integer-32)
	    (data1     void*)
	    (data2     void*)))

  (define-ftype SDL_SysWMEvent
    (struct (type      unsigned-32)
	    (timestamp unsigned-32)
	    (msg       void*)))

  (define-ftype SDL_TouchFingerEvent
    (struct (type      unsigned-32)
	    (timestamp unsigned-32)
	    (touchId   integer-64)
	    (fingerId  integer-64)
	    (x         float)
	    (y         float)
	    (dx        float)
	    (dy        float)
	    (pressure  float)))

  (define-ftype SDL_MultiGestureEvent
    (struct (type       unsigned-32)
	    (timestamp  unsigned-32)
	    (touchId    integer-64)
	    (dTheta     float)
	    (dDist      float)
	    (x          float)
	    (y          float)
	    (numFingers unsigned-16)
	    (padding    unsigned-16)))

  (define-ftype SDL_DollarGestureEvent
    (struct (type       unsigned-32)
	    (timestamp  unsigned-32)
	    (touchId    integer-64)
	    (gestureId  integer-64)
	    (numFingers unsigned-32)
	    (error      float)
	    (x          float)
	    (y          float)))

  (define-ftype SDL_DropEvent
    (struct (type       unsigned-32)
	    (timestamp  unsigned-32)
	    (file       (* char))
	    (windowID   unsigned-32)))

  (define-ftype SDL_Event
    (union (type     unsigned-32)
	   (common   SDL_CommonEvent)
	   (window   SDL_WindowEvent)
	   (key      SDL_KeyboardEvent)
	   (edit     SDL_TextEditingEvent)
	   (text     SDL_TextInputEvent)
	   (motion   SDL_MouseMotionEvent)
	   (button   SDL_MouseButtonEvent)
	   (wheel    SDL_MouseWheelEvent)
	   (jaxis    SDL_JoyAxisEvent)
	   (jball    SDL_JoyBallEvent)
	   (jhat     SDL_JoyHatEvent)
	   (jbutton  SDL_JoyButtonEvent)
	   (jdevice  SDL_JoyDeviceEvent)
	   (caxis    SDL_ControllerAxisEvent)
	   (cbutton  SDL_ControllerButtonEvent)
	   (cdevice  SDL_ControllerDeviceEvent)
	   (adevice  SDL_AudioDeviceEvent)
	   (quit     SDL_QuitEvent)
	   (user     SDL_UserEvent)
	   (syswm    SDL_SysWMEvent)
	   (tfinger  SDL_TouchFingerEvent)
	   (mgesture SDL_MultiGestureEvent)
	   (dgesture SDL_DollarGestureEvent)
	   (drop     SDL_DropEvent)
	   (padding  (array 56 unsigned-8))))

  (define-ftype SDL_HapticDirection
    (struct (type unsigned-8)
	    (dir  (array 3 integer-32))))

  (define-ftype SDL_HapticConstant
    (struct (type          unsigned-16)
	    (direction     SDL_HapticDirection)
	    (length        unsigned-32)
	    (delay         unsigned-16)
	    (button        unsigned-16)
	    (interval      unsigned-16)
	    (level         integer-16)
	    (attack_length unsigned-16)
	    (attack_level  unsigned-16)
	    (fade_length   unsigned-16)
	    (fade_level    unsigned-16)))

  (define-ftype SDL_HapticPeriodic
    (struct (type          unsigned-16)
	    (direction     SDL_HapticDirection)
	    (length        unsigned-32)
	    (delay         unsigned-16)
	    (button        unsigned-16)
	    (interval      unsigned-16)
	    (period        unsigned-16)
	    (magnitude     integer-16)
	    (offset        integer-16)
	    (phase         unsigned-16)
	    (attack_length unsigned-16)
	    (attack_level  unsigned-16)
	    (fade_length   unsigned-16)
	    (fade_level    unsigned-16)))

  (define-ftype SDL_HapticCondition
    (struct (type          unsigned-16)
	    (direction     SDL_HapticDirection)
	    (length        unsigned-32)
	    (delay         unsigned-16)
	    (button        unsigned-16)
	    (interval      unsigned-16)
	    (right_sat     (array 3 unsigned-16))
	    (left_sat      (array 3 unsigned-16))
	    (right_coeff   (array 3 integer-16))
	    (left_coeff    (array 3 integer-16))
	    (deadband      (array 3 unsigned-16))
	    (center        (array 3 integer-16))))

  (define-ftype SDL_HapticRamp
    (struct (type          unsigned-16)
	    (direction     SDL_HapticDirection)
	    (length        unsigned-32)
	    (delay         unsigned-16)
	    (button        unsigned-16)
	    (interval      unsigned-16)
	    (start         integer-16)
	    (end           integer-16)
	    (attack_length unsigned-16)
	    (attack_level  unsigned-16)
	    (fade_length   unsigned-16)
	    (fade_level    unsigned-16)))

  (define-ftype SDL_HapticLeftRight
    (struct (type            unsigned-16)
	    (length          unsigned-32)
	    (large_magnitude unsigned-16)
	    (small_magnitude unsigned-16)))

  (define-ftype SDL_HapticCustom
    (struct (type          unsigned-16)
	    (direction     SDL_HapticDirection)
	    (length        unsigned-32)
	    (delay         unsigned-16)
	    (button        unsigned-16)
	    (interval      unsigned-16)
	    (channels      unsigned-8)
	    (period        unsigned-16)
	    (samples       unsigned-16)
	    (data          (* unsigned-16))
	    (attack_length unsigned-16)
	    (attack_level  unsigned-16)
	    (fade_length   unsigned-16)
	    (fade_level    unsigned-16)))

  (define-ftype SDL_HapticEffect
    (struct (type       unsigned-16)
	    (constant   SDL_HapticConstant)
	    (periodic   SDL_HapticPeriodic)
	    (condition  SDL_HapticCondition)
	    (ramp       SDL_HapticRamp)
	    (left_right SDL_HapticLeftRight)
	    (custom     SDL_HapticCustom)))

  (define-ftype SDL_Finger
    (struct (id       integer-64)
	    (x        float)
	    (y        float)
	    (pressure float)))

  (define-ftype SDL_JoystickGUID
    (struct (data (array 16 unsigned-8))))

  (define-ftype SDL_GameControllerButtonBind
    (struct (bindType int)
	    (value (union (button int)
			  (axis int)
			  (hat (struct (hat      int)
				       (hat_mask int)))))))

  (define-ftype SDL_Rect
    (struct (x int)
	    (y int)
	    (w int)
	    (h int)))

  (define-ftype SDL_Point
    (struct (x int)
	    (y int)))

  (define-ftype SDL_Color
    (struct (r unsigned-8)
	    (g unsigned-8)
	    (b unsigned-8)
	    (a unsigned-8)))

  (define-ftype SDL_Palette
    (struct (ncolors  int)
	    (colors   (* SDL_Color))
	    (version  unsigned-32)
	    (refcount int)))

  (define-ftype SDL_PixelFormat
    (struct (format        unsigned-32)
	    (palette       (* SDL_Palette))
	    (BitsPerPixel  unsigned-8)
	    (BytesPerPixel unsigned-8)
	    (padding       (array 2 unsigned-8))
	    (Rmask         unsigned-32)
	    (Gmask         unsigned-32)
	    (Bmask         unsigned-32)
	    (Amask         unsigned-32)
	    (Rloss         unsigned-8)
	    (Gloss         unsigned-8)
	    (Bloss         unsigned-8)
	    (Aloss         unsigned-8)
	    (Rshift        unsigned-8)
	    (Gshift        unsigned-8)
	    (Bshift        unsigned-8)
	    (Ashift        unsigned-8)
	    (refcount      int)
	    (next          (* SDL_PixelFormat))))

  (define-ftype SDL_Surface
    (struct (flags     unsigned-32)
	    (format    (* SDL_PixelFormat))
	    (w         int)
	    (h         int)
	    (pitch     int)
	    (pixels    void*)
	    (userdata  void*)
	    (locked    int)
	    (lock_data void*)
	    (clip_rect SDL_Rect)
	    (b_map     void*)
	    (refcount  int)))

  (define-ftype SDL_DisplayMode
    (struct (format       unsigned-32)
	    (w            int)
	    (h            int)
	    (refresh_rate int)
	    (driverdata   void*)))

  (define-ftype SDL_RendererInfo
    (struct (name                (* char))
	    (flags               unsigned-32)
	    (num_texture_formats unsigned-32)
	    (texture_formats     (array 16 unsigned-32))
	    (max_texture_width   int)
	    (max_texture_height  int)))

  (define-ftype SDL_MessageBoxColor
    (struct (r unsigned-8)
	    (g unsigned-8)
	    (b unsigned-8)))

  (define-ftype SDL_MessageBoxColorScheme
    (struct (colors (array 5 SDL_MessageBoxColor))))

  (define-ftype SDL_MessageBoxButtonData
    (struct (flags    unsigned-32)
	    (buttonid int)
	    (text     (* char))))

  (define-ftype SDL_MessageBoxData
    (struct (flags       unsigned-32)
	    (window      SDL_Window)
	    (title       (* char))
	    (message     (* char))
	    (numbuttons  int)
	    (buttons     (* SDL_MessageBoxButtonData))
	    (colorScheme (* SDL_MessageBoxColorScheme))))

  (define-ftype SDL_AudioCallback
    (function (void* u8* int) void))

  (define-ftype SDL_AudioFormat
    unsigned-16)

  (define-ftype SDL_AudioSpec
    (struct (freq     int)
	    (format   SDL_AudioFormat)
	    (channels unsigned-8)
	    (silence  unsigned-8)
	    (samples  unsigned-16)
	    (padding  unsigned-16)
	    (size     unsigned-32)
	    (callback void*)
	    (userdata void*)))

  (define-ftype SDL_AudioCVT
    (packed (struct (needed int)
		    (src_format   SDL_AudioFormat)
		    (dst_format   SDL_AudioFormat)
		    (rate_incr    double)
		    (buf          (* unsigned-8))
		    (len          int)
		    (len_cvt      int)
		    (len_mult     int)
		    (len_ratio    double)
		    (filters      (array 10 void*))
		    (filter_index int))))

  (define-ftype SDL_AudioStream
    void*)

 (define-ftype SDL_AudioDeviceID
    unsigned-32)

  (define-ftype SDL_AudioFilter
    (function ((* SDL_AudioCVT) SDL_AudioFormat) void))


  (define SDL_free       (sdl-procedure "SDL_free" (void*) void))
  (define SDL_FreeRW     (sdl-procedure "SDL_FreeRW" (void*) void))
  (define SDL_RWFromFile (sdl-procedure "SDL_RWFromFile" (string string) void*))

  (define SDL_AudioInit             (sdl-procedure "SDL_AudioInit" (string) int))
  (define SDL_AudioQuit             (sdl-procedure "SDL_AudioQuit" () void))
  (define SDL_BuildAudioCVT         (sdl-procedure "SDL_BuildAudioCVT" ((* SDL_AudioCVT) SDL_AudioFormat unsigned-8 int SDL_AudioFormat unsigned-8 int) int))
  (define SDL_ClearQueuedAudio      (sdl-procedure "SDL_ClearQueuedAudio" (SDL_AudioDeviceID) void))
  (define SDL_CloseAudio            (sdl-procedure "SDL_CloseAudio" () void))
  (define SDL_CloseAudioDevice      (sdl-procedure "SDL_CloseAudioDevice" (SDL_AudioDeviceID) void))
  (define SDL_ConvertAudio          (sdl-procedure "SDL_ConvertAudio" ((* SDL_AudioCVT)) int))
  (define SDL_DequeueAudio          (sdl-procedure "SDL_DequeueAudio" (SDL_AudioDeviceID void* unsigned-32) unsigned-32))
  (define SDL_FreeWAV               (sdl-procedure "SDL_FreeWAV" (u8*) void))
  (define SDL_GetAudioDeviceName    (sdl-procedure "SDL_GetAudioDeviceName" (int int) string))
  (define SDL_GetAudioDeviceStatus  (sdl-procedure "SDL_GetAudioDeviceStatus" (int) SDL_AudioDeviceID))
  (define SDL_GetAudioDriver        (sdl-procedure "SDL_GetAudioDriver" (int) string))
  (define SDL_GetAudioStatus        (sdl-procedure "SDL_GetAudioStatus" () int))
  (define SDL_GetCurrentAudioDriver (sdl-procedure "SDL_GetCurrentAudioDriver" () string))
  (define SDL_GetNumAudioDevices    (sdl-procedure "SDL_GetNumAudioDevices" (int) int))
  (define SDL_GetNumAudioDrivers    (sdl-procedure "SDL_GetNumAudioDrivers" () int))
  (define SDL_GetQueuedAudioSize    (sdl-procedure "SDL_GetQueuedAudioSize" (SDL_AudioDeviceID) unsigned-32))
  (define SDL_LoadWAV               (lambda (path spec buff length) (SDL_LoadWAV_RW (SDL_RWFromFile path "rb") 1 spec buff length)))
  (define SDL_LoadWAV_RW            (sdl-procedure "SDL_LoadWAV_RW" (void* int (* SDL_AudioSpec) void* u32*) (* SDL_AudioSpec)))
  (define SDL_LockAudio             (sdl-procedure "SDL_LockAudio" () void))
  (define SDL_LockAudioDevice       (sdl-procedure "SDL_LockAudioDevice" (SDL_AudioDeviceID) void))
  (define SDL_MixAudio              (sdl-procedure "SDL_MixAudio" (u8* u8* unsigned-32 int) void))
  (define SDL_MixAudioFormat        (sdl-procedure "SDL_MixAudioFormat" (u8* u8* SDL_AudioFormat unsigned-32 int) void))
  (define SDL_OpenAudio             (sdl-procedure "SDL_OpenAudio" ((* SDL_AudioSpec) (* SDL_AudioSpec)) int))
  (define SDL_OpenAudioDevice       (sdl-procedure "SDL_OpenAudioDevice" (string int (* SDL_AudioSpec) (* SDL_AudioSpec) int) SDL_AudioDeviceID))
  (define SDL_PauseAudio            (sdl-procedure "SDL_PauseAudio" (int) void))
  (define SDL_PauseAudioDevice      (sdl-procedure "SDL_PauseAudioDevice" (SDL_AudioDeviceID int) void))
  (define SDL_QueueAudio            (sdl-procedure "SDL_QueueAudio" (SDL_AudioDeviceID u8* unsigned-32) int))
  (define SDL_UnlockAudio           (sdl-procedure "SDL_UnlockAudio" () void))
  (define SDL_UnlockAudioDevice     (sdl-procedure "SDL_UnlockAudioDevice" (SDL_AudioDeviceID) void))


  (define SDL_Init                  (sdl-procedure "SDL_Init" (unsigned-32) int))
  (define SDL_InitSubSystem         (sdl-procedure "SDL_InitSubSystem" (unsigned-32) int))
  (define SDL_Quit                  (sdl-procedure "SDL_Quit" () void))
  (define SDL_QuitSubSystem         (sdl-procedure "SDL_QuitSubSystem" (unsigned-32) void))
  (define SDL_SetMainReady          (sdl-procedure "SDL_SetMainReady" () void))
  (define SDL_WasInit               (sdl-procedure "SDL_WasInit" (unsigned-32) unsigned-32))

  (define SDL_AddHintCallback       (sdl-procedure "SDL_AddHintCallback" (string void* void*) void))
  (define SDL_ClearHints            (sdl-procedure "SDL_ClearHints" () void))
  (define SDL_DelHintCallback       (sdl-procedure "SDL_DelHintCallback" (string void* void*) void))
  (define SDL_GetHint               (sdl-procedure "SDL_GetHint" (string) string))
  (define SDL_GetHintBoolean        (sdl-procedure "SDL_GetHintBoolean" (string int) int))
  (define SDL_SetHint               (sdl-procedure "SDL_SetHint" (string string) int))
  (define SDL_SetHintWithPriority   (sdl-procedure "SDL_SetHintWithPriority" (string string int) int))

  (define SDL_ClearError            (sdl-procedure "SDL_ClearError" () void))
  (define SDL_GetError              (sdl-procedure "SDL_GetError" () string))
  (define SDL_SetError              (sdl-procedure "SDL_SetError" (string) int))

  (define SDL_GetVersion            (sdl-procedure "SDL_GetVersion" ((* SDL_version)) void))
  (define SDL_GetRevision           (sdl-procedure "SDL_GetRevision" () string))
  (define SDL_GetRevisionNumber     (sdl-procedure "SDL_GetRevisionNumber" () int))


  (define SDL_PollEvent (sdl-procedure "SDL_PollEvent" ((* SDL_Event)) int))


  (define SDL_HapticClose             (sdl-procedure "SDL_HapticClose" (SDL_Haptic) void))
  (define SDL_HapticDestroyEffect     (sdl-procedure "SDL_HapticDestroyEffect" (SDL_Haptic int) void))
  (define SDL_HapticEffectSupported   (sdl-procedure "SDL_HapticEffectSupported" (SDL_Haptic (* SDL_HapticEffect)) int))
  (define SDL_HapticGetEffectStatus   (sdl-procedure "SDL_HapticGetEffectStatus" (SDL_Haptic int) int))
  (define SDL_HapticIndex             (sdl-procedure "SDL_HapticIndex" (SDL_Haptic) int))
  (define SDL_HapticName              (sdl-procedure "SDL_HapticName" (int) string))
  (define SDL_HapticNewEffect         (sdl-procedure "SDL_HapticNewEffect" (SDL_Haptic (* SDL_HapticEffect)) int))
  (define SDL_HapticNumAxes           (sdl-procedure "SDL_HapticNumAxes" (SDL_Haptic) int))
  (define SDL_HapticNumEffects        (sdl-procedure "SDL_HapticNumEffects" (SDL_Haptic) int))
  (define SDL_HapticNumEffectsPlaying (sdl-procedure "SDL_HapticNumEffectsPlaying" (SDL_Haptic) int))
  (define SDL_HapticOpen              (sdl-procedure "SDL_HapticOpen" (int) SDL_Haptic))
  (define SDL_HapticOpenFromJoystick  (sdl-procedure "SDL_HapticOpenFromJoystick" (SDL_Joystick) SDL_Haptic))
  (define SDL_HapticOpenFromMouse     (sdl-procedure "SDL_HapticOpenFromMouse" () SDL_Haptic))
  (define SDL_HapticOpened            (sdl-procedure "SDL_HapticOpened" (int) int))
  (define SDL_HapticPause             (sdl-procedure "SDL_HapticPause" (SDL_Haptic) int))
  (define SDL_HapticQuery             (sdl-procedure "SDL_HapticQuery" (SDL_Haptic) unsigned))
  (define SDL_HapticRumbleInit        (sdl-procedure "SDL_HapticRumbleInit" (SDL_Haptic) int))
  (define SDL_HapticRumblePlay        (sdl-procedure "SDL_HapticRumblePlay" (SDL_Haptic float unsigned-32) int))
  (define SDL_HapticRumbleStop        (sdl-procedure "SDL_HapticRumbleStop" (SDL_Haptic) int))
  (define SDL_HapticRumbleSupported   (sdl-procedure "SDL_HapticRumbleSupported" (SDL_Haptic) int))
  (define SDL_HapticRunEffect         (sdl-procedure "SDL_HapticRunEffect" (SDL_Haptic int unsigned-32) int))
  (define SDL_HapticSetAutocenter     (sdl-procedure "SDL_HapticSetAutocenter" (SDL_Haptic int) int))
  (define SDL_HapticSetGain           (sdl-procedure "SDL_HapticSetGain" (SDL_Haptic int) int))
  (define SDL_HapticStopAll           (sdl-procedure "SDL_HapticStopAll" (SDL_Haptic) int))
  (define SDL_HapticStopEffect        (sdl-procedure "SDL_HapticStopEffect" (SDL_Haptic int) int))
  (define SDL_HapticUnpause           (sdl-procedure "SDL_HapticUnpause" (SDL_Haptic) int))
  (define SDL_HapticUpdateEffect      (sdl-procedure "SDL_HapticUpdateEffect" (SDL_Haptic int (* SDL_HapticEffect)) int))
  (define SDL_JoystickIsHaptic        (sdl-procedure "SDL_JoystickIsHaptic" (SDL_Joystick) int))
  (define SDL_MouseIsHaptic           (sdl-procedure "SDL_MouseIsHaptic" () int))
  (define SDL_NumHaptics              (sdl-procedure "SDL_NumHaptics" () int))


  (define SDL_GetKeyFromName                    (sdl-procedure "SDL_GetKeyFromName" (string) int))
  (define SDL_GetKeyFromScancode                (sdl-procedure "SDL_GetKeyFromScancode" (int) int))
  (define SDL_GetKeyName                        (sdl-procedure "SDL_GetKeyName" (int) string))
  (define SDL_GetKeyboardFocus                  (sdl-procedure "SDL_GetKeyboardFocus" () SDL_Window))
  (define SDL_GetKeyboardState                  (sdl-procedure "SDL_GetKeyboardState" (void*) (* unsigned-8)))
  (define SDL_GetModState                       (sdl-procedure "SDL_GetModState" () int))
  (define SDL_GetScancodeFromKey                (sdl-procedure "SDL_GetScancodeFromKey" (int) int))
  (define SDL_GetScancodeFromName               (sdl-procedure "SDL_GetScancodeFromName" (string) int))
  (define SDL_GetScancodeName                   (sdl-procedure "SDL_GetScancodeName" (int) string))
  (define SDL_HasScreenKeyboardSupport          (sdl-procedure "SDL_HasScreenKeyboardSupport" () int))
  (define SDL_IsScreenKeyboardShown             (sdl-procedure "SDL_IsScreenKeyboardShown" (SDL_Window) int))
  (define SDL_IsTextInputActive                 (sdl-procedure "SDL_IsTextInputActive" () int))
  (define SDL_SetModState                       (sdl-procedure "SDL_SetModState" (int) void))
  (define SDL_SetTextInputRect                  (sdl-procedure "SDL_SetTextInputRect" ((* SDL_Rect)) void))
  (define SDL_StartTextInput                    (sdl-procedure "SDL_StartTextInput" () void))
  (define SDL_StopTextInput                     (sdl-procedure "SDL_StopTextInput" () void))

  (define SDL_CaptureMouse                      (sdl-procedure "SDL_CaptureMouse" (int) int))
  (define SDL_CreateColorCursor                 (sdl-procedure "SDL_CreateColorCursor" ((* SDL_Surface) int int) SDL_Cursor))
  (define SDL_CreateCursor                      (sdl-procedure "SDL_CreateCursor" ((* unsigned-8) (* unsigned-8) int int int int) SDL_Cursor))
  (define SDL_CreateSystemCursor                (sdl-procedure "SDL_CreateSystemCursor" (int) SDL_Cursor))
  (define SDL_FreeCursor                        (sdl-procedure "SDL_FreeCursor" (SDL_Cursor) void))
  (define SDL_GetCursor                         (sdl-procedure "SDL_GetCursor" () SDL_Cursor))
  (define SDL_GetDefaultCursor                  (sdl-procedure "SDL_GetDefaultCursor" () SDL_Cursor))
  (define SDL_GetGlobalMouseState               (sdl-procedure "SDL_GetGlobalMouseState" ((* int) (* int)) unsigned-32))
  (define SDL_GetMouseFocus                     (sdl-procedure "SDL_GetMouseFocus" () SDL_Window))
  (define SDL_GetMouseState                     (sdl-procedure "SDL_GetMouseState" ((* int) (* int)) unsigned-32))
  (define SDL_GetRelativeMouseMode              (sdl-procedure "SDL_GetRelativeMouseMode" () int))
  (define SDL_GetRelativeMouseState             (sdl-procedure "SDL_GetRelativeMouseState" ((* int) (* int)) unsigned-32))
  (define SDL_SetCursor                         (sdl-procedure "SDL_SetCursor" (SDL_Cursor) void))
  (define SDL_SetRelativeMouseMode              (sdl-procedure "SDL_SetRelativeMouseMode" (int) int))
  (define SDL_ShowCursor                        (sdl-procedure "SDL_ShowCursor" (int) int))
  (define SDL_WarpMouseGlobal                   (sdl-procedure "SDL_WarpMouseGlobal" (int int) int))
  (define SDL_WarpMouseInWindow                 (sdl-procedure "SDL_WarpMouseInWindow" (SDL_Window int int) void))

  (define SDL_JoystickClose                     (sdl-procedure "SDL_JoystickClose" (SDL_Joystick) void))
  (define SDL_JoystickCurrentPowerLevel         (sdl-procedure "SDL_JoystickCurrentPowerLevel" (SDL_Joystick) int))
  (define SDL_JoystickEventState                (sdl-procedure "SDL_JoystickEventState" (int) int))
  (define SDL_JoystickFromInstanceID            (sdl-procedure "SDL_JoystickFromInstanceID" (integer-32) SDL_Joystick))
  (define SDL_JoystickGetAttached               (sdl-procedure "SDL_JoystickGetAttached" (SDL_Joystick) int))
  (define SDL_JoystickGetAxis                   (sdl-procedure "SDL_JoystickGetAxis" (SDL_Joystick int) integer-16))
  (define SDL_JoystickGetBall                   (sdl-procedure "SDL_JoystickGetBall" (SDL_Joystick int (* int) (* int)) int))
  (define SDL_JoystickGetButton                 (sdl-procedure "SDL_JoystickGetButton" (SDL_Joystick int) unsigned-8))
  (define SDL_JoystickGetDeviceGUID             (sdl-procedure "SDL_JoystickGetDeviceGUID" (int) (& SDL_JoystickGUID)))
  (define SDL_JoystickGetGUID                   (sdl-procedure "SDL_JoystickGetGUID" (SDL_Joystick) (& SDL_JoystickGUID)))
  (define SDL_JoystickGetGUIDFromString         (sdl-procedure "SDL_JoystickGetGUIDFromString" (string) (& SDL_JoystickGUID)))
  (define SDL_JoystickGetGUIDString             (sdl-procedure "SDL_JoystickGetGUIDString" ((& SDL_JoystickGUID) (* char) int) void))
  (define SDL_JoystickGetHat                    (sdl-procedure "SDL_JoystickGetHat" (SDL_Joystick int) unsigned-8))
  (define SDL_JoystickInstanceID                (sdl-procedure "SDL_JoystickInstanceID" (SDL_Joystick) integer-32))
  (define SDL_JoystickName                      (sdl-procedure "SDL_JoystickName" (SDL_Joystick) string))
  (define SDL_JoystickNameForIndex              (sdl-procedure "SDL_JoystickNameForIndex" (int) string))
  (define SDL_JoystickNumAxes                   (sdl-procedure "SDL_JoystickNumAxes" (SDL_Joystick) int))
  (define SDL_JoystickNumBalls                  (sdl-procedure "SDL_JoystickNumBalls" (SDL_Joystick) int))
  (define SDL_JoystickNumButtons                (sdl-procedure "SDL_JoystickNumButtons" (SDL_Joystick) int))
  (define SDL_JoystickNumHats                   (sdl-procedure "SDL_JoystickNumHats" (SDL_Joystick) int))
  (define SDL_JoystickOpen                      (sdl-procedure "SDL_JoystickOpen" (int) SDL_Joystick))
  (define SDL_JoystickUpdate                    (sdl-procedure "SDL_JoystickUpdate" () void))
  (define SDL_NumJoysticks                      (sdl-procedure "SDL_NumJoysticks" () int))

  (define SDL_GameControllerAddMapping          (sdl-procedure "SDL_GameControllerAddMapping" (string) int))
  (define SDL_GameControllerAddMappingsFromFile (lambda (path) (SDL_GameControllerAddMappingsFromRW (SDL_RWFromFile path "rb") 1)))
  (define SDL_GameControllerAddMappingsFromRW   (sdl-procedure "SDL_GameControllerAddMappingsFromRW" (void* int) int))
  (define SDL_GameControllerClose               (sdl-procedure "SDL_GameControllerClose" (SDL_GameController) void))
  (define SDL_GameControllerEventState          (sdl-procedure "SDL_GameControllerEventState" (int) int))
  (define SDL_GameControllerFromInstanceID      (sdl-procedure "SDL_GameControllerFromInstanceID" (integer-32) SDL_GameController))
  (define SDL_GameControllerGetAttached         (sdl-procedure "SDL_GameControllerGetAttached" (SDL_GameController) int))
  (define SDL_GameControllerGetAxis             (sdl-procedure "SDL_GameControllerGetAxis" (SDL_GameController int) integer-16))
  (define SDL_GameControllerGetAxisFromString   (sdl-procedure "SDL_GameControllerGetAxisFromString" (string) int))
  (define SDL_GameControllerGetBindForAxis      (sdl-procedure "SDL_GameControllerGetBindForAxis" (SDL_GameController int) (& SDL_GameControllerButtonBind)))
  (define SDL_GameControllerGetBindForButton    (sdl-procedure "SDL_GameControllerGetBindForButton" (SDL_GameController int) (& SDL_GameControllerButtonBind)))
  (define SDL_GameControllerGetButton           (sdl-procedure "SDL_GameControllerGetButton" (SDL_GameController int) unsigned-8))
  (define SDL_GameControllerGetButtonFromString (sdl-procedure "SDL_GameControllerGetButtonFromString" (string) int))
  (define SDL_GameControllerGetJoystick         (sdl-procedure "SDL_GameControllerGetJoystick" (SDL_GameController) SDL_Joystick))
  (define SDL_GameControllerGetStringForAxis    (sdl-procedure "SDL_GameControllerGetStringForAxis" (int) string))
  (define SDL_GameControllerGetStringForButton  (sdl-procedure "SDL_GameControllerGetStringForButton" (int) string))
  (define SDL_GameControllerMapping             (sdl-procedure "SDL_GameControllerMapping" (SDL_GameController) string))
  (define SDL_GameControllerMappingForGUID      (sdl-procedure "SDL_GameControllerMappingForGUID" ((& SDL_JoystickGUID)) string))
  (define SDL_GameControllerName                (sdl-procedure "SDL_GameControllerName" (SDL_GameController) string))
  (define SDL_GameControllerNameForIndex        (sdl-procedure "SDL_GameControllerNameForIndex" (int) string))
  (define SDL_GameControllerOpen                (sdl-procedure "SDL_GameControllerOpen" (int) SDL_GameController))
  (define SDL_GameControllerUpdate              (sdl-procedure "SDL_GameControllerUpdate" () void))
  (define SDL_IsGameController                  (sdl-procedure "SDL_IsGameController" (int) int))

  (define SDL_GetNumTouchDevices                (sdl-procedure "SDL_GetNumTouchDevices" () int))
  (define SDL_GetTouchDevice                    (sdl-procedure "SDL_GetTouchDevice" (int) integer-64))
  (define SDL_GetNumTouchFingers                (sdl-procedure "SDL_GetNumTouchFingers" (integer-64) int))
  (define SDL_GetTouchFinger                    (sdl-procedure "SDL_GetTouchFinger" (integer-64 int) (* SDL_Finger)))


  (define SDL_GetPowerInfo (sdl-procedure "SDL_GetPowerInfo" ((* int) (* int)) int))


  (define SDL_AddTimer                (sdl-procedure "SDL_AddTimer" (unsigned-32 void* void*) int))
  (define SDL_Delay                   (sdl-procedure "SDL_Delay" (unsigned-32) void))
  (define SDL_GetPerformanceCounter   (sdl-procedure "SDL_GetPerformanceCounter" () unsigned-64))
  (define SDL_GetPerformanceFrequency (sdl-procedure "SDL_GetPerformanceFrequency" () unsigned-64))
  (define SDL_GetTicks                (sdl-procedure "SDL_GetTicks" () unsigned-32))
  (define SDL_RemoveTimer             (sdl-procedure "SDL_RemoveTimer" (int) int))


  (define SDL_CreateWindow               (sdl-procedure "SDL_CreateWindow" (string int int int int unsigned-32) SDL_Window))
  (define SDL_CreateWindowFrom           (sdl-procedure "SDL_CreateWindowFrom" (void*) SDL_Window))
  (define SDL_DestroyWindow              (sdl-procedure "SDL_DestroyWindow" (SDL_Window) void))
  (define SDL_DisableScreenSaver         (sdl-procedure "SDL_DisableScreenSaver" () void))
  (define SDL_EnableScreenSaver          (sdl-procedure "SDL_EnableScreenSaver" () void))
  (define SDL_GL_CreateContext           (sdl-procedure "SDL_GL_CreateContext" (SDL_Window) SDL_GLContext))
  (define SDL_GL_DeleteContext           (sdl-procedure "SDL_GL_DeleteContext" (SDL_GLContext) void))
  (define SDL_GL_ExtensionSupported      (sdl-procedure "SDL_GL_ExtensionSupported" (string) int))
  (define SDL_GL_GetAttribute            (sdl-procedure "SDL_GL_GetAttribute" (int (* int)) int))
  (define SDL_GL_GetCurrentContext       (sdl-procedure "SDL_GL_GetCurrentContext" () SDL_GLContext))
  (define SDL_GL_GetCurrentWindow        (sdl-procedure "SDL_GL_GetCurrentWindow" () SDL_Window))
  (define SDL_GL_GetDrawableSize         (sdl-procedure "SDL_GL_GetDrawableSize" (SDL_Window (* int) (* int)) void))
  (define SDL_GL_GetProcAddress          (sdl-procedure "SDL_GL_GetProcAddress" (string) void*))
  (define SDL_GL_GetSwapInterval         (sdl-procedure "SDL_GL_GetSwapInterval" () int))
  (define SDL_GL_LoadLibrary             (sdl-procedure "SDL_GL_LoadLibrary" (string) int))
  (define SDL_GL_MakeCurrent             (sdl-procedure "SDL_GL_MakeCurrent" (SDL_Window SDL_GLContext) int))
  (define SDL_GL_ResetAttributes         (sdl-procedure "SDL_GL_ResetAttributes" () void))
  (define SDL_GL_SetAttribute            (sdl-procedure "SDL_GL_SetAttribute" (int int) int))
  (define SDL_GL_SetSwapInterval         (sdl-procedure "SDL_GL_SetSwapInterval" (int) int))
  (define SDL_GL_SwapWindow              (sdl-procedure "SDL_GL_SwapWindow" (SDL_Window) void))
  (define SDL_GL_UnloadLibrary           (sdl-procedure "SDL_GL_UnloadLibrary" () void))
  (define SDL_GetClosestDisplayMode      (sdl-procedure "SDL_GetClosestDisplayMode" (int (* SDL_DisplayMode) (* SDL_DisplayMode)) (* SDL_DisplayMode)))
  (define SDL_GetCurrentDisplayMode      (sdl-procedure "SDL_GetCurrentDisplayMode" (int (* SDL_DisplayMode)) int))
  (define SDL_GetCurrentVideoDriver      (sdl-procedure "SDL_GetCurrentVideoDriver" () string))
  (define SDL_GetDesktopDisplayMode      (sdl-procedure "SDL_GetDesktopDisplayMode" (int (* SDL_DisplayMode)) int))
  (define SDL_GetDisplayBounds           (sdl-procedure "SDL_GetDisplayBounds" (int (* SDL_Rect)) int))
  (define SDL_GetDisplayDPI              (sdl-procedure "SDL_GetDisplayDPI" (int (* float) (* float) (* float)) int))
  (define SDL_GetDisplayName             (sdl-procedure "SDL_GetDisplayName" (int) string))
  (define SDL_GetDisplayUsableBounds     (sdl-procedure "SDL_GetDisplayUsableBounds" (int (* SDL_Rect)) int))
  (define SDL_GetGrabbedWindow           (sdl-procedure "SDL_GetGrabbedWindow" () SDL_Window))
  (define SDL_GetNumDisplayModes         (sdl-procedure "SDL_GetNumDisplayModes" () int))
  (define SDL_GetNumVideoDisplays        (sdl-procedure "SDL_GetNumVideoDisplays" () int))
  (define SDL_GetNumVideoDrivers         (sdl-procedure "SDL_GetNumVideoDrivers" () int))
  (define SDL_GetVideoDriver             (sdl-procedure "SDL_GetVideoDriver" (int) string))
  (define SDL_GetWindowBordersSize       (sdl-procedure "SDL_GetWindowBordersSize" (SDL_Window (* int) (* int) (* int) (* int)) int))
  (define SDL_GetWindowBrightness        (sdl-procedure "SDL_GetWindowBrightness" (SDL_Window) float))
  (define SDL_GetWindowData              (sdl-procedure "SDL_GetWindowData" (SDL_Window string) void*))
  (define SDL_GetWindowDisplayIndex      (sdl-procedure "SDL_GetWindowDisplayIndex" (SDL_Window) int))
  (define SDL_GetWindowDisplayMode       (sdl-procedure "SDL_GetWindowDisplayMode" (SDL_Window (* SDL_DisplayMode)) int))
  (define SDL_GetWindowFlags             (sdl-procedure "SDL_GetWindowFlags" (SDL_Window) unsigned-32))
  (define SDL_GetWindowFromID            (sdl-procedure "SDL_GetWindowFromID" (unsigned-32) SDL_Window))
  (define SDL_GetWindowGammaRamp         (sdl-procedure "SDL_GetWindowGammaRamp" (SDL_Window (* unsigned-16) (* unsigned-16) (* unsigned-16)) int))
  (define SDL_GetWindowGrab              (sdl-procedure "SDL_GetWindowGrab" (SDL_Window) int))
  (define SDL_GetWindowID                (sdl-procedure "SDL_GetWindowID" (SDL_Window) unsigned-32))
  (define SDL_GetWindowMaximumSize       (sdl-procedure "SDL_GetWindowMaximumSize" (SDL_Window (* int) (* int)) void))
  (define SDL_GetWindowMinimumSize       (sdl-procedure "SDL_GetWindowMinimumSize" (SDL_Window (* int) (* int)) void))
  (define SDL_GetWindowOpacity           (sdl-procedure "SDL_GetWindowOpacity" (SDL_Window (* float)) int))
  (define SDL_GetWindowPixelFormat       (sdl-procedure "SDL_GetWindowPixelFormat" (SDL_Window) unsigned-32))
  (define SDL_GetWindowPosition          (sdl-procedure "SDL_GetWindowPosition" (SDL_Window (* int) (* int)) void))
  (define SDL_GetWindowSize              (sdl-procedure "SDL_GetWindowSize" (SDL_Window (* int) (* int)) void))
  (define SDL_GetWindowSurface           (sdl-procedure "SDL_GetWindowSurface" (SDL_Window) (* SDL_Surface)))
  (define SDL_GetWindowTitle             (sdl-procedure "SDL_GetWindowTitle" (SDL_Window) string))
  (define SDL_GetWindowWMInfo            (sdl-procedure "SDL_GetWindowWMInfo" (SDL_Window SDL_SysWMinfo) int))
  (define SDL_HideWindow                 (sdl-procedure "SDL_HideWindow" (SDL_Window) void))
  (define SDL_IsScreenSaverEnabled       (sdl-procedure "SDL_IsScreenSaverEnabled" () int))
  (define SDL_MaximizeWindow             (sdl-procedure "SDL_MaximizeWindow" (SDL_Window) void))
  (define SDL_MinimizeWindow             (sdl-procedure "SDL_MinimizeWindow" (SDL_Window) void))
  (define SDL_RaiseWindow                (sdl-procedure "SDL_RaiseWindow" (SDL_Window) void))
  (define SDL_RestoreWindow              (sdl-procedure "SDL_RestoreWindow" (SDL_Window) void))
  (define SDL_SetWindowBordered          (sdl-procedure "SDL_SetWindowBordered" (SDL_Window int) void))
  (define SDL_SetWindowBrightness        (sdl-procedure "SDL_SetWindowBrightness" (SDL_Window float) int))
  (define SDL_SetWindowData              (sdl-procedure "SDL_SetWindowData" (SDL_Window string void*) void*))
  (define SDL_SetWindowDisplayMode       (sdl-procedure "SDL_SetWindowDisplayMode" (SDL_Window (* SDL_DisplayMode)) int))
  (define SDL_SetWindowFullscreen        (sdl-procedure "SDL_SetWindowFullscreen" (SDL_Window unsigned-32) int))
  (define SDL_SetWindowGammaRamp         (sdl-procedure "SDL_SetWindowGammaRamp" (SDL_Window (* unsigned-16) (* unsigned-16) (* unsigned-16)) int))
  (define SDL_SetWindowGrab              (sdl-procedure "SDL_SetWindowGrab" (SDL_Window int) void))
  (define SDL_SetWindowIcon              (sdl-procedure "SDL_SetWindowIcon" (SDL_Window (* SDL_Surface)) void))
  (define SDL_SetWindowInputFocus        (sdl-procedure "SDL_SetWindowInputFocus" (SDL_Window) int))
  (define SDL_SetWindowMaximumSize       (sdl-procedure "SDL_SetWindowMaximumSize" (SDL_Window int int) void))
  (define SDL_SetWindowMinimumSize       (sdl-procedure "SDL_SetWindowMinimumSize" (SDL_Window int int) void))
  (define SDL_SetWindowModalFor          (sdl-procedure "SDL_SetWindowModalFor" (SDL_Window SDL_Window) int))
  (define SDL_SetWindowOpacity           (sdl-procedure "SDL_SetWindowOpacity" (SDL_Window float) int))
  (define SDL_SetWindowPosition          (sdl-procedure "SDL_SetWindowPosition" (SDL_Window int int) void))
  (define SDL_SetWindowResizable         (sdl-procedure "SDL_SetWindowResizable" (SDL_Window int) void))
  (define SDL_SetWindowSize              (sdl-procedure "SDL_SetWindowSize" (SDL_Window int int) void))
  (define SDL_SetWindowTitle             (sdl-procedure "SDL_SetWindowTitle" (SDL_Window string) void))
  (define SDL_ShowMessageBox             (sdl-procedure "SDL_ShowMessageBox" ((* SDL_MessageBoxData) (* int)) int))
  (define SDL_ShowSimpleMessageBox       (sdl-procedure "SDL_ShowSimpleMessageBox" (unsigned-32 string string SDL_Window) int))
  (define SDL_ShowWindow                 (sdl-procedure "SDL_ShowWindow" (SDL_Window) void))
  (define SDL_UpdateWindowSurface        (sdl-procedure "SDL_UpdateWindowSurface" (SDL_Window) int))
  (define SDL_UpdateWindowSurfaceRects   (sdl-procedure "SDL_UpdateWindowSurfaceRects" (SDL_Window (* SDL_Rect) int) int))
  (define SDL_VideoInit                  (sdl-procedure "SDL_VideoInit" (string) int))
  (define SDL_VideoQuit                  (sdl-procedure "SDL_VideoQuit" () void))

  (define SDL_ComposeCustomBlendMode     (sdl-procedure "SDL_ComposeCustomBlendMode" (int int int int int int) int))
  (define SDL_CreateRenderer             (sdl-procedure "SDL_CreateRenderer" (SDL_Window int unsigned-32) SDL_Renderer))
  (define SDL_CreateSoftwareRenderer     (sdl-procedure "SDL_CreateSoftwareRenderer" ((* SDL_Surface)) SDL_Renderer))
  (define SDL_CreateTexture              (sdl-procedure "SDL_CreateTexture" (SDL_Renderer unsigned-32 int int int) SDL_Texture))
  (define SDL_CreateTextureFromSurface   (sdl-procedure "SDL_CreateTextureFromSurface" (SDL_Renderer (* SDL_Surface)) SDL_Texture))
  (define SDL_CreateWindowAndRenderer    (sdl-procedure "SDL_CreateWindowAndRenderer" (int int unsigned-32 (* void*) (* void*)) int))
  (define SDL_DestroyRenderer            (sdl-procedure "SDL_DestroyRenderer" (SDL_Renderer) void))
  (define SDL_DestroyTexture             (sdl-procedure "SDL_DestroyTexture" (SDL_Texture) void))
  (define SDL_GL_BindTexture             (sdl-procedure "SDL_GL_BindTexture" (SDL_Texture (* float) (* float)) int))
  (define SDL_GL_UnbindTexture           (sdl-procedure "SDL_GL_UnbindTexture" (SDL_Texture) int))
  (define SDL_GetNumRenderDrivers        (sdl-procedure "SDL_GetNumRenderDrivers" () int))
  (define SDL_GetRenderDrawBlendMode     (sdl-procedure "SDL_GetRenderDrawBlendMode" (SDL_Renderer (* int)) int))
  (define SDL_GetRenderDrawColor         (sdl-procedure "SDL_GetRenderDrawColor" (SDL_Renderer (* unsigned-8) (* unsigned-8) (* unsigned-8) (* unsigned-8)) int))
  (define SDL_GetRenderDriverInfo        (sdl-procedure "SDL_GetRenderDriverInfo" (int (* SDL_RendererInfo)) int))
  (define SDL_GetRenderTarget            (sdl-procedure "SDL_GetRenderTarget" (SDL_Renderer) SDL_Texture))
  (define SDL_GetRenderer                (sdl-procedure "SDL_GetRenderer" (SDL_Window) SDL_Renderer))
  (define SDL_GetRendererInfo            (sdl-procedure "SDL_GetRendererInfo" (SDL_Renderer (* SDL_RendererInfo)) int))
  (define SDL_GetRendererOutputSize      (sdl-procedure "SDL_GetRendererOutputSize" (SDL_Renderer (* int) (* int)) int))
  (define SDL_GetTextureAlphaMod         (sdl-procedure "SDL_GetTextureAlphaMod" (SDL_Texture (* unsigned-8)) int))
  (define SDL_GetTextureBlendMode        (sdl-procedure "SDL_GetTextureBlendMode" (SDL_Texture (* int)) int))
  (define SDL_GetTextureColorMod         (sdl-procedure "SDL_GetTextureColorMod" (SDL_Texture (* unsigned-8) (* unsigned-8) (* unsigned-8)) int))
  (define SDL_LockTexture                (sdl-procedure "SDL_LockTexture" (SDL_Texture (* SDL_Rect) (* void*) (* int)) int))
  (define SDL_QueryTexture               (sdl-procedure "SDL_QueryTexture" (SDL_Texture (* unsigned-32) (* int) (* int) (* int)) int))
  (define SDL_RenderClear                (sdl-procedure "SDL_RenderClear" (SDL_Renderer) int))
  (define SDL_RenderCopy                 (sdl-procedure "SDL_RenderCopy" (SDL_Renderer SDL_Texture (* SDL_Rect) (* SDL_Rect)) int))
  (define SDL_RenderCopyEx               (sdl-procedure "SDL_RenderCopyEx" (SDL_Renderer SDL_Texture (* SDL_Rect) (* SDL_Rect) double (* SDL_Point) int) int))
  (define SDL_RenderDrawLine             (sdl-procedure "SDL_RenderDrawLine" (SDL_Renderer int int int int) int))
  (define SDL_RenderDrawLines            (sdl-procedure "SDL_RenderDrawLines" (SDL_Renderer (* SDL_Point) int) int))
  (define SDL_RenderDrawPoint            (sdl-procedure "SDL_RenderDrawPoint" (SDL_Renderer int int) int))
  (define SDL_RenderDrawPoints           (sdl-procedure "SDL_RenderDrawPoints" (SDL_Renderer (* SDL_Point) int) int))
  (define SDL_RenderDrawRect             (sdl-procedure "SDL_RenderDrawRect" (SDL_Renderer (* SDL_Rect)) int))
  (define SDL_RenderDrawRects            (sdl-procedure "SDL_RenderDrawRects" (SDL_Renderer (* SDL_Rect) int) int))
  (define SDL_RenderFillRect             (sdl-procedure "SDL_RenderFillRect" (SDL_Renderer (* SDL_Rect)) int))
  (define SDL_RenderFillRects            (sdl-procedure "SDL_RenderFillRects" (SDL_Renderer (* SDL_Rect) int) int))
  (define SDL_RenderGetClipRect          (sdl-procedure "SDL_RenderGetClipRect" (SDL_Renderer (* SDL_Rect)) void))
  (define SDL_RenderGetIntegerScale      (sdl-procedure "SDL_RenderGetIntegerScale" (SDL_Renderer) int))
  (define SDL_RenderGetLogicalSize       (sdl-procedure "SDL_RenderGetLogicalSize" (SDL_Renderer (* int) (* int)) void))
  (define SDL_RenderGetScale             (sdl-procedure "SDL_RenderGetScale" (SDL_Renderer (* float) (* float)) void))
  (define SDL_RenderGetViewport          (sdl-procedure "SDL_RenderGetViewport" (SDL_Renderer (* SDL_Rect)) void))
  (define SDL_RenderIsClipEnabled        (sdl-procedure "SDL_RenderIsClipEnabled" (SDL_Renderer) int))
  (define SDL_RenderPresent              (sdl-procedure "SDL_RenderPresent" (SDL_Renderer) void))
  (define SDL_RenderReadPixels           (sdl-procedure "SDL_RenderReadPixels" (SDL_Renderer (* SDL_Rect) unsigned-32 void* int) int))
  (define SDL_RenderSetClipRect          (sdl-procedure "SDL_RenderSetClipRect" (SDL_Renderer (* SDL_Rect)) int))
  (define SDL_RenderSetIntegerScale      (sdl-procedure "SDL_RenderSetIntegerScale" (SDL_Renderer int) int))
  (define SDL_RenderSetLogicalSize       (sdl-procedure "SDL_RenderSetLogicalSize" (SDL_Renderer int int) int))
  (define SDL_RenderSetScale             (sdl-procedure "SDL_RenderSetScale" (SDL_Renderer int int) int))
  (define SDL_RenderSetViewport          (sdl-procedure "SDL_RenderSetViewport" (SDL_Renderer (* SDL_Rect)) int))
  (define SDL_RenderTargetSupported      (sdl-procedure "SDL_RenderTargetSupported" (SDL_Renderer) int))
  (define SDL_SetRenderDrawBlendMode     (sdl-procedure "SDL_SetRenderDrawBlendMode" (SDL_Renderer int) int))
  (define SDL_SetRenderDrawColor         (sdl-procedure "SDL_SetRenderDrawColor" (SDL_Renderer unsigned-8 unsigned-8 unsigned-8 unsigned-8) int))
  (define SDL_SetRenderTarget            (sdl-procedure "SDL_SetRenderTarget" (SDL_Renderer SDL_Texture) int))
  (define SDL_SetTextureAlphaMod         (sdl-procedure "SDL_SetTextureAlphaMod" (SDL_Texture unsigned-8) int))
  (define SDL_SetTextureBlendMode        (sdl-procedure "SDL_SetTextureBlendMode" (SDL_Texture int) int))
  (define SDL_SetTextureColorMod         (sdl-procedure "SDL_SetTextureColorMod" (SDL_Texture unsigned-8 unsigned-8 unsigned-8) int))
  (define SDL_UnlockTexture              (sdl-procedure "SDL_UnlockTexture" (SDL_Texture) void))
  (define SDL_UpdateTexture              (sdl-procedure "SDL_UpdateTexture" (SDL_Texture (* SDL_Rect) void* int) int))
  (define SDL_UpdateYUVTexture           (sdl-procedure "SDL_UpdateYUVTexture" (SDL_Texture (* SDL_Rect) u8* int u8* int u8* int) int))

  (define SDL_AllocFormat                (sdl-procedure "SDL_AllocFormat" (unsigned-32) (* SDL_PixelFormat)))
  (define SDL_AllocPalette               (sdl-procedure "SDL_AllocPalette" (int) (* SDL_Palette)))
  (define SDL_CalculateGammaRamp         (sdl-procedure "SDL_CalculateGammaRamp" (float (* unsigned-16)) void))
  (define SDL_FreeFormat                 (sdl-procedure "SDL_FreeFormat" ((* SDL_PixelFormat)) void))
  (define SDL_FreePalette                (sdl-procedure "SDL_FreePalette" ((* SDL_Palette)) void))
  (define SDL_GetPixelFormatName         (sdl-procedure "SDL_GetPixelFormatName" (unsigned-32) string))
  (define SDL_GetRGB                     (sdl-procedure "SDL_GetRGB" (unsigned-32 (* SDL_PixelFormat) (* unsigned-8) (* unsigned-8) (* unsigned-8)) void))
  (define SDL_GetRGBA                    (sdl-procedure "SDL_GetRGBA" (unsigned-32 (* SDL_PixelFormat) (* unsigned-8) (* unsigned-8) (* unsigned-8) (* unsigned-8)) void))
  (define SDL_MapRGB                     (sdl-procedure "SDL_MapRGB" ((* SDL_PixelFormat) unsigned-8 unsigned-8 unsigned-8) unsigned-32))
  (define SDL_MapRGBA                    (sdl-procedure "SDL_MapRGBA" ((* SDL_PixelFormat) unsigned-8 unsigned-8 unsigned-8 unsigned-8) unsigned-32))
  (define SDL_MasksToPixelFormatEnum     (sdl-procedure "SDL_MasksToPixelFormatEnum" (int unsigned-32 unsigned-32 unsigned-32 unsigned-32) unsigned-32))
  (define SDL_PixelFormatEnumToMasks     (sdl-procedure "SDL_PixelFormatEnumToMasks" (unsigned-32 (* int) (* unsigned-32) (* unsigned-32) (* unsigned-32) (* unsigned-32)) int))
  (define SDL_SetPaletteColors           (sdl-procedure "SDL_SetPaletteColors" ((* SDL_Palette) (* SDL_Color) int int) int))
  (define SDL_SetPixelFormatPalette      (sdl-procedure "SDL_SetPixelFormatPalette" ((* SDL_PixelFormat) (* SDL_Palette)) int))

  (define SDL_EnclosePoints        (sdl-procedure "SDL_EnclosePoints" ((* SDL_Point) int (* SDL_Rect) (* SDL_Rect)) int))
  (define SDL_HasIntersection      (sdl-procedure "SDL_HasIntersection" ((* SDL_Rect) (* SDL_Rect)) int))
  (define SDL_IntersectRect        (sdl-procedure "SDL_IntersectRect" ((* SDL_Rect) (* SDL_Rect) (* SDL_Rect)) int))
  (define SDL_IntersectRectAndLine (sdl-procedure "SDL_IntersectRectAndLine" ((* SDL_Rect) (* int) (* int) (* int) (* int)) int))
  (define SDL_PointInRect          (sdl-procedure "SDL_PointInRect" ((* SDL_Point) (* SDL_Rect)) int))
  (define SDL_RectEmpty            (sdl-procedure "SDL_RectEmpty" ((* SDL_Rect)) int))
  (define SDL_RectEquals           (sdl-procedure "SDL_RectEquals" ((* SDL_Rect) (* SDL_Rect)) int))
  (define SDL_UnionRect            (sdl-procedure "SDL_UnionRect" ((* SDL_Rect) (* SDL_Rect) (* SDL_Rect)) void))
  (define SDL_GetSpanEnclosingRect (sdl-procedure "SDL_GetSpanEnclosingRect" (int int int (* SDL_Rect) (* SDL_Rect)) int))

  (define SDL_UpperBlitScaled                (sdl-procedure "SDL_UpperBlitScaled" ((* SDL_Surface) (* SDL_Rect) (* SDL_Surface) (* SDL_Rect)) int))
  (define SDL_UpperBlit                      (sdl-procedure "SDL_UpperBlit" ((* SDL_Surface) (* SDL_Rect) (* SDL_Surface) (* SDL_Rect)) int))
  (define SDL_ConvertPixels                  (sdl-procedure "SDL_ConvertPixels" (int int unsigned-32 void* int unsigned-32 void* int) int))
  (define SDL_ConvertSurface                 (sdl-procedure "SDL_ConvertSurface" ((* SDL_Surface) (* SDL_PixelFormat) unsigned-32) (* SDL_Surface)))
  (define SDL_ConvertSurfaceFormat           (sdl-procedure "SDL_ConvertSurfaceFormat" ((* SDL_Surface) unsigned-32 unsigned-32) (* SDL_Surface)))
  (define SDL_CreateRGBSurface               (sdl-procedure "SDL_CreateRGBSurface" (unsigned-32 int int int unsigned-32 unsigned-32 unsigned-32 unsigned-32) (* SDL_Surface)))
  (define SDL_CreateRGBSurfaceFrom           (sdl-procedure "SDL_CreateRGBSurfaceFrom" (void* int int int int unsigned-32 unsigned-32 unsigned-32 unsigned-32) (* SDL_Surface)))
  (define SDL_CreateRGBSurfaceWithFormat     (sdl-procedure "SDL_CreateRGBSurfaceWithFormat" (unsigned-32 int int int unsigned-32) (* SDL_Surface)))
  (define SDL_CreateRGBSurfaceWithFormatFrom (sdl-procedure "SDL_CreateRGBSurfaceWithFormatFrom" (void* int int int int unsigned-32) (* SDL_Surface)))
  (define SDL_FillRect                       (sdl-procedure "SDL_FillRect" ((* SDL_Surface) (* SDL_Rect) unsigned-32) int))
  (define SDL_FillRects                      (sdl-procedure "SDL_FillRects" ((* SDL_Surface) (* SDL_Rect) int unsigned-32) int))
  (define SDL_FreeSurface                    (sdl-procedure "SDL_FreeSurface" ((* SDL_Surface)) void))
  (define SDL_GetClipRect                    (sdl-procedure "SDL_GetClipRect" ((* SDL_Surface) (* SDL_Rect)) void))
  (define SDL_GetColorKey                    (sdl-procedure "SDL_GetColorKey" ((* SDL_Surface) (* unsigned-32)) int))
  (define SDL_GetSurfaceAlphaMod             (sdl-procedure "SDL_GetSurfaceAlphaMod" ((* SDL_Surface) (* unsigned-8)) int))
  (define SDL_GetSurfaceBlendMode            (sdl-procedure "SDL_GetSurfaceBlendMode" () void))
  (define SDL_GetSurfaceColorMod             (sdl-procedure "SDL_GetSurfaceColorMod" () void))
  (define SDL_LoadBMP                        (lambda (path) (SDL_LoadBMP_RW (SDL_RWFromFile path "rb") 1)))
  (define SDL_LoadBMP_RW                     (sdl-procedure "SDL_LoadBMP_RW" (void* int) (* SDL_Surface)))
  (define SDL_LockSurface                    (sdl-procedure "SDL_LockSurface" () void))
  (define SDL_LowerBlit                      (sdl-procedure "SDL_LowerBlit" () void))
  (define SDL_LowerBlitScaled                (sdl-procedure "SDL_LowerBlitScaled" () void))
  (define SDL_MUSTLOCK                       (lambda (surface) (not (= (bitwise-and (ftype-ref SDL_Surface (flags) surface) #x00000002) 0))))
  (define SDL_SaveBMP                        (lambda (surface path) (SDL_SaveBMP_RW surface (SDL_RWFromFile path "wb") 1)))
  (define SDL_SaveBMP_RW                     (sdl-procedure "SDL_SaveBMP_RW" ((* SDL_Surface) void* int) int))
  (define SDL_SetClipRect                    (sdl-procedure "SDL_SetClipRect" () void))
  (define SDL_SetColorKey                    (sdl-procedure "SDL_SetColorKey" () void))
  (define SDL_SetSurfaceAlphaMod             (sdl-procedure "SDL_SetSurfaceAlphaMod" () void))
  (define SDL_SetSurfaceBlendMode            (sdl-procedure "SDL_SetSurfaceBlendMode" () void))
  (define SDL_SetSurfaceColorMod             (sdl-procedure "SDL_SetSurfaceColorMod" () void))
  (define SDL_SetSurfacePalette              (sdl-procedure "SDL_SetSurfacePalette" () void))
  (define SDL_SetSurfaceRLE                  (sdl-procedure "SDL_SetSurfaceRLE" () void))
  (define SDL_UnlockSurface                  (sdl-procedure "SDL_UnlockSurface" () void))

  (define SDL_GetClipboardText (sdl-procedure "SDL_GetClipboardText" () void))
  (define SDL_HasClipboardText (sdl-procedure "SDL_HasClipboardText" () void))
  (define SDL_SetClipboardText (sdl-procedure "SDL_SetClipboardText" () void))

  (define SDL_Vulkan_CreateSurface            (sdl-procedure "SDL_Vulkan_CreateSurface" () void))
  (define SDL_Vulkan_GetDrawableSize          (sdl-procedure "SDL_Vulkan_GetDrawableSize" () void))
  (define SDL_Vulkan_GetInstanceExtensions    (sdl-procedure "SDL_Vulkan_GetInstanceExtensions" () void))
  (define SDL_Vulkan_GetVkGetInstanceProcAddr (sdl-procedure "SDL_Vulkan_GetVkGetInstanceProcAddr" () void))
  (define SDL_Vulkan_LoadLibrary              (sdl-procedure "SDL_Vulkan_LoadLibrary" () void))
  (define SDL_Vulkan_UnloadLibrary            (sdl-procedure "SDL_Vulkan_UnloadLibrary" () void)))
