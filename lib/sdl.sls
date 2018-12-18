;;;; -*- mode: Scheme; -*-

(library
    (sdl (2 0 7))
  (export
   ;;;;;;;;;;;;;
   ;;; Basic ;;;
   ;;;;;;;;;;;;;
   SDL-INIT-TIMER
   SDL-INIT-AUDIO
   SDL-INIT-VIDEO
   SDL-INIT-JOYSTICK
   SDL-INIT-HAPTIC
   SDL-INIT-GAMECONTROLLER
   SDL-INIT-EVENTS
   SDL-INIT-EVERYTHING

   SDL-HINT-FRAMEBUFFER-ACCELERATION
   SDL-HINT-RENDER-DRIVER
   SDL-HINT-RENDER-OPENGL-SHADERS
   SDL-HINT-RENDER-DIRECT3D-THREADSAFE
   SDL-HINT-RENDER-DIRECT3D11-DEBUG
   SDL-HINT-RENDER-LOGICAL-SIZE-MODE
   SDL-HINT-RENDER-SCALE-QUALITY
   SDL-HINT-RENDER-VSYNC
   SDL-HINT-VIDEO-ALLOW-SCREENSAVER
   SDL-HINT-VIDEO-X11-XVIDMODE
   SDL-HINT-VIDEO-X11-XINERAMA
   SDL-HINT-VIDEO-X11-XRANDR
   SDL-HINT-VIDEO-X11-NET-WM-PING
   SDL-HINT-VIDEO-X11-NET-WM-BYPASS-COMPOSITOR
   SDL-HINT-WINDOW-FRAME-USABLE-WHILE-CURSOR-HIDDEN
   SDL-HINT-WINDOWS-INTRESOURCE-ICON
   SDL-HINT-WINDOWS-INTRESOURCE-ICON-SMALL
   SDL-HINT-WINDOWS-ENABLE-MESSAGELOOP
   SDL-HINT-GRAB-KEYBOARD
   SDL-HINT-MOUSE-NORMAL-SPEED-SCALE
   SDL-HINT-MOUSE-RELATIVE-SPEED-SCALE
   SDL-HINT-MOUSE-RELATIVE-MODE-WARP
   SDL-HINT-MOUSE-FOCUS-CLICKTHROUGH
   SDL-HINT-TOUCH-MOUSE-EVENTS
   SDL-HINT-VIDEO-MINIMIZE-ON-FOCUS-LOSS
   SDL-HINT-IDLE-TIMER-DISABLED
   SDL-HINT-ORIENTATIONS
   SDL-HINT-APPLE-TV-CONTROLLER-UI-EVENTS
   SDL-HINT-APPLE-TV-REMOTE-ALLOW-ROTATION
   SDL-HINT-IOS-HIDE-HOME-INDICATOR
   SDL-HINT-ACCELEROMETER-AS-JOYSTICK
   SDL-HINT-TV-REMOTE-AS-JOYSTICK
   SDL-HINT-XINPUT-ENABLED
   SDL-HINT-XINPUT-USE-OLD-JOYSTICK-MAPPING
   SDL-HINT-GAMECONTROLLERCONFIG
   SDL-HINT-GAMECONTROLLER-IGNORE-DEVICES
   SDL-HINT-GAMECONTROLLER-IGNORE-DEVICES-EXCEPT
   SDL-HINT-JOYSTICK-ALLOW-BACKGROUND-EVENTS
   SDL-HINT-ALLOW-TOPMOST
   SDL-HINT-TIMER-RESOLUTION
   SDL-HINT-QTWAYLAND-CONTENT-ORIENTATION
   SDL-HINT-QTWAYLAND-WINDOW-FLAGS
   SDL-HINT-THREAD-STACK-SIZE
   SDL-HINT-VIDEO-HIGHDPI-DISABLED
   SDL-HINT-MAC-CTRL-CLICK-EMULATE-RIGHT-CLICK
   SDL-HINT-VIDEO-WIN-D3DCOMPILER
   SDL-HINT-VIDEO-WINDOW-SHARE-PIXEL-FORMAT
   SDL-HINT-WINRT-PRIVACY-POLICY-URL
   SDL-HINT-WINRT-PRIVACY-POLICY-LABEL
   SDL-HINT-WINRT-HANDLE-BACK-BUTTON
   SDL-HINT-VIDEO-MAC-FULLSCREEN-SPACES
   SDL-HINT-MAC-BACKGROUND-APP
   SDL-HINT-ANDROID-APK-EXPANSION-MAIN-FILE-VERSION
   SDL-HINT-ANDROID-APK-EXPANSION-PATCH-FILE-VERSION
   SDL-HINT-IME-INTERNAL-EDITING
   SDL-HINT-ANDROID-SEPARATE-MOUSE-AND-TOUCH
   SDL-HINT-ANDROID-TRAP-BACK-BUTTON
   SDL-HINT-RETURN-KEY-HIDES-IME
   SDL-HINT-EMSCRIPTEN-KEYBOARD-ELEMENT
   SDL-HINT-NO-SIGNAL-HANDLERS
   SDL-HINT-WINDOWS-NO-CLOSE-ON-ALT-F4
   SDL-HINT-BMP-SAVE-LEGACY-FORMAT
   SDL-HINT-WINDOWS-DISABLE-THREAD-NAMING
   SDL-HINT-RPI-VIDEO-LAYER
   SDL-HINT-VIDEO-DOUBLE-BUFFER
   SDL-HINT-OPENGL-ES-DRIVER
   SDL-HINT-AUDIO-RESAMPLING-MODE
   SDL-HINT-AUDIO-CATEGORY

   sdl-init
   sdl-quit

   sdl-clear-hints!
   sdl-get-hint-boolean
   sdl-set-hint!
   sdl-set-hint-w/-priority!

   sdl-get-version
   sdl-get-revision
   sdl-get-revision-num

   sdl-clear-error!
   sdl-get-error


   ;;;;;;;;;;;;;
   ;;; Video ;;;
   ;;;;;;;;;;;;;
   SDL-WINDOW-FULLSCREEN
   SDL-WINDOW-OPENGL
   SDL-WINDOW-SHOWN
   SDL-WINDOW-HIDDEN
   SDL-WINDOW-BORDERLESS
   SDL-WINDOW-RESIZABLE
   SDL-WINDOW-MINIMIZED
   SDL-WINDOW-MAXIMIZED
   SDL-WINDOW-INPUT-GRABBED
   SDL-WINDOW-INPUT-FOCUS
   SDL-WINDOW-MOUSE-FOCUS
   SDL-WINDOW-FULLSCREEN-DESKTOP
   SDL-WINDOW-FOREIGN
   SDL-WINDOW-ALLOW-HIGHDPI

   SDL-WINDOW-MOUSE-CAPTURE
   SDL-WINDOW-ALWAYS-ON-TOP
   SDL-WINDOW-SKIP-TASKBAR
   SDL-WINDOW-UTILITY
   SDL-WINDOW-TOOLTIP
   SDL-WINDOW-POPUP-MENU
   SDL-WINDOW-VULKAN

   SDL-WINDOWPOS-UNDEFINED-MASK
   SDL-WINDOWPOS-UNDEFINED-DISPLAY
   SDL-WINDOWPOS-UNDEFINED
   SDL-WINDOWPOS-IS-UNDEFINED?

   SDL-WINDOWPOS-CENTERED-MASK
   SDL-WINDOWPOS-CENTERED-DISPLAY
   SDL-WINDOWPOS-CENTERED
   SDL-WINDOWPOS-IS-CENTERED?

   SDL-RENDERER-SOFTWARE
   SDL-RENDERER-ACCELERATED
   SDL-RENDERER-PRESENT-VSYNC
   SDL-RENDERER-TARGET-TEXTURE

   SDL-BLEND-MODE-NONE
   SDL-BLEND-MODE-BLEND
   SDL-BLEND-MODE-ADD
   SDL-BLEND-MODE-MOD
   SDL-BLEND-MODE-INVALID

   make-sdl-rect
   sdl-rect?
   sdl-rect-x
   sdl-rect-y
   sdl-rect-w
   sdl-rect-h

   make-sdl-point
   sdl-point?
   sdl-point-x
   sdl-point-y

   sdl-surface-fmt
   sdl-surface-w
   sdl-surface-h
   sdl-surface-pxl

   sdl-create-window
   sdl-destroy-window
   sdl-disable-screen-saver
   sdl-enable-screen-saver
   sdl-get-window-surface
   sdl-update-window-surface

   sdl-create-renderer
   sdl-create-texture-from-surface
   sdl-render-clear
   sdl-render-copy
   sdl-render-present
   sdl-destroy-texture
   sdl-destroy-renderer

   sdl-load-bmp
   sdl-map-rgb
   sdl-fill-rect
   sdl-free-surface

   sdl-get-clipboard-text
   sdl-has-clipboard-text?
   sdl-set-clipboard-text!


   ;;;;;;;;;;;;;
   ;;; Audio ;;;
   ;;;;;;;;;;;;;

   ;;;;;;;;;;;;;
   ;;; Event ;;;
   ;;;;;;;;;;;;;
   SDL-QUERY
   SDL-IGNORE
   SDL-DISABLE
   SDL-ENABLE

   SDL-SCANCODE-UNKNOWN            SDLK-UNKNOWN
   SDL-SCANCODE-A                  SDLK-A
   SDL-SCANCODE-B                  SDLK-B
   SDL-SCANCODE-C                  SDLK-C
   SDL-SCANCODE-D                  SDLK-D
   SDL-SCANCODE-E                  SDLK-E
   SDL-SCANCODE-F                  SDLK-F
   SDL-SCANCODE-G                  SDLK-G
   SDL-SCANCODE-H                  SDLK-H
   SDL-SCANCODE-I                  SDLK-I
   SDL-SCANCODE-J                  SDLK-J
   SDL-SCANCODE-K                  SDLK-K
   SDL-SCANCODE-L                  SDLK-L
   SDL-SCANCODE-M                  SDLK-M
   SDL-SCANCODE-N                  SDLK-N
   SDL-SCANCODE-O                  SDLK-O
   SDL-SCANCODE-P                  SDLK-P
   SDL-SCANCODE-Q                  SDLK-Q
   SDL-SCANCODE-R                  SDLK-R
   SDL-SCANCODE-S                  SDLK-S
   SDL-SCANCODE-T                  SDLK-T
   SDL-SCANCODE-U                  SDLK-U
   SDL-SCANCODE-V                  SDLK-V
   SDL-SCANCODE-W                  SDLK-W
   SDL-SCANCODE-X                  SDLK-X
   SDL-SCANCODE-Y                  SDLK-Y
   SDL-SCANCODE-Z                  SDLK-Z
   SDL-SCANCODE-1                  SDLK-1
   SDL-SCANCODE-2                  SDLK-2
   SDL-SCANCODE-3                  SDLK-3
   SDL-SCANCODE-4                  SDLK-4
   SDL-SCANCODE-5                  SDLK-5
   SDL-SCANCODE-6                  SDLK-6
   SDL-SCANCODE-7                  SDLK-7
   SDL-SCANCODE-8                  SDLK-8
   SDL-SCANCODE-9                  SDLK-9
   SDL-SCANCODE-0                  SDLK-0
   SDL-SCANCODE-RETURN             SDLK-RETURN
   SDL-SCANCODE-ESCAPE             SDLK-ESCAPE
   SDL-SCANCODE-BACKSPACE          SDLK-BACKSPACE
   SDL-SCANCODE-TAB                SDLK-TAB
   SDL-SCANCODE-SPACE              SDLK-SPACE
   SDL-SCANCODE-MINUS              SDLK-MINUS
   SDL-SCANCODE-EQUALS             SDLK-EQUALS
   SDL-SCANCODE-LEFTBRACKET        SDLK-LEFTBRACKET
   SDL-SCANCODE-RIGHTBRACKET       SDLK-RIGHTBRACKET
   SDL-SCANCODE-BACKSLASH          SDLK-BACKSLASH
   SDL-SCANCODE-NONUSHASH
   SDL-SCANCODE-SEMICOLON          SDLK-SEMICOLON
   SDL-SCANCODE-APOSTROPHE         SDLK-QUOTE
   SDL-SCANCODE-GRAVE              SDLK-BACKQUOTE
   SDL-SCANCODE-COMMA              SDLK-COMMA
   SDL-SCANCODE-PERIOD             SDLK-PERIOD
   SDL-SCANCODE-SLASH              SDLK-SLASH
   SDL-SCANCODE-CAPSLOCK           SDLK-CAPSLOCK
   SDL-SCANCODE-F1                 SDLK-F1
   SDL-SCANCODE-F2                 SDLK-F2
   SDL-SCANCODE-F3                 SDLK-F3
   SDL-SCANCODE-F4                 SDLK-F4
   SDL-SCANCODE-F5                 SDLK-F5
   SDL-SCANCODE-F6                 SDLK-F6
   SDL-SCANCODE-F7                 SDLK-F7
   SDL-SCANCODE-F8                 SDLK-F8
   SDL-SCANCODE-F9                 SDLK-F9
   SDL-SCANCODE-F10                SDLK-F10
   SDL-SCANCODE-F11                SDLK-F11
   SDL-SCANCODE-F12                SDLK-F12
   SDL-SCANCODE-PRINTSCREEN        SDLK-PRINTSCREEN
   SDL-SCANCODE-SCROLLLOCK         SDLK-SCROLLLOCK
   SDL-SCANCODE-PAUSE              SDLK-PAUSE
   SDL-SCANCODE-INSERT             SDLK-INSERT
   SDL-SCANCODE-HOME               SDLK-HOME
   SDL-SCANCODE-PAGEUP             SDLK-PAGEUP
   SDL-SCANCODE-DELETE             SDLK-DELETE
   SDL-SCANCODE-END                SDLK-END
   SDL-SCANCODE-PAGEDOWN           SDLK-PAGEDOWN
   SDL-SCANCODE-RIGHT              SDLK-RIGHT
   SDL-SCANCODE-LEFT               SDLK-LEFT
   SDL-SCANCODE-DOWN               SDLK-DOWN
   SDL-SCANCODE-UP                 SDLK-UP
   SDL-SCANCODE-NUMLOCKCLEAR       SDLK-NUMLOCKCLEAR
   SDL-SCANCODE-KP-DIVIDE          SDLK-KP-DIVIDE
   SDL-SCANCODE-KP-MULTIPLY        SDLK-KP-MULTIPLY
   SDL-SCANCODE-KP-MINUS           SDLK-KP-MINUS
   SDL-SCANCODE-KP-PLUS            SDLK-KP-PLUS
   SDL-SCANCODE-KP-ENTER           SDLK-KP-ENTER
   SDL-SCANCODE-KP-1               SDLK-KP-1
   SDL-SCANCODE-KP-2               SDLK-KP-2
   SDL-SCANCODE-KP-3               SDLK-KP-3
   SDL-SCANCODE-KP-4               SDLK-KP-4
   SDL-SCANCODE-KP-5               SDLK-KP-5
   SDL-SCANCODE-KP-6               SDLK-KP-6
   SDL-SCANCODE-KP-7               SDLK-KP-7
   SDL-SCANCODE-KP-8               SDLK-KP-8
   SDL-SCANCODE-KP-9               SDLK-KP-9
   SDL-SCANCODE-KP-0               SDLK-KP-0
   SDL-SCANCODE-KP-PERIOD          SDLK-KP-PERIOD
   SDL-SCANCODE-NONUSBACKSLASH
   SDL-SCANCODE-APPLICATION        SDLK-APPLICATION
   SDL-SCANCODE-POWER              SDLK-POWER
   SDL-SCANCODE-KP-EQUALS          SDLK-KP-EQUALS
   SDL-SCANCODE-F13                SDLK-F13
   SDL-SCANCODE-F14                SDLK-F14
   SDL-SCANCODE-F15                SDLK-F15
   SDL-SCANCODE-F16                SDLK-F16
   SDL-SCANCODE-F17                SDLK-F17
   SDL-SCANCODE-F18                SDLK-F18
   SDL-SCANCODE-F19                SDLK-F19
   SDL-SCANCODE-F20                SDLK-F20
   SDL-SCANCODE-F21                SDLK-F21
   SDL-SCANCODE-F22                SDLK-F22
   SDL-SCANCODE-F23                SDLK-F23
   SDL-SCANCODE-F24                SDLK-F24
   SDL-SCANCODE-EXECUTE            SDLK-EXECUTE
   SDL-SCANCODE-HELP               SDLK-HELP
   SDL-SCANCODE-MENU               SDLK-MENU
   SDL-SCANCODE-SELECT             SDLK-SELECT
   SDL-SCANCODE-STOP               SDLK-STOP
   SDL-SCANCODE-AGAIN              SDLK-AGAIN
   SDL-SCANCODE-UNDO               SDLK-UNDO
   SDL-SCANCODE-CUT                SDLK-CUT
   SDL-SCANCODE-COPY               SDLK-COPY
   SDL-SCANCODE-PASTE              SDLK-PASTE
   SDL-SCANCODE-FIND               SDLK-FIND
   SDL-SCANCODE-MUTE               SDLK-MUTE
   SDL-SCANCODE-VOLUMEUP           SDLK-VOLUMEUP
   SDL-SCANCODE-VOLUMEDOWN         SDLK-VOLUMEDOWN
   SDL-SCANCODE-KP-COMMA           SDLK-KP-COMMA
   SDL-SCANCODE-KP-EQUALSAS400     SDLK-KP-EQUALSAS400
   SDL-SCANCODE-INTERNATIONAL1
   SDL-SCANCODE-INTERNATIONAL2
   SDL-SCANCODE-INTERNATIONAL3
   SDL-SCANCODE-INTERNATIONAL4
   SDL-SCANCODE-INTERNATIONAL5
   SDL-SCANCODE-INTERNATIONAL6
   SDL-SCANCODE-INTERNATIONAL7
   SDL-SCANCODE-INTERNATIONAL8
   SDL-SCANCODE-INTERNATIONAL9
   SDL-SCANCODE-LANG1
   SDL-SCANCODE-LANG2
   SDL-SCANCODE-LANG3
   SDL-SCANCODE-LANG4
   SDL-SCANCODE-LANG5
   SDL-SCANCODE-LANG6
   SDL-SCANCODE-LANG7
   SDL-SCANCODE-LANG8
   SDL-SCANCODE-LANG9
   SDL-SCANCODE-ALTERASE           SDLK-ALTERASE
   SDL-SCANCODE-SYSREQ             SDLK-SYSREQ
   SDL-SCANCODE-CANCEL             SDLK-CANCEL
   SDL-SCANCODE-CLEAR              SDLK-CLEAR
   SDL-SCANCODE-PRIOR              SDLK-PRIOR
   SDL-SCANCODE-RETURN2            SDLK-RETURN2
   SDL-SCANCODE-SEPARATOR          SDLK-SEPARATOR
   SDL-SCANCODE-OUT                SDLK-OUT
   SDL-SCANCODE-OPER               SDLK-OPER
   SDL-SCANCODE-CLEARAGAIN         SDLK-CLEARAGAIN
   SDL-SCANCODE-CRSEL              SDLK-CRSEL
   SDL-SCANCODE-EXSEL              SDLK-EXSEL
   SDL-SCANCODE-KP-00              SDLK-KP-00
   SDL-SCANCODE-KP-000             SDLK-KP-000
   SDL-SCANCODE-THOUSANDSSEPARATOR SDLK-THOUSANDSSEPARATOR
   SDL-SCANCODE-DECIMALSEPARATOR   SDLK-DECIMALSEPARATOR
   SDL-SCANCODE-CURRENCYUNIT       SDLK-CURRENCYUNIT
   SDL-SCANCODE-CURRENCYSUBUNIT    SDLK-CURRENCYSUBUNIT
   SDL-SCANCODE-KP-LEFTPAREN       SDLK-KP-LEFTPAREN
   SDL-SCANCODE-KP-RIGHTPAREN      SDLK-KP-RIGHTPAREN
   SDL-SCANCODE-KP-LEFTBRACE       SDLK-KP-LEFTBRACE
   SDL-SCANCODE-KP-RIGHTBRACE      SDLK-KP-RIGHTBRACE
   SDL-SCANCODE-KP-TAB             SDLK-KP-TAB
   SDL-SCANCODE-KP-BACKSPACE       SDLK-KP-BACKSPACE
   SDL-SCANCODE-KP-A               SDLK-KP-A
   SDL-SCANCODE-KP-B               SDLK-KP-B
   SDL-SCANCODE-KP-C               SDLK-KP-C
   SDL-SCANCODE-KP-D               SDLK-KP-D
   SDL-SCANCODE-KP-E               SDLK-KP-E
   SDL-SCANCODE-KP-F               SDLK-KP-F
   SDL-SCANCODE-KP-XOR             SDLK-KP-XOR
   SDL-SCANCODE-KP-POWER           SDLK-KP-POWER
   SDL-SCANCODE-KP-PERCENT         SDLK-KP-PERCENT
   SDL-SCANCODE-KP-LESS            SDLK-KP-LESS
   SDL-SCANCODE-KP-GREATER         SDLK-KP-GREATER
   SDL-SCANCODE-KP-AMPERSAND       SDLK-KP-AMPERSAND
   SDL-SCANCODE-KP-DBLAMPERSAND    SDLK-KP-DBLAMPERSAND
   SDL-SCANCODE-KP-VERTICALBAR     SDLK-KP-VERTICALBAR
   SDL-SCANCODE-KP-DBLVERTICALBAR  SDLK-KP-DBLVERTICALBAR
   SDL-SCANCODE-KP-COLON           SDLK-KP-COLON
   SDL-SCANCODE-KP-HASH            SDLK-KP-HASH
   SDL-SCANCODE-KP-SPACE           SDLK-KP-SPACE
   SDL-SCANCODE-KP-AT              SDLK-KP-AT
   SDL-SCANCODE-KP-EXCLAM          SDLK-KP-EXCLAM
   SDL-SCANCODE-KP-MEMSTORE        SDLK-KP-MEMSTORE
   SDL-SCANCODE-KP-MEMRECALL       SDLK-KP-MEMRECALL
   SDL-SCANCODE-KP-MEMCLEAR        SDLK-KP-MEMCLEAR
   SDL-SCANCODE-KP-MEMADD          SDLK-KP-MEMADD
   SDL-SCANCODE-KP-MEMSUBTRACT     SDLK-KP-MEMSUBTRACT
   SDL-SCANCODE-KP-MEMMULTIPLY     SDLK-KP-MEMMULTIPLY
   SDL-SCANCODE-KP-MEMDIVIDE       SDLK-KP-MEMDIVIDE
   SDL-SCANCODE-KP-PLUSMINUS       SDLK-KP-PLUSMINUS
   SDL-SCANCODE-KP-CLEAR           SDLK-KP-CLEAR
   SDL-SCANCODE-KP-CLEARENTRY      SDLK-KP-CLEARENTRY
   SDL-SCANCODE-KP-BINARY          SDLK-KP-BINARY
   SDL-SCANCODE-KP-OCTAL           SDLK-KP-OCTAL
   SDL-SCANCODE-KP-DECIMAL         SDLK-KP-DECIMAL
   SDL-SCANCODE-KP-HEXADECIMAL     SDLK-KP-HEXADECIMAL
   SDL-SCANCODE-LCTRL              SDLK-LCTRL
   SDL-SCANCODE-LSHIFT             SDLK-LSHIFT
   SDL-SCANCODE-LALT               SDLK-LALT
   SDL-SCANCODE-LGUI               SDLK-LGUI
   SDL-SCANCODE-RCTRL              SDLK-RCTRL
   SDL-SCANCODE-RSHIFT             SDLK-RSHIFT
   SDL-SCANCODE-RALT               SDLK-RALT
   SDL-SCANCODE-RGUI               SDLK-RGUI
   SDL-SCANCODE-MODE               SDLK-MODE
   SDL-SCANCODE-AUDIONEXT          SDLK-AUDIONEXT
   SDL-SCANCODE-AUDIOPREV          SDLK-AUDIOPREV
   SDL-SCANCODE-AUDIOSTOP          SDLK-AUDIOSTOP
   SDL-SCANCODE-AUDIOPLAY          SDLK-AUDIOPLAY
   SDL-SCANCODE-AUDIOMUTE          SDLK-AUDIOMUTE
   SDL-SCANCODE-MEDIASELECT        SDLK-MEDIASELECT
   SDL-SCANCODE-WWW                SDLK-WWW
   SDL-SCANCODE-MAIL               SDLK-MAIL
   SDL-SCANCODE-CALCULATOR         SDLK-CALCULATOR
   SDL-SCANCODE-COMPUTER           SDLK-COMPUTER
   SDL-SCANCODE-AC-SEARCH          SDLK-AC-SEARCH
   SDL-SCANCODE-AC-HOME            SDLK-AC-HOME
   SDL-SCANCODE-AC-BACK            SDLK-AC-BACK
   SDL-SCANCODE-AC-FORWARD         SDLK-AC-FORWARD
   SDL-SCANCODE-AC-STOP            SDLK-AC-STOP
   SDL-SCANCODE-AC-REFRESH         SDLK-AC-REFRESH
   SDL-SCANCODE-AC-BOOKMARKS       SDLK-AC-BOOKMARKS
   SDL-SCANCODE-BRIGHTNESSDOWN     SDLK-BRIGHTNESSDOWN
   SDL-SCANCODE-BRIGHTNESSUP       SDLK-BRIGHTNESSUP
   SDL-SCANCODE-DISPLAYSWITCH      SDLK-DISPLAYSWITCH
   SDL-SCANCODE-KBDILLUMTOGGLE     SDLK-KBDILLUMTOGGLE
   SDL-SCANCODE-KBDILLUMDOWN       SDLK-KBDILLUMDOWN
   SDL-SCANCODE-KBDILLUMUP         SDLK-KBDILLUMUP
   SDL-SCANCODE-EJECT              SDLK-EJECT
   SDL-SCANCODE-SLEEP              SDLK-SLEEP
   SDL-SCANCODE-APP1               SDLK-APP1
   SDL-SCANCODE-APP2               SDLK-APP2
   SDL-SCANCODE-AUDIOREWIND        SDLK-AUDIOREWIND
   SDL-SCANCODE-AUDIOFASTFORWARD   SDLK-AUDIOFASTFORWARD
                                   SDLK-EXCLAIM
                                   SDLK-QUOTEDBL
				   SDLK-HASH
				   SDLK-PERCENT
				   SDLK-DOLLAR
				   SDLK-AMPERSAND
				   SDLK-LEFTPAREN
				   SDLK-RIGHTPAREN
				   SDLK-ASTERISK
				   SDLK-PLUS
				   SDLK-COLON
				   SDLK-LESS
				   SDLK-GREATER
				   SDLK-QUESTION
				   SDLK-AT
				   SDLK-CARET
				   SDLK-UNDERSCORE
   KMOD-NONE
   KMOD-LSHIFT
   KMOD-RSHIFT
   KMOD-LCTRL
   KMOD-RCTRL
   KMOD-LALT
   KMOD-RALT
   KMOD-LGUI
   KMOD-RGUI
   KMOD-NUM
   KMOD-CAPS
   KMOD-MODE
   KMOD-RESERVED
   KMOD-CTRL
   KMOD-SHIFT
   KMOD-ALT
   KMOD-GUI

   sdl-poll-event

   sdl-event-timestamp
   sdl-event-none?

   ;; Application Events
   sdl-event-quit?
   sdl-event-clipboard?
   sdl-event-terminating?
   sdl-event-low-memory?
   sdl-event-will-enter-background?
   sdl-event-did-enter-background?
   sdl-event-will-enter-foreground?
   sdl-event-did-enter-foreground?
   sdl-event-render-target-reset?
   sdl-event-render-device-reset?

   ;; Window Events
   sdl-event-window?
   sdl-event-syswm?

   sdl-event-win-shown?
   sdl-event-win-hidden?
   sdl-event-win-exposed?
   sdl-event-win-moved?

   sdl-event-win-resized?
   sdl-event-win-size-changed?
   sdl-event-win-minimized?
   sdl-event-win-maximized?
   sdl-event-win-restored?
   sdl-event-win-enter?
   sdl-event-win-leave?
   sdl-event-win-focus-gained?
   sdl-event-win-focus-lost?
   sdl-event-win-close?
   sdl-event-win-take-focus?
   sdl-event-win-hit-test?

   sdl-event-win-id
   sdl-event-win-x
   sdl-event-win-y
   sdl-event-win-w
   sdl-event-win-h

   ;; Keyboard Events
   sdl-event-keyup?
   sdl-event-keydown?
   sdl-event-keymap-changed?

   sdl-event-key-repeat?
   sdl-event-key-up?
   sdl-event-key-down?
   sdl-event-mod-up?
   sdl-event-mod-down?
   sdl-event-code-up?
   sdl-event-code-down?

   ;; Text Events
   sdl-event-text-editing?
   sdl-event-text-input?
   sdl-event-text-editing-text
   sdl-event-text-input-text

   ;; Mouse Events
   sdl-event-mouse-motion?
   sdl-event-mouse-button-down?
   sdl-event-mouse-button-up?
   sdl-event-mouse-wheel?

   sdl-event-mouse-motion-which
   sdl-event-mouse-motion-x
   sdl-event-mouse-motion-y
   sdl-event-mouse-motion-x-rel
   sdl-event-mouse-motion-y-rel
   sdl-event-mouse-motion-b-left?
   sdl-event-mouse-motion-b-middle?
   sdl-event-mouse-motion-b-right?
   sdl-event-mouse-motion-b-x1?
   sdl-event-mouse-motion-b-x2?

   sdl-event-mouse-button-which
   sdl-event-mouse-button-state
   sdl-event-mouse-button-button
   sdl-event-mouse-button-clicks
   sdl-event-mouse-button-x
   sdl-event-mouse-button-y

   sdl-event-mouse-wheel-which
   sdl-event-mouse-wheel-direction
   sdl-event-mouse-wheel-x
   sdl-event-mouse-wheel-y

   ;; Joystick Events
   sdl-event-joy-dev-added?
   sdl-event-joy-dev-removed?
   sdl-event-joy-device

   sdl-event-joy-button-up?
   sdl-event-joy-button-down?
   sdl-event-joy-button?
   sdl-event-joy-button-pressed?
   sdl-event-joy-button-device
   sdl-event-joy-button

   sdl-event-joy-hat?
   sdl-event-joy-hat
   sdl-event-joy-hat-pos
   sdl-event-joy-hat-device

   sdl-event-joy-ball?
   sdl-event-joy-ball
   sdl-event-joy-ball-x-rel
   sdl-event-joy-ball-y-rel
   sdl-event-joy-ball-device

   sdl-event-joy-axis?
   sdl-event-joy-axis
   sdl-event-joy-axis-motion
   sdl-event-joy-axis-device

   ;; Game Controller
   sdl-event-con-dev-added?
   sdl-event-con-dev-removed?
   sdl-event-con-dev-remapped?
   sdl-event-con-device

   sdl-event-con-axis?
   sdl-event-con-axis-device
   sdl-event-con-axis
   sdl-event-con-motion

   sdl-event-con-button-up?
   sdl-event-con-button-down?
   sdl-event-con-button?
   sdl-event-con-button-pressed?
   sdl-event-con-button
   sdl-event-con-button-device

   ;; Audio Events
   sdl-event-audio-device-added?
   sdl-event-audio-device-removed?
   sdl-event-audio-device-which
   sdl-event-audio-device-iscapture?

   ;; Touch Events
   sdl-event-finger-down?
   sdl-event-finger-up?
   sdl-event-finger-motion?
   sdl-event-dollar-gesture?
   sdl-event-dollar-record?
   sdl-event-multi-gesture?

   sdl-event-touch-id
   sdl-event-touch-x
   sdl-event-touch-y
   sdl-event-touch-dx
   sdl-event-touch-dy
   sdl-event-touch-pressure
 
   sdl-event-finger-id
   sdl-event-gesture-id
   sdl-event-gesture-num-fingers
   sdl-event-dollar-gesture-error
   sdl-event-multi-gesture-dTheta
   sdl-event-multi-gesture-dDist

   ;; Drag & Drop Events
   sdl-event-drop-file?
   sdl-event-drop-text?
   sdl-event-drop-begin?
   sdl-event-drop-complete?
   sdl-event-drop-file


   ;;;;;;;;;;;;;
   ;;; Force ;;;
   ;;;;;;;;;;;;;
   
   ;;;;;;;;;;;;;
   ;;; Power ;;;
   ;;;;;;;;;;;;;
   sdl-get-power-info


   ;;;;;;;;;;;;;
   ;;; Timer ;;;
   ;;;;;;;;;;;;;
   sdl-delay
   sdl-get-ticks
   sdl-get-performance-counter
   sdl-get-performance-frequency


   ;;;;;;;;;;;;;
   ;;; Input ;;;
   ;;;;;;;;;;;;;
   sdl-finger?
   sdl-finger-id
   sdl-finger-x
   sdl-finger-y
   sdl-finger-p

   sdl-get-key-from-name
   sdl-get-key-from-scancode
   sdl-get-key-name
   sdl-get-keyboard-focus
   sdl-get-keyboard-state
   sdl-get-mod-state
   sdl-get-scancode-from-key
   sdl-get-scancode-from-name
   sdl-get-scancode-name
   sdl-has-screen-keyboard-support?
   sdl-is-screen-keyboard-shown?
   sdl-is-text-input-active?
   sdl-set-mod-state!
   sdl-set-text-input-rect!
   sdl-start-text-input
   sdl-stop-text-input

   sdl-capture-mouse
   sdl-create-color-cursor
   sdl-create-system-cursor
   sdl-free-cursor
   sdl-show-cursor
   sdl-get-cursor
   sdl-get-mouse-focus
   sdl-get-default-cursor
   sdl-warp-mouse-in-window
   sdl-warp-mouse-global
   sdl-set-cursor!
   sdl-set-relative-mouse-mode!
   sdl-get-relative-mouse-mode

   sdl-joystick-open
   sdl-joystick-close
   sdl-joystick-num
   sdl-joystick-current-power-level
   sdl-joystick-event-state
   sdl-joystick-from-instance-id
   sdl-joystick-is-attached?
   sdl-joystick-get-axis
   sdl-joystick-get-ball
   sdl-joystick-is-button-pressed?
   sdl-joystick-get-hat
   sdl-joystick-instance-id
   sdl-joystick-name
   sdl-joystick-name-for-index
   sdl-joystick-num-axes
   sdl-joystick-num-balls
   sdl-joystick-num-buttons
   sdl-joystick-num-hats

   sdl-game-controller?
   sdl-game-controller-attached?
   sdl-game-controller-button-pressed?
   sdl-game-controller-axis
   sdl-game-controller-open
   sdl-game-controller-close
   sdl-game-controller-update
   sdl-game-controller-name
   sdl-game-controller-name-for-index
   sdl-game-controller-mapping
   sdl-button->string
   sdl-axis->string
   string->sdl-button
   string->sdl-axis
   sdl-controller->sdl-joystick
   sdl-joystick-id->sdl-controller

   sdl-get-num-touch-devices
   sdl-get-touch-device
   sdl-get-num-touch-fingers
   sdl-get-touch-finger

   ;;;;;;;;;;;;;
   ;;; Extra ;;;
   ;;;;;;;;;;;;;
   sdl-init-with
   sdl-win-with)


  (import (chezscheme))


  (define sdl
    (begin
      (case (machine-type)
        ((ti3nt i3nt ta6nt a6nt)
	 (load-shared-object "SDL2.dll"))

        ((i3le ti3le a6le ta6le)
	 (load-shared-object "libSDL2.so"))

        ((i3osx ti3osx a6osx ta6osx)
	 (load-shared-object "libSDL2.dylib"))

	(else
         (error 'sdl "unknown machine type" (machine-type))))))

  (define SDL-QUERY  -1)
  (define SDL-IGNORE  0)
  (define SDL-DISABLE 0)
  (define SDL-ENABLE  1)

  (include "sdl-basic.sls")
  (include "sdl-video.sls")
  (include "sdl-audio.sls")
  (include "sdl-event.sls")
  (include "sdl-force.sls")
  (include "sdl-power.sls")
  (include "sdl-timer.sls")
  (include "sdl-input.sls")
  (include "sdl-extra.sls"))
