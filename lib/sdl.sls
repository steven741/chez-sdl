(library
  (sdl (2 0 7))

  (export
    ;;;
    ;;; Procedures
    ;;;

    ;; Syntactice Sugar
    sdl-err-rep
    sdl-safe-eval
    sdl-get-event

    ;; https://forums.libsdl.org/viewtopic.php?t=12160
    ;; https://discourse.libsdl.org/t/sdl-2-0-6-released/23109
    ;; https://discourse.libsdl.org/t/sdl-2-0-7-released/23279
    ;; https://wiki.libsdl.org/CategoryAPI

    ;; Init
    ;; https://wiki.libsdl.org/CategoryInit
    sdl-init
    sdl-quit

    ;; Video
    ;; https://wiki.libsdl.org/CategoryVideo
    sdl-create-window!
    sdl-destroy-window

    ;; Renderer
    ;; https://wiki.libsdl.org/CategoryRender
    sdl-create-renderer!
    sdl-create-texture-from-surface!
    sdl-render-clear
    sdl-render-copy
    sdl-render-present
    sdl-destroy-texture
    sdl-destroy-renderer

    ;; Timer
    ;; https://wiki.libsdl.org/CategoryTimer
    sdl-delay

    ;; Surface
    ;; https://wiki.libsdl.org/CategorySurface
    sdl-load-bmp!
    sdl-load-bmp-rw!
    sdl-free-surface

    ;; IO
    ;; https://wiki.libsdl.org/CategoryIO
    sdl-rw-from-file!

    ;; Error
    ;; https://wiki.libsdl.org/CategoryError
    sdl-get-error


    ;; Events
    ;; https://wiki.libsdl.org/CategoryEvents
    sdl-poll-event!
    sdl-peep-events!

    ; Data
    sdl-event
    sdl-common-event
    sdl-window-event
    sdl-keyboard-event
    sdl-text-editing-event
    sdl-text-input-event
    sdl-mouse-motion-event
    sdl-mouse-button-event
    sdl-mouse-wheel-event
    sdl-joy-axis-event
    sdl-joy-ball-event
    sdl-joy-hat-event
    sdl-joy-button-event
    sdl-joy-device-event
    sdl-controller-axis-event
    sdl-controller-button-event
    sdl-controller-device-event
    sdl-audio-device-event
    sdl-quit-event 
    sdl-user-event
    sdl-sys-wm-event
    sdl-touch-finger-event
    sdl-multi-gesture-event
    sdl-dollar-gesture-event
    sdl-drop-event
    sdl-keysym

    SDL-FIRSTEVENT-E

    ; Application events
    SDL-QUIT-E
    SDL-APP-TERMINATING-E
    SDL-APP-LOWMEMORY-E
    SDL-APP-WILLENTERBACKGROUND-E
    SDL-APP-DIDENTERBACKGROUND-E
    SDL-APP-WILLENTERFOREGROUND-E
    SDL-APP-DIDENTERFOREGROUND-E

    ; Window events
    SDL-WINDOWEVENT-E
    SDL-SYSWMEVENT-E

    ; Keyboard events
    SDL-KEYDOWN-E
    SDL-KEYUP-E
    SDL-TEXTEDITING-E
    SDL-TEXTINPUT-E
    SDL-KEYMAPCHANGED-E

    ; Mouse events
    SDL-MOUSEMOTION-E
    SDL-MOUSEBUTTONDOWN-E
    SDL-MOUSEBUTTONUP-E
    SDL-MOUSEWHEEL-E

    ; Joystick events
    SDL-JOYAXISMOTION-E
    SDL-JOYBALLMOTION-E
    SDL-JOYHATMOTION-E
    SDL-JOYBUTTONDOWN-E
    SDL-JOYBUTTONUP-E
    SDL-JOYDEVICEADDED-E
    SDL-JOYDEVICEREMOVED-E

    ; Game controller events
    SDL-CONTROLLERAXISMOTION-E
    SDL-CONTROLLERBUTTONDOWN-E
    SDL-CONTROLLERBUTTONUP-E
    SDL-CONTROLLERDEVICEADDED-E
    SDL-CONTROLLERDEVICEREMOVED-E
    SDL-CONTROLLERDEVICEREMAPPED-E

    ; Touch events
    SDL-FINGERDOWN-E
    SDL-FINGERUP-E
    SDL-FINGERMOTION-E

    ; Gesture events
    SDL-DOLLARGESTURE-E
    SDL-DOLLARRECORD-E
    SDL-MULTIGESTURE-E

    ; Clipboard events
    SDL-CLIPBOARDUPDATE-E

    ; Drag and drop events
    SDL-DROPFILE-E
    SDL-DROPTEXT-E
    SDL-DROPBEGIN-E
    SDL-DROPCOMPLETE-E

    ; Audio hotplug events
    SDL-AUDIODEVICEADDED-E
    SDL-AUDIODEVICEREMOVED-E

    ; Render events
    SDL-RENDER-TARGETS-RESET-E
    SDL-RENDER-DEVICE-RESET-E

    SDL-USEREVENT-E
    SDL-LASTEVENT-E


    ;;;
    ;;; Keyboard
    ;;;

    ;; https://wiki.libsdl.org/SDL_Scancode
    SDL-SCANCODE-UNKNOWN

    SDL-SCANCODE-A
    SDL-SCANCODE-B
    SDL-SCANCODE-C
    SDL-SCANCODE-D
    SDL-SCANCODE-E
    SDL-SCANCODE-F
    SDL-SCANCODE-G
    SDL-SCANCODE-H
    SDL-SCANCODE-I
    SDL-SCANCODE-J
    SDL-SCANCODE-K
    SDL-SCANCODE-L
    SDL-SCANCODE-M
    SDL-SCANCODE-N
    SDL-SCANCODE-O
    SDL-SCANCODE-P
    SDL-SCANCODE-Q
    SDL-SCANCODE-R
    SDL-SCANCODE-S
    SDL-SCANCODE-T
    SDL-SCANCODE-U
    SDL-SCANCODE-V
    SDL-SCANCODE-W
    SDL-SCANCODE-X
    SDL-SCANCODE-Y
    SDL-SCANCODE-Z

    SDL-SCANCODE-1
    SDL-SCANCODE-2
    SDL-SCANCODE-3
    SDL-SCANCODE-4
    SDL-SCANCODE-5
    SDL-SCANCODE-6
    SDL-SCANCODE-7
    SDL-SCANCODE-8
    SDL-SCANCODE-9
    SDL-SCANCODE-0

    SDL-SCANCODE-RETURN
    SDL-SCANCODE-ESCAPE
    SDL-SCANCODE-BACKSPACE
    SDL-SCANCODE-TAB
    SDL-SCANCODE-SPACE

    SDL-SCANCODE-MINUS
    SDL-SCANCODE-EQUALS
    SDL-SCANCODE-LEFTBRACKET
    SDL-SCANCODE-RIGHTBRACKET
    SDL-SCANCODE-BACKSLASH

    SDL-SCANCODE-NONUSHASH
    SDL-SCANCODE-SEMICOLON
    SDL-SCANCODE-APOSTROPHE
    SDL-SCANCODE-GRAVE
    SDL-SCANCODE-COMMA
    SDL-SCANCODE-PERIOD
    SDL-SCANCODE-SLASH

    SDL-SCANCODE-CAPSLOCK

    SDL-SCANCODE-F1
    SDL-SCANCODE-F2
    SDL-SCANCODE-F3
    SDL-SCANCODE-F4
    SDL-SCANCODE-F5
    SDL-SCANCODE-F6
    SDL-SCANCODE-F7
    SDL-SCANCODE-F8
    SDL-SCANCODE-F9
    SDL-SCANCODE-F10
    SDL-SCANCODE-F11
    SDL-SCANCODE-F12

    SDL-SCANCODE-PRINTSCREEN
    SDL-SCANCODE-SCROLLLOCK
    SDL-SCANCODE-PAUSE
    SDL-SCANCODE-INSERT
    SDL-SCANCODE-HOME
    SDL-SCANCODE-PAGEUP
    SDL-SCANCODE-DELETE
    SDL-SCANCODE-END
    SDL-SCANCODE-PAGEDOWN
    SDL-SCANCODE-RIGHT
    SDL-SCANCODE-LEFT
    SDL-SCANCODE-DOWN
    SDL-SCANCODE-UP

    SDL-SCANCODE-NUMLOCKCLEAR
    SDL-SCANCODE-KP-DIVIDE
    SDL-SCANCODE-KP-MULTIPLY
    SDL-SCANCODE-KP-MINUS
    SDL-SCANCODE-KP-PLUS
    SDL-SCANCODE-KP-ENTER
    SDL-SCANCODE-KP-1
    SDL-SCANCODE-KP-2
    SDL-SCANCODE-KP-3
    SDL-SCANCODE-KP-4
    SDL-SCANCODE-KP-5
    SDL-SCANCODE-KP-6
    SDL-SCANCODE-KP-7
    SDL-SCANCODE-KP-8
    SDL-SCANCODE-KP-9
    SDL-SCANCODE-KP-0
    SDL-SCANCODE-KP-PERIOD

    SDL-SCANCODE-NONUSBACKSLASH
    SDL-SCANCODE-APPLICATION
    SDL-SCANCODE-POWER
    SDL-SCANCODE-KP-EQUALS
    SDL-SCANCODE-F13
    SDL-SCANCODE-F14
    SDL-SCANCODE-F15
    SDL-SCANCODE-F16
    SDL-SCANCODE-F17
    SDL-SCANCODE-F18
    SDL-SCANCODE-F19
    SDL-SCANCODE-F20
    SDL-SCANCODE-F21
    SDL-SCANCODE-F22
    SDL-SCANCODE-F23
    SDL-SCANCODE-F24
    SDL-SCANCODE-EXECUTE
    SDL-SCANCODE-HELP
    SDL-SCANCODE-MENU
    SDL-SCANCODE-SELECT
    SDL-SCANCODE-STOP
    SDL-SCANCODE-AGAIN
    SDL-SCANCODE-UNDO
    SDL-SCANCODE-CUT
    SDL-SCANCODE-COPY
    SDL-SCANCODE-PASTE
    SDL-SCANCODE-FIND
    SDL-SCANCODE-MUTE
    SDL-SCANCODE-VOLUMEUP
    SDL-SCANCODE-VOLUMEDOWN
    SDL-SCANCODE-KP-COMMA
    SDL-SCANCODE-KP-EQUALSAS400

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

    SDL-SCANCODE-ALTERASE
    SDL-SCANCODE-SYSREQ
    SDL-SCANCODE-CANCEL
    SDL-SCANCODE-CLEAR
    SDL-SCANCODE-PRIOR
    SDL-SCANCODE-RETURN2
    SDL-SCANCODE-SEPARATOR
    SDL-SCANCODE-OUT
    SDL-SCANCODE-OPER
    SDL-SCANCODE-CLEARAGAIN
    SDL-SCANCODE-CRSEL
    SDL-SCANCODE-EXSEL

    SDL-SCANCODE-KP-00
    SDL-SCANCODE-KP-000
    SDL-SCANCODE-THOUSANDSSEPARATOR
    SDL-SCANCODE-DECIMALSEPARATOR
    SDL-SCANCODE-CURRENCYUNIT
    SDL-SCANCODE-CURRENCYSUBUNIT
    SDL-SCANCODE-KP-LEFTPAREN
    SDL-SCANCODE-KP-RIGHTPAREN
    SDL-SCANCODE-KP-LEFTBRACE
    SDL-SCANCODE-KP-RIGHTBRACE
    SDL-SCANCODE-KP-TAB
    SDL-SCANCODE-KP-BACKSPACE
    SDL-SCANCODE-KP-A
    SDL-SCANCODE-KP-B
    SDL-SCANCODE-KP-C
    SDL-SCANCODE-KP-D
    SDL-SCANCODE-KP-E
    SDL-SCANCODE-KP-F
    SDL-SCANCODE-KP-XOR
    SDL-SCANCODE-KP-POWER
    SDL-SCANCODE-KP-PERCENT
    SDL-SCANCODE-KP-LESS
    SDL-SCANCODE-KP-GREATER
    SDL-SCANCODE-KP-AMPERSAND
    SDL-SCANCODE-KP-DBLAMPERSAND
    SDL-SCANCODE-KP-VERTICALBAR
    SDL-SCANCODE-KP-DBLVERTICALBAR
    SDL-SCANCODE-KP-COLON
    SDL-SCANCODE-KP-HASH
    SDL-SCANCODE-KP-SPACE
    SDL-SCANCODE-KP-AT
    SDL-SCANCODE-KP-EXCLAM
    SDL-SCANCODE-KP-MEMSTORE
    SDL-SCANCODE-KP-MEMRECALL
    SDL-SCANCODE-KP-MEMCLEAR
    SDL-SCANCODE-KP-MEMADD
    SDL-SCANCODE-KP-MEMSUBTRACT
    SDL-SCANCODE-KP-MEMMULTIPLY
    SDL-SCANCODE-KP-MEMDIVIDE
    SDL-SCANCODE-KP-PLUSMINUS
    SDL-SCANCODE-KP-CLEAR
    SDL-SCANCODE-KP-CLEARENTRY
    SDL-SCANCODE-KP-BINARY
    SDL-SCANCODE-KP-OCTAL
    SDL-SCANCODE-KP-DECIMAL
    SDL-SCANCODE-KP-HEXADECIMAL

    SDL-SCANCODE-LCTRL
    SDL-SCANCODE-LSHIFT
    SDL-SCANCODE-LALT
    SDL-SCANCODE-LGUI
    SDL-SCANCODE-RCTRL
    SDL-SCANCODE-RSHIFT
    SDL-SCANCODE-RALT
    SDL-SCANCODE-RGUI

    SDL-SCANCODE-MODE

    SDL-SCANCODE-AUDIONEXT
    SDL-SCANCODE-AUDIOPREV
    SDL-SCANCODE-AUDIOSTOP
    SDL-SCANCODE-AUDIOPLAY
    SDL-SCANCODE-AUDIOMUTE
    SDL-SCANCODE-MEDIASELECT
    SDL-SCANCODE-WWW
    SDL-SCANCODE-MAIL
    SDL-SCANCODE-CALCULATOR
    SDL-SCANCODE-COMPUTER
    SDL-SCANCODE-AC-SEARCH
    SDL-SCANCODE-AC-HOME
    SDL-SCANCODE-AC-BACK
    SDL-SCANCODE-AC-FORWARD
    SDL-SCANCODE-AC-STOP
    SDL-SCANCODE-AC-REFRESH
    SDL-SCANCODE-AC-BOOKMARKS

    SDL-SCANCODE-BRIGHTNESSDOWN
    SDL-SCANCODE-BRIGHTNESSUP
    SDL-SCANCODE-DISPLAYSWITCH
    SDL-SCANCODE-KBDILLUMTOGGLE
    SDL-SCANCODE-KBDILLUMDOWN
    SDL-SCANCODE-KBDILLUMUP
    SDL-SCANCODE-EJECT
    SDL-SCANCODE-SLEEP

    SDL-SCANCODE-APP1
    SDL-SCANCODE-APP2

    SDL-SCANCODE-AUDIOREWIND
    SDL-SCANCODE-AUDIOFASTFORWARD

    ;; https://wiki.libsdl.org/SDL_Keycode
    SDLK-SCANCODE-MASK
    SDL-SCANCODE-TO-KEYCODE

    SDLK-UNKNOWN

    SDLK-RETURN
    SDLK-ESCAPE
    SDLK-BACKSPACE
    SDLK-TAB
    SDLK-SPACE
    SDLK-EXCLAIM
    SDLK-QUOTEDBL
    SDLK-HASH
    SDLK-PERCENT
    SDLK-DOLLAR
    SDLK-AMPERSAND
    SDLK-QUOTE
    SDLK-LEFTPAREN
    SDLK-RIGHTPAREN
    SDLK-ASTERISK
    SDLK-PLUS
    SDLK-COMMA
    SDLK-MINUS
    SDLK-PERIOD
    SDLK-SLASH
    SDLK-0
    SDLK-1
    SDLK-2
    SDLK-3
    SDLK-4
    SDLK-5
    SDLK-6
    SDLK-7
    SDLK-8
    SDLK-9
    SDLK-COLON
    SDLK-SEMICOLON
    SDLK-LESS
    SDLK-EQUALS
    SDLK-GREATER
    SDLK-QUESTION
    SDLK-AT
    SDLK-LEFTBRACKET
    SDLK-BACKSLASH
    SDLK-RIGHTBRACKET
    SDLK-CARET
    SDLK-UNDERSCORE
    SDLK-BACKQUOTE
    SDLK-a
    SDLK-b
    SDLK-c
    SDLK-d
    SDLK-e
    SDLK-f
    SDLK-g
    SDLK-h
    SDLK-i
    SDLK-j
    SDLK-k
    SDLK-l
    SDLK-m
    SDLK-n
    SDLK-o
    SDLK-p
    SDLK-q
    SDLK-r
    SDLK-s
    SDLK-t
    SDLK-u
    SDLK-v
    SDLK-w
    SDLK-x
    SDLK-y
    SDLK-z

    SDLK-CAPSLOCK

    SDLK-F1
    SDLK-F2
    SDLK-F3
    SDLK-F4
    SDLK-F5
    SDLK-F6
    SDLK-F7
    SDLK-F8
    SDLK-F9
    SDLK-F10
    SDLK-F11
    SDLK-F12

    SDLK-PRINTSCREEN
    SDLK-SCROLLLOCK
    SDLK-PAUSE
    SDLK-INSERT
    SDLK-HOME
    SDLK-PAGEUP
    SDLK-DELETE
    SDLK-END
    SDLK-PAGEDOWN
    SDLK-RIGHT
    SDLK-LEFT
    SDLK-DOWN
    SDLK-UP

    SDLK-NUMLOCKCLEAR
    SDLK-KP-DIVIDE
    SDLK-KP-MULTIPLY
    SDLK-KP-MINUS
    SDLK-KP-PLUS
    SDLK-KP-ENTER
    SDLK-KP-1
    SDLK-KP-2
    SDLK-KP-3
    SDLK-KP-4
    SDLK-KP-5
    SDLK-KP-6
    SDLK-KP-7
    SDLK-KP-8
    SDLK-KP-9
    SDLK-KP-0
    SDLK-KP-PERIOD

    SDLK-APPLICATION
    SDLK-POWER
    SDLK-KP-EQUALS
    SDLK-F13
    SDLK-F14
    SDLK-F15
    SDLK-F16
    SDLK-F17
    SDLK-F18
    SDLK-F19
    SDLK-F20
    SDLK-F21
    SDLK-F22
    SDLK-F23
    SDLK-F24
    SDLK-EXECUTE
    SDLK-HELP
    SDLK-MENU
    SDLK-SELECT
    SDLK-STOP
    SDLK-AGAIN
    SDLK-UNDO
    SDLK-CUT
    SDLK-COPY
    SDLK-PASTE
    SDLK-FIND
    SDLK-MUTE
    SDLK-VOLUMEUP
    SDLK-VOLUMEDOWN
    SDLK-KP-COMMA
    SDLK-KP-EQUALSAS400

    SDLK-ALTERASE
    SDLK-SYSREQ
    SDLK-CANCEL
    SDLK-CLEAR
    SDLK-PRIOR
    SDLK-RETURN2
    SDLK-SEPARATOR
    SDLK-OUT
    SDLK-OPER
    SDLK-CLEARAGAIN
    SDLK-CRSEL
    SDLK-EXSEL

    SDLK-KP-00
    SDLK-KP-000
    SDLK-THOUSANDSSEPARATOR
    SDLK-DECIMALSEPARATOR
    SDLK-CURRENCYUNIT
    SDLK-CURRENCYSUBUNIT
    SDLK-KP-LEFTPAREN
    SDLK-KP-RIGHTPAREN
    SDLK-KP-LEFTBRACE
    SDLK-KP-RIGHTBRACE
    SDLK-KP-TAB
    SDLK-KP-BACKSPACE
    SDLK-KP-A
    SDLK-KP-B
    SDLK-KP-C
    SDLK-KP-D
    SDLK-KP-E
    SDLK-KP-F
    SDLK-KP-XOR
    SDLK-KP-POWER
    SDLK-KP-PERCENT
    SDLK-KP-LESS
    SDLK-KP-GREATER
    SDLK-KP-AMPERSAND
    SDLK-KP-DBLAMPERSAND
    SDLK-KP-VERTICALBAR
    SDLK-KP-DBLVERTICALBAR
    SDLK-KP-COLON
    SDLK-KP-HASH
    SDLK-KP-SPACE
    SDLK-KP-AT
    SDLK-KP-EXCLAM
    SDLK-KP-MEMSTORE
    SDLK-KP-MEMRECALL
    SDLK-KP-MEMCLEAR
    SDLK-KP-MEMADD
    SDLK-KP-MEMSUBTRACT
    SDLK-KP-MEMMULTIPLY
    SDLK-KP-MEMDIVIDE
    SDLK-KP-PLUSMINUS
    SDLK-KP-CLEAR
    SDLK-KP-CLEARENTRY
    SDLK-KP-BINARY
    SDLK-KP-OCTAL
    SDLK-KP-DECIMAL
    SDLK-KP-HEXADECIMAL

    SDLK-LCTRL
    SDLK-LSHIFT
    SDLK-LALT
    SDLK-LGUI
    SDLK-RCTRL
    SDLK-RSHIFT
    SDLK-RALT
    SDLK-RGUI

    SDLK-MODE

    SDLK-AUDIONEXT
    SDLK-AUDIOPREV
    SDLK-AUDIOSTOP
    SDLK-AUDIOPLAY
    SDLK-AUDIOMUTE
    SDLK-MEDIASELECT
    SDLK-WWW
    SDLK-MAIL
    SDLK-CALCULATOR
    SDLK-COMPUTER
    SDLK-AC-SEARCH
    SDLK-AC-HOME
    SDLK-AC-BACK
    SDLK-AC-FORWARD
    SDLK-AC-STOP
    SDLK-AC-REFRESH
    SDLK-AC-BOOKMARKS

    SDLK-BRIGHTNESSDOWN
    SDLK-BRIGHTNESSUP
    SDLK-DISPLAYSWITCH
    SDLK-KBDILLUMTOGGLE
    SDLK-KBDILLUMDOWN
    SDLK-KBDILLUMUP
    SDLK-EJECT
    SDLK-SLEEP
    SDLK-APP1
    SDLK-APP2

    SDLK-AUDIOREWIND
    SDLK-AUDIOFASTFORWARD

    ;; https://wiki.libsdl.org/SDL_Keymod
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


    ;;;
    ;;; Flags
    ;;;

    ;; sdl-init
    SDL-INIT-TIMER
    SDL-INIT-AUDIO
    SDL-INIT-VIDEO
    SDL-INIT-JOYSTICK
    SDL-INIT-HAPTIC
    SDL-INIT-GAMECONTROLLER
    SDL-INIT-EVENTS
    SDL-INIT-EVERYTHING

    ;; sdl-create-window
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

    SDL-WINDOWPOS-UNDEFINED-MASK
    SDL-WINDOWPOS-UNDEFINED-DISPLAY
    SDL-WINDOWPOS-UNDEFINED
    SDL-WINDOWPOS-ISUNDEFINED

    SDL-WINDOWPOS-CENTERED-MASK
    SDL-WINDOWPOS-CENTERED-DISPLAY
    SDL-WINDOWPOS-CENTERED
    SDL-WINDOWPOS-ISCENTERED

    ;; sdl-create-renderer
    SDL-RENDERER-SOFTWARE
    SDL-RENDERER-ACCELERATED
    SDL-RENDERER-PRESENTVSYNC
    SDL-RENDERER-TARGETTEXTURE

    ;; sdl-peep-events!
    SDL-ADDEVENT
    SDL-PEEKEVENT
    SDL-GETEVENT)

  (import (chezscheme))


  ;;;
  ;;; Misc.
  ;;

  (define sdl
    (begin
      ;; Check for version string here.
      (load-shared-object "libSDL2.so")))

  (define event-mem 0)


  ;;;
  ;;; Procedures
  ;;;

  ;; https://wiki.libsdl.org/SDL_Init
  (define (sdl-init flags)
    ; Allocate some memory on the heap
    (set! event-mem (make-ftype-pointer sdl-event (foreign-alloc (ftype-sizeof sdl-event))))

    ; Call the subroutine
    (if (= ((foreign-procedure "SDL_Init" (unsigned-32) int) flags) 0)
        0
        (begin
          (foreign-free (ftype-pointer-address event-mem))

          ;; Fail hard if we can't use SDL
          (display "SDL: "         (current-error-port))
          (display (sdl-get-error) (current-error-port))
          (newline                 (current-error-port))
          (exit))))

  ;; https://wiki.libsdl.org/SDL_Quit
  (define (sdl-quit)
    ; Release the memory from init
    (foreign-free (ftype-pointer-address event-mem))

    ; Call the subroutine
    (foreign-procedure "SDL_Quit" () void))

  ;; https://wiki.libsdl.org/SDL_PollEvent
  (define sdl-poll-event!
    (foreign-procedure "SDL_PollEvent" ((* sdl-event)) int))

  ;; https://wiki.libsdl.org/SDL_PeepEvents
  (define sdl-peep-events!
    (foreign-procedure "SDL_PeepEvents" ((* sdl-event) int unsigned unsigned-32 unsigned-32) int))

  ;; https://wiki.libsdl.org/SDL_CreateWindow
  (define sdl-create-window!
    (foreign-procedure "SDL_CreateWindow" (string int int int int unsigned-32) void*))

  ;; https://wiki.libsdl.org/SDL_CreateRenderer
  (define sdl-create-renderer!
    (foreign-procedure "SDL_CreateRenderer" (void* int unsigned-32) void*))

  ;; https://wiki.libsdl.org/SDL_RWFromFile
  (define sdl-rw-from-file!
    (foreign-procedure "SDL_RWFromFile" (string string) void*))
  
  ;; https://wiki.libsdl.org/SDL_LoadBMP_RW
  (define sdl-load-bmp-rw!
    (foreign-procedure "SDL_LoadBMP_RW" (void* int) void*))

  ;; https://wiki.libsdl.org/SDL_LoadBMP
  (define (sdl-load-bmp! file)
    (sdl-load-bmp-rw! (sdl-rw-from-file! file "rb") 1))

  ;; https://wiki.libsdl.org/SDL_CreateTextureFromSurface
  (define sdl-create-texture-from-surface!
    (foreign-procedure "SDL_CreateTextureFromSurface" (void* void*) void*))

  ;; https://wiki.libsdl.org/SDL_RenderClear
  (define sdl-render-clear
    (foreign-procedure "SDL_RenderClear" (void*) int))

  ;; https://wiki.libsdl.org/SDL_RenderCopy
  (define sdl-render-copy
    (foreign-procedure "SDL_RenderCopy" (void* void* void* void*) int))

  ;; https://wiki.libsdl.org/SDL_RenderPresent
  (define sdl-render-present
    (foreign-procedure "SDL_RenderPresent" (void*) void))

  ;; https://wiki.libsdl.org/SDL_DestroyTexture
  (define sdl-destroy-texture
    (foreign-procedure "SDL_DestroyTexture" (void*) void))

  ;; https://wiki.libsdl.org/SDL_DestroyRenderer
  (define sdl-destroy-renderer
    (foreign-procedure "SDL_DestroyRenderer" (void*) void))

  ;; https://wiki.libsdl.org/SDL_DestroyWindow
  (define sdl-destroy-window
    (foreign-procedure "SDL_DestroyWindow" (void*) void))

  ;; https://wiki.libsdl.org/SDL_FreeSurface
  (define sdl-free-surface
    (foreign-procedure "SDL_FreeSurface" (void*) void))

  ;; https://wiki.libsdl.org/SDL_Delay
  (define sdl-delay
    (foreign-procedure "SDL_Delay" (unsigned-32) void))

  ;; https://wiki.libsdl.org/SDL_GetError
  (define sdl-get-error
    (foreign-procedure "SDL_GetError" () string))


  ;;;
  ;;; Flags
  ;;;

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
  (define SDL-WINDOW-FULLSCREEN-DESKTOP (bitwise-ior SDL-WINDOW-FULLSCREEN #x00001000))
  (define SDL-WINDOW-FOREIGN            #x00000800)
  (define SDL-WINDOW-ALLOW-HIGHDPI      #x00002000)

  (define SDL-WINDOWPOS-UNDEFINED-MASK        #x1FFF0000)
  (define (SDL-WINDOWPOS-UNDEFINED-DISPLAY X) (bitwise-ior SDL-WINDOWPOS-UNDEFINED-MASK X))
  (define SDL-WINDOWPOS-UNDEFINED             (SDL-WINDOWPOS-UNDEFINED-DISPLAY 0))
  (define (SDL-WINDOWPOS-ISUNDEFINED X)       (= (bitwise-and X #xFFFF0000) SDL-WINDOWPOS-UNDEFINED-MASK))

  (define SDL-WINDOWPOS-CENTERED-MASK        #x2FFF0000)
  (define (SDL-WINDOWPOS-CENTERED-DISPLAY X) (bitwise-ior SDL-WINDOWPOS-CENTERED-MASK X))
  (define SDL-WINDOWPOS-CENTERED             (SDL-WINDOWPOS-CENTERED-DISPLAY 0))
  (define (SDL-WINDOWPOS-ISCENTERED X)       (= (bitwise-and X #xFFFF0000) SDL-WINDOWPOS-CENTERED-MASK))

  (define SDL-RENDERER-SOFTWARE      #x00000001)
  (define SDL-RENDERER-ACCELERATED   #x00000002)
  (define SDL-RENDERER-PRESENTVSYNC  #x00000004)
  (define SDL-RENDERER-TARGETTEXTURE #x00000008)

  (define SDL-ADDEVENT  0)
  (define SDL-PEEKEVENT 1)
  (define SDL-GETEVENT  2)

  ;;;
  ;;; Keyboard
  ;;;

  ;; https://wiki.libsdl.org/SDL_Scancode
  (define SDL-SCANCODE-UNKNOWN 0)

  (define SDL-SCANCODE-A 4)
  (define SDL-SCANCODE-B 5)
  (define SDL-SCANCODE-C 6)
  (define SDL-SCANCODE-D 7)
  (define SDL-SCANCODE-E 8)
  (define SDL-SCANCODE-F 9)
  (define SDL-SCANCODE-G 10)
  (define SDL-SCANCODE-H 11)
  (define SDL-SCANCODE-I 12)
  (define SDL-SCANCODE-J 13)
  (define SDL-SCANCODE-K 14)
  (define SDL-SCANCODE-L 15)
  (define SDL-SCANCODE-M 16)
  (define SDL-SCANCODE-N 17)
  (define SDL-SCANCODE-O 18)
  (define SDL-SCANCODE-P 19)
  (define SDL-SCANCODE-Q 20)
  (define SDL-SCANCODE-R 21)
  (define SDL-SCANCODE-S 22)
  (define SDL-SCANCODE-T 23)
  (define SDL-SCANCODE-U 24)
  (define SDL-SCANCODE-V 25)
  (define SDL-SCANCODE-W 26)
  (define SDL-SCANCODE-X 27)
  (define SDL-SCANCODE-Y 28)
  (define SDL-SCANCODE-Z 29)

  (define SDL-SCANCODE-1 30)
  (define SDL-SCANCODE-2 31)
  (define SDL-SCANCODE-3 32)
  (define SDL-SCANCODE-4 33)
  (define SDL-SCANCODE-5 34)
  (define SDL-SCANCODE-6 35)
  (define SDL-SCANCODE-7 36)
  (define SDL-SCANCODE-8 37)
  (define SDL-SCANCODE-9 38)
  (define SDL-SCANCODE-0 39)

  (define SDL-SCANCODE-RETURN    40)
  (define SDL-SCANCODE-ESCAPE    41)
  (define SDL-SCANCODE-BACKSPACE 42)
  (define SDL-SCANCODE-TAB       43)
  (define SDL-SCANCODE-SPACE     44)

  (define SDL-SCANCODE-MINUS        45)
  (define SDL-SCANCODE-EQUALS       46)
  (define SDL-SCANCODE-LEFTBRACKET  47)
  (define SDL-SCANCODE-RIGHTBRACKET 48)
  (define SDL-SCANCODE-BACKSLASH    49)

  (define SDL-SCANCODE-NONUSHASH  50)
  (define SDL-SCANCODE-SEMICOLON  51)
  (define SDL-SCANCODE-APOSTROPHE 52)
  (define SDL-SCANCODE-GRAVE      53)
  (define SDL-SCANCODE-COMMA      54)
  (define SDL-SCANCODE-PERIOD     55)
  (define SDL-SCANCODE-SLASH      56)

  (define SDL-SCANCODE-CAPSLOCK 57)

  (define SDL-SCANCODE-F1  58)
  (define SDL-SCANCODE-F2  59)
  (define SDL-SCANCODE-F3  60)
  (define SDL-SCANCODE-F4  61)
  (define SDL-SCANCODE-F5  62)
  (define SDL-SCANCODE-F6  63)
  (define SDL-SCANCODE-F7  64)
  (define SDL-SCANCODE-F8  65)
  (define SDL-SCANCODE-F9  66)
  (define SDL-SCANCODE-F10 67)
  (define SDL-SCANCODE-F11 68)
  (define SDL-SCANCODE-F12 69)

  (define SDL-SCANCODE-PRINTSCREEN 70)
  (define SDL-SCANCODE-SCROLLLOCK  71)
  (define SDL-SCANCODE-PAUSE       72)
  (define SDL-SCANCODE-INSERT      73)
  (define SDL-SCANCODE-HOME        74)
  (define SDL-SCANCODE-PAGEUP      75)
  (define SDL-SCANCODE-DELETE      76)
  (define SDL-SCANCODE-END         77)
  (define SDL-SCANCODE-PAGEDOWN    78)
  (define SDL-SCANCODE-RIGHT       79)
  (define SDL-SCANCODE-LEFT        80)
  (define SDL-SCANCODE-DOWN        81)
  (define SDL-SCANCODE-UP          82)

  (define SDL-SCANCODE-NUMLOCKCLEAR 83)
  (define SDL-SCANCODE-KP-DIVIDE    84)
  (define SDL-SCANCODE-KP-MULTIPLY  85)
  (define SDL-SCANCODE-KP-MINUS     86)
  (define SDL-SCANCODE-KP-PLUS      87)
  (define SDL-SCANCODE-KP-ENTER     88)
  (define SDL-SCANCODE-KP-1         89)
  (define SDL-SCANCODE-KP-2         90)
  (define SDL-SCANCODE-KP-3         91)
  (define SDL-SCANCODE-KP-4         92)
  (define SDL-SCANCODE-KP-5         93)
  (define SDL-SCANCODE-KP-6         94)
  (define SDL-SCANCODE-KP-7         95)
  (define SDL-SCANCODE-KP-8         96)
  (define SDL-SCANCODE-KP-9         97)
  (define SDL-SCANCODE-KP-0         98)
  (define SDL-SCANCODE-KP-PERIOD    99)

  (define SDL-SCANCODE-NONUSBACKSLASH 100)
  (define SDL-SCANCODE-APPLICATION    101)
  (define SDL-SCANCODE-POWER          102)
  (define SDL-SCANCODE-KP-EQUALS      103)
  (define SDL-SCANCODE-F13            104)
  (define SDL-SCANCODE-F14            105)
  (define SDL-SCANCODE-F15            106)
  (define SDL-SCANCODE-F16            107)
  (define SDL-SCANCODE-F17            108)
  (define SDL-SCANCODE-F18            109)
  (define SDL-SCANCODE-F19            110)
  (define SDL-SCANCODE-F20            111)
  (define SDL-SCANCODE-F21            112)
  (define SDL-SCANCODE-F22            113)
  (define SDL-SCANCODE-F23            114)
  (define SDL-SCANCODE-F24            115)
  (define SDL-SCANCODE-EXECUTE        116)
  (define SDL-SCANCODE-HELP           117)
  (define SDL-SCANCODE-MENU           118)
  (define SDL-SCANCODE-SELECT         119)
  (define SDL-SCANCODE-STOP           120)
  (define SDL-SCANCODE-AGAIN          121)
  (define SDL-SCANCODE-UNDO           122)
  (define SDL-SCANCODE-CUT            123)
  (define SDL-SCANCODE-COPY           124)
  (define SDL-SCANCODE-PASTE          125)
  (define SDL-SCANCODE-FIND           126)
  (define SDL-SCANCODE-MUTE           127)
  (define SDL-SCANCODE-VOLUMEUP       128)
  (define SDL-SCANCODE-VOLUMEDOWN     129)
  (define SDL-SCANCODE-KP-COMMA       133)
  (define SDL-SCANCODE-KP-EQUALSAS400 134)

  (define SDL-SCANCODE-INTERNATIONAL1 135)
  (define SDL-SCANCODE-INTERNATIONAL2 136)
  (define SDL-SCANCODE-INTERNATIONAL3 137)
  (define SDL-SCANCODE-INTERNATIONAL4 138)
  (define SDL-SCANCODE-INTERNATIONAL5 139)
  (define SDL-SCANCODE-INTERNATIONAL6 140)
  (define SDL-SCANCODE-INTERNATIONAL7 141)
  (define SDL-SCANCODE-INTERNATIONAL8 142)
  (define SDL-SCANCODE-INTERNATIONAL9 143)
  (define SDL-SCANCODE-LANG1          144)
  (define SDL-SCANCODE-LANG2          145)
  (define SDL-SCANCODE-LANG3          146)
  (define SDL-SCANCODE-LANG4          147)
  (define SDL-SCANCODE-LANG5          148)
  (define SDL-SCANCODE-LANG6          149)
  (define SDL-SCANCODE-LANG7          150)
  (define SDL-SCANCODE-LANG8          151)
  (define SDL-SCANCODE-LANG9          152)

  (define SDL-SCANCODE-ALTERASE   153)
  (define SDL-SCANCODE-SYSREQ     154)
  (define SDL-SCANCODE-CANCEL     155)
  (define SDL-SCANCODE-CLEAR      156)
  (define SDL-SCANCODE-PRIOR      157)
  (define SDL-SCANCODE-RETURN2    158)
  (define SDL-SCANCODE-SEPARATOR  159)
  (define SDL-SCANCODE-OUT        160)
  (define SDL-SCANCODE-OPER       161)
  (define SDL-SCANCODE-CLEARAGAIN 162)
  (define SDL-SCANCODE-CRSEL      163)
  (define SDL-SCANCODE-EXSEL      164)

  (define SDL-SCANCODE-KP-00              176)
  (define SDL-SCANCODE-KP-000             177)
  (define SDL-SCANCODE-THOUSANDSSEPARATOR 178)
  (define SDL-SCANCODE-DECIMALSEPARATOR   179)
  (define SDL-SCANCODE-CURRENCYUNIT       180)
  (define SDL-SCANCODE-CURRENCYSUBUNIT    181)
  (define SDL-SCANCODE-KP-LEFTPAREN       182)
  (define SDL-SCANCODE-KP-RIGHTPAREN      183)
  (define SDL-SCANCODE-KP-LEFTBRACE       184)
  (define SDL-SCANCODE-KP-RIGHTBRACE      185)
  (define SDL-SCANCODE-KP-TAB             186)
  (define SDL-SCANCODE-KP-BACKSPACE       187)
  (define SDL-SCANCODE-KP-A               188)
  (define SDL-SCANCODE-KP-B               189)
  (define SDL-SCANCODE-KP-C               190)
  (define SDL-SCANCODE-KP-D               191)
  (define SDL-SCANCODE-KP-E               192)
  (define SDL-SCANCODE-KP-F               193)
  (define SDL-SCANCODE-KP-XOR             194)
  (define SDL-SCANCODE-KP-POWER           195)
  (define SDL-SCANCODE-KP-PERCENT         196)
  (define SDL-SCANCODE-KP-LESS            197)
  (define SDL-SCANCODE-KP-GREATER         198)
  (define SDL-SCANCODE-KP-AMPERSAND       199)
  (define SDL-SCANCODE-KP-DBLAMPERSAND    200)
  (define SDL-SCANCODE-KP-VERTICALBAR     201)
  (define SDL-SCANCODE-KP-DBLVERTICALBAR  202)
  (define SDL-SCANCODE-KP-COLON           203)
  (define SDL-SCANCODE-KP-HASH            204)
  (define SDL-SCANCODE-KP-SPACE           205)
  (define SDL-SCANCODE-KP-AT              206)
  (define SDL-SCANCODE-KP-EXCLAM          207)
  (define SDL-SCANCODE-KP-MEMSTORE        208)
  (define SDL-SCANCODE-KP-MEMRECALL       209)
  (define SDL-SCANCODE-KP-MEMCLEAR        210)
  (define SDL-SCANCODE-KP-MEMADD          211)
  (define SDL-SCANCODE-KP-MEMSUBTRACT     212)
  (define SDL-SCANCODE-KP-MEMMULTIPLY     213)
  (define SDL-SCANCODE-KP-MEMDIVIDE       214)
  (define SDL-SCANCODE-KP-PLUSMINUS       215)
  (define SDL-SCANCODE-KP-CLEAR           216)
  (define SDL-SCANCODE-KP-CLEARENTRY      217)
  (define SDL-SCANCODE-KP-BINARY          218)
  (define SDL-SCANCODE-KP-OCTAL           219)
  (define SDL-SCANCODE-KP-DECIMAL         220)
  (define SDL-SCANCODE-KP-HEXADECIMAL     221)

  (define SDL-SCANCODE-LCTRL  224)
  (define SDL-SCANCODE-LSHIFT 225)
  (define SDL-SCANCODE-LALT   226)
  (define SDL-SCANCODE-LGUI   227)
  (define SDL-SCANCODE-RCTRL  228)
  (define SDL-SCANCODE-RSHIFT 229)
  (define SDL-SCANCODE-RALT   230)
  (define SDL-SCANCODE-RGUI   231)

  (define SDL-SCANCODE-MODE 257)

  (define SDL-SCANCODE-AUDIONEXT    258)
  (define SDL-SCANCODE-AUDIOPREV    259)
  (define SDL-SCANCODE-AUDIOSTOP    260)
  (define SDL-SCANCODE-AUDIOPLAY    261)
  (define SDL-SCANCODE-AUDIOMUTE    262)
  (define SDL-SCANCODE-MEDIASELECT  263)
  (define SDL-SCANCODE-WWW          264)
  (define SDL-SCANCODE-MAIL         265)
  (define SDL-SCANCODE-CALCULATOR   266)
  (define SDL-SCANCODE-COMPUTER     267)
  (define SDL-SCANCODE-AC-SEARCH    268)
  (define SDL-SCANCODE-AC-HOME      269)
  (define SDL-SCANCODE-AC-BACK      270)
  (define SDL-SCANCODE-AC-FORWARD   271)
  (define SDL-SCANCODE-AC-STOP      272)
  (define SDL-SCANCODE-AC-REFRESH   273)
  (define SDL-SCANCODE-AC-BOOKMARKS 274)

  (define SDL-SCANCODE-BRIGHTNESSDOWN 275)
  (define SDL-SCANCODE-BRIGHTNESSUP   276)
  (define SDL-SCANCODE-DISPLAYSWITCH  277)
  (define SDL-SCANCODE-KBDILLUMTOGGLE 278)
  (define SDL-SCANCODE-KBDILLUMDOWN   279)
  (define SDL-SCANCODE-KBDILLUMUP     280)
  (define SDL-SCANCODE-EJECT          281)
  (define SDL-SCANCODE-SLEEP          282)

  (define SDL-SCANCODE-APP1 283)
  (define SDL-SCANCODE-APP2 284)

  (define SDL-SCANCODE-AUDIOREWIND      285)
  (define SDL-SCANCODE-AUDIOFASTFORWARD 286)

  ;; https://wiki.libsdl.org/SDL_Keycode
  (define SDLK-SCANCODE-MASK          (bitwise-arithmetic-shift 1 30))
  (define (SDL-SCANCODE-TO-KEYCODE X) (bitwise-ior X SDLK-SCANCODE-MASK))

  (define SDLK-UNKNOWN 0)

  (define SDLK-RETURN       (char->integer #\r))
  (define SDLK-ESCAPE       (char->integer #\esc))
  (define SDLK-BACKSPACE    (char->integer #\b))
  (define SDLK-TAB          (char->integer #\t))
  (define SDLK-SPACE        (char->integer #\space))
  (define SDLK-EXCLAIM      (char->integer #\!))
  (define SDLK-QUOTEDBL     (char->integer #\")) ;"
  (define SDLK-HASH         (char->integer #\#))
  (define SDLK-PERCENT      (char->integer #\%))
  (define SDLK-DOLLAR       (char->integer #\$))
  (define SDLK-AMPERSAND    (char->integer #\&))
  (define SDLK-QUOTE        (char->integer #\'))
  (define SDLK-LEFTPAREN    (char->integer #\())
  (define SDLK-RIGHTPAREN   (char->integer #\)))
  (define SDLK-ASTERISK     (char->integer #\*))
  (define SDLK-PLUS         (char->integer #\+))
  (define SDLK-COMMA        (char->integer #\,))
  (define SDLK-MINUS        (char->integer #\-))
  (define SDLK-PERIOD       (char->integer #\.))
  (define SDLK-SLASH        (char->integer #\/))
  (define SDLK-0            (char->integer #\0))
  (define SDLK-1            (char->integer #\1))
  (define SDLK-2            (char->integer #\2))
  (define SDLK-3            (char->integer #\3))
  (define SDLK-4            (char->integer #\4))
  (define SDLK-5            (char->integer #\5))
  (define SDLK-6            (char->integer #\6))
  (define SDLK-7            (char->integer #\7))
  (define SDLK-8            (char->integer #\8))
  (define SDLK-9            (char->integer #\9))
  (define SDLK-COLON        (char->integer #\:))
  (define SDLK-SEMICOLON    (char->integer #\;))
  (define SDLK-LESS         (char->integer #\<))
  (define SDLK-EQUALS       (char->integer #\=))
  (define SDLK-GREATER      (char->integer #\>))
  (define SDLK-QUESTION     (char->integer #\?))
  (define SDLK-AT           (char->integer #\@))
  (define SDLK-LEFTBRACKET  (char->integer #\[))
  (define SDLK-BACKSLASH    (char->integer #\\))
  (define SDLK-RIGHTBRACKET (char->integer #\]))
  (define SDLK-CARET        (char->integer #\^))
  (define SDLK-UNDERSCORE   (char->integer #\_))
  (define SDLK-BACKQUOTE    (char->integer #\`))
  (define SDLK-a            (char->integer #\a))
  (define SDLK-b            (char->integer #\b))
  (define SDLK-c            (char->integer #\c))
  (define SDLK-d            (char->integer #\d))
  (define SDLK-e            (char->integer #\e))
  (define SDLK-f            (char->integer #\f))
  (define SDLK-g            (char->integer #\g))
  (define SDLK-h            (char->integer #\h))
  (define SDLK-i            (char->integer #\i))
  (define SDLK-j            (char->integer #\j))
  (define SDLK-k            (char->integer #\k))
  (define SDLK-l            (char->integer #\l))
  (define SDLK-m            (char->integer #\m))
  (define SDLK-n            (char->integer #\n))
  (define SDLK-o            (char->integer #\o))
  (define SDLK-p            (char->integer #\p))
  (define SDLK-q            (char->integer #\q))
  (define SDLK-r            (char->integer #\r))
  (define SDLK-s            (char->integer #\s))
  (define SDLK-t            (char->integer #\t))
  (define SDLK-u            (char->integer #\u))
  (define SDLK-v            (char->integer #\v))
  (define SDLK-w            (char->integer #\w))
  (define SDLK-x            (char->integer #\x))
  (define SDLK-y            (char->integer #\y))
  (define SDLK-z            (char->integer #\z))

  (define SDLK-CAPSLOCK (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-CAPSLOCK))

  (define SDLK-F1  (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-F1))
  (define SDLK-F2  (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-F2))
  (define SDLK-F3  (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-F3))
  (define SDLK-F4  (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-F4))
  (define SDLK-F5  (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-F5))
  (define SDLK-F6  (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-F6))
  (define SDLK-F7  (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-F7))
  (define SDLK-F8  (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-F8))
  (define SDLK-F9  (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-F9))
  (define SDLK-F10 (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-F10))
  (define SDLK-F11 (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-F11))
  (define SDLK-F12 (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-F12))

  (define SDLK-PRINTSCREEN (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-PRINTSCREEN))
  (define SDLK-SCROLLLOCK  (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-SCROLLLOCK))
  (define SDLK-PAUSE       (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-PAUSE))
  (define SDLK-INSERT      (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-INSERT))
  (define SDLK-HOME        (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-HOME))
  (define SDLK-PAGEUP      (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-PAGEUP))
  (define SDLK-DELETE      (char->integer #\delete))
  (define SDLK-END         (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-END))
  (define SDLK-PAGEDOWN    (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-PAGEDOWN))
  (define SDLK-RIGHT       (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-RIGHT))
  (define SDLK-LEFT        (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-LEFT))
  (define SDLK-DOWN        (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-DOWN))
  (define SDLK-UP          (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-UP))

  (define SDLK-NUMLOCKCLEAR (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-NUMLOCKCLEAR))
  (define SDLK-KP-DIVIDE    (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-DIVIDE))
  (define SDLK-KP-MULTIPLY  (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-MULTIPLY))
  (define SDLK-KP-MINUS     (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-MINUS))
  (define SDLK-KP-PLUS      (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-PLUS))
  (define SDLK-KP-ENTER     (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-ENTER))
  (define SDLK-KP-1         (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-1))
  (define SDLK-KP-2         (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-2))
  (define SDLK-KP-3         (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-3))
  (define SDLK-KP-4         (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-4))
  (define SDLK-KP-5         (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-5))
  (define SDLK-KP-6         (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-6))
  (define SDLK-KP-7         (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-7))
  (define SDLK-KP-8         (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-8))
  (define SDLK-KP-9         (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-9))
  (define SDLK-KP-0         (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-0))
  (define SDLK-KP-PERIOD    (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-PERIOD))

  (define SDLK-APPLICATION    (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-APPLICATION))
  (define SDLK-POWER          (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-POWER))
  (define SDLK-KP-EQUALS      (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-EQUALS))
  (define SDLK-F13            (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-F13))
  (define SDLK-F14            (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-F14))
  (define SDLK-F15            (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-F15))
  (define SDLK-F16            (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-F16))
  (define SDLK-F17            (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-F17))
  (define SDLK-F18            (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-F18))
  (define SDLK-F19            (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-F19))
  (define SDLK-F20            (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-F20))
  (define SDLK-F21            (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-F21))
  (define SDLK-F22            (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-F22))
  (define SDLK-F23            (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-F23))
  (define SDLK-F24            (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-F24))
  (define SDLK-EXECUTE        (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-EXECUTE))
  (define SDLK-HELP           (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-HELP))
  (define SDLK-MENU           (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-MENU))
  (define SDLK-SELECT         (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-SELECT))
  (define SDLK-STOP           (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-STOP))
  (define SDLK-AGAIN          (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-AGAIN))
  (define SDLK-UNDO           (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-UNDO))
  (define SDLK-CUT            (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-CUT))
  (define SDLK-COPY           (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-COPY))
  (define SDLK-PASTE          (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-PASTE))
  (define SDLK-FIND           (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-FIND))
  (define SDLK-MUTE           (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-MUTE))
  (define SDLK-VOLUMEUP       (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-VOLUMEUP))
  (define SDLK-VOLUMEDOWN     (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-VOLUMEDOWN))
  (define SDLK-KP-COMMA       (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-COMMA))
  (define SDLK-KP-EQUALSAS400 (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-EQUALSAS400))

  (define SDLK-ALTERASE   (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-ALTERASE))
  (define SDLK-SYSREQ     (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-SYSREQ))
  (define SDLK-CANCEL     (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-CANCEL))
  (define SDLK-CLEAR      (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-CLEAR))
  (define SDLK-PRIOR      (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-PRIOR))
  (define SDLK-RETURN2    (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-RETURN2))
  (define SDLK-SEPARATOR  (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-SEPARATOR))
  (define SDLK-OUT        (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-OUT))
  (define SDLK-OPER       (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-OPER))
  (define SDLK-CLEARAGAIN (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-CLEARAGAIN))
  (define SDLK-CRSEL      (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-CRSEL))
  (define SDLK-EXSEL      (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-EXSEL))

  (define SDLK-KP-00              (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-00))
  (define SDLK-KP-000             (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-000))
  (define SDLK-THOUSANDSSEPARATOR (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-THOUSANDSSEPARATOR))
  (define SDLK-DECIMALSEPARATOR   (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-DECIMALSEPARATOR))
  (define SDLK-CURRENCYUNIT       (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-CURRENCYUNIT))
  (define SDLK-CURRENCYSUBUNIT    (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-CURRENCYSUBUNIT))
  (define SDLK-KP-LEFTPAREN       (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-LEFTPAREN))
  (define SDLK-KP-RIGHTPAREN      (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-RIGHTPAREN))
  (define SDLK-KP-LEFTBRACE       (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-LEFTBRACE))
  (define SDLK-KP-RIGHTBRACE      (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-RIGHTBRACE))
  (define SDLK-KP-TAB             (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-TAB))
  (define SDLK-KP-BACKSPACE       (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-BACKSPACE))
  (define SDLK-KP-A               (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-A))
  (define SDLK-KP-B               (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-B))
  (define SDLK-KP-C               (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-C))
  (define SDLK-KP-D               (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-D))
  (define SDLK-KP-E               (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-E))
  (define SDLK-KP-F               (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-F))
  (define SDLK-KP-XOR             (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-XOR))
  (define SDLK-KP-POWER           (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-POWER))
  (define SDLK-KP-PERCENT         (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-PERCENT))
  (define SDLK-KP-LESS            (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-LESS))
  (define SDLK-KP-GREATER         (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-GREATER))
  (define SDLK-KP-AMPERSAND       (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-AMPERSAND))
  (define SDLK-KP-DBLAMPERSAND    (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-DBLAMPERSAND))
  (define SDLK-KP-VERTICALBAR     (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-VERTICALBAR))
  (define SDLK-KP-DBLVERTICALBAR  (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-DBLVERTICALBAR))
  (define SDLK-KP-COLON           (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-COLON))
  (define SDLK-KP-HASH            (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-HASH))
  (define SDLK-KP-SPACE           (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-SPACE))
  (define SDLK-KP-AT              (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-AT))
  (define SDLK-KP-EXCLAM          (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-EXCLAM))
  (define SDLK-KP-MEMSTORE        (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-MEMSTORE))
  (define SDLK-KP-MEMRECALL       (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-MEMRECALL))
  (define SDLK-KP-MEMCLEAR        (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-MEMCLEAR))
  (define SDLK-KP-MEMADD          (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-MEMADD))
  (define SDLK-KP-MEMSUBTRACT     (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-MEMSUBTRACT))
  (define SDLK-KP-MEMMULTIPLY     (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-MEMMULTIPLY))
  (define SDLK-KP-MEMDIVIDE       (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-MEMDIVIDE))
  (define SDLK-KP-PLUSMINUS       (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-PLUSMINUS))
  (define SDLK-KP-CLEAR           (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-CLEAR))
  (define SDLK-KP-CLEARENTRY      (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-CLEARENTRY))
  (define SDLK-KP-BINARY          (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-BINARY))
  (define SDLK-KP-OCTAL           (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-OCTAL))
  (define SDLK-KP-DECIMAL         (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-DECIMAL))
  (define SDLK-KP-HEXADECIMAL     (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KP-HEXADECIMAL))

  (define SDLK-LCTRL  (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-LCTRL))
  (define SDLK-LSHIFT (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-LSHIFT))
  (define SDLK-LALT   (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-LALT))
  (define SDLK-LGUI   (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-LGUI))
  (define SDLK-RCTRL  (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-RCTRL))
  (define SDLK-RSHIFT (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-RSHIFT))
  (define SDLK-RALT   (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-RALT))
  (define SDLK-RGUI   (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-RGUI))

  (define SDLK-MODE (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-MODE))

  (define SDLK-AUDIONEXT    (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-AUDIONEXT))
  (define SDLK-AUDIOPREV    (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-AUDIOPREV))
  (define SDLK-AUDIOSTOP    (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-AUDIOSTOP))
  (define SDLK-AUDIOPLAY    (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-AUDIOPLAY))
  (define SDLK-AUDIOMUTE    (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-AUDIOMUTE))
  (define SDLK-MEDIASELECT  (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-MEDIASELECT))
  (define SDLK-WWW          (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-WWW))
  (define SDLK-MAIL         (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-MAIL))
  (define SDLK-CALCULATOR   (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-CALCULATOR))
  (define SDLK-COMPUTER     (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-COMPUTER))
  (define SDLK-AC-SEARCH    (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-AC-SEARCH))
  (define SDLK-AC-HOME      (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-AC-HOME))
  (define SDLK-AC-BACK      (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-AC-BACK))
  (define SDLK-AC-FORWARD   (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-AC-FORWARD))
  (define SDLK-AC-STOP      (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-AC-STOP))
  (define SDLK-AC-REFRESH   (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-AC-REFRESH))
  (define SDLK-AC-BOOKMARKS (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-AC-BOOKMARKS))

  (define SDLK-BRIGHTNESSDOWN (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-BRIGHTNESSDOWN))
  (define SDLK-BRIGHTNESSUP   (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-BRIGHTNESSUP))
  (define SDLK-DISPLAYSWITCH  (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-DISPLAYSWITCH))
  (define SDLK-KBDILLUMTOGGLE (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KBDILLUMTOGGLE))
  (define SDLK-KBDILLUMDOWN   (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KBDILLUMDOWN))
  (define SDLK-KBDILLUMUP     (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-KBDILLUMUP))
  (define SDLK-EJECT          (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-EJECT))
  (define SDLK-SLEEP          (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-SLEEP))
  (define SDLK-APP1           (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-APP1))
  (define SDLK-APP2           (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-APP2))

  (define SDLK-AUDIOREWIND      (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-AUDIOREWIND))
  (define SDLK-AUDIOFASTFORWARD (SDL-SCANCODE-TO-KEYCODE SDL-SCANCODE-AUDIOFASTFORWARD))

  ;; https://wiki.libsdl.org/SDL_Keymod
  (define KMOD-NONE     #x0000)
  (define KMOD-LSHIFT   #x0001)
  (define KMOD-RSHIFT   #x0002)
  (define KMOD-LCTRL    #x0040)
  (define KMOD-RCTRL    #x0080)
  (define KMOD-LALT     #x0100)
  (define KMOD-RALT     #x0200)
  (define KMOD-LGUI     #x0400)
  (define KMOD-RGUI     #x0800)
  (define KMOD-NUM      #x1000)
  (define KMOD-CAPS     #x2000)
  (define KMOD-MODE     #x4000)
  (define KMOD-RESERVED #x8000)

  (define KMOD-CTRL  (bitwise-ior KMOD-LCTRL  KMOD-RCTRL))
  (define KMOD-SHIFT (bitwise-ior KMOD-LSHIFT KMOD-RSHIFT))
  (define KMOD-ALT   (bitwise-ior KMOD-LALT   KMOD-RALT))
  (define KMOD-GUI   (bitwise-ior KMOD-LGUI   KMOD-RGUI))

  ;; https://wiki.libsdl.org/SDL_Keysym
  (define-ftype sdl-keysym
    (struct
      [scancode unsigned]
      [sym      integer-32]
      [mod      unsigned-16]
      [unused   unsigned-32]))


  ;;;
  ;;; Events
  ;;;

  (define SDL-FIRSTEVENT-E 0)

  ;; Application events
  (define SDL-QUIT-E                    #x100)
  (define SDL-APP-TERMINATING-E         #x101)
  (define SDL-APP-LOWMEMORY-E           #x102)
  (define SDL-APP-WILLENTERBACKGROUND-E #x103)
  (define SDL-APP-DIDENTERBACKGROUND-E  #x104)
  (define SDL-APP-WILLENTERFOREGROUND-E #x105)
  (define SDL-APP-DIDENTERFOREGROUND-E  #x106)

  ;; Window events
  (define SDL-WINDOWEVENT-E #x200)
  (define SDL-SYSWMEVENT-E  #x201)

  ;; Keyboard events
  (define SDL-KEYDOWN-E       #x300)
  (define SDL-KEYUP-E         #x301)
  (define SDL-TEXTEDITING-E   #x302)
  (define SDL-TEXTINPUT-E     #x303)
  (define SDL-KEYMAPCHANGED-E #x304)

  ;; Mouse events
  (define SDL-MOUSEMOTION-E     #x400)
  (define SDL-MOUSEBUTTONDOWN-E #x401)
  (define SDL-MOUSEBUTTONUP-E   #x402)
  (define SDL-MOUSEWHEEL-E      #x403)

  ;; Joystick events
  (define SDL-JOYAXISMOTION-E    #x600)
  (define SDL-JOYBALLMOTION-E    #x601)
  (define SDL-JOYHATMOTION-E     #x602)
  (define SDL-JOYBUTTONDOWN-E    #x603)
  (define SDL-JOYBUTTONUP-E      #x604)
  (define SDL-JOYDEVICEADDED-E   #x605)
  (define SDL-JOYDEVICEREMOVED-E #x606)

  ;; Game controller events
  (define SDL-CONTROLLERAXISMOTION-E     #x650)
  (define SDL-CONTROLLERBUTTONDOWN-E     #x651)
  (define SDL-CONTROLLERBUTTONUP-E       #x652)
  (define SDL-CONTROLLERDEVICEADDED-E    #x653)
  (define SDL-CONTROLLERDEVICEREMOVED-E  #x654)
  (define SDL-CONTROLLERDEVICEREMAPPED-E #x655)

  ;; Touch events
  (define SDL-FINGERDOWN-E   #x700)
  (define SDL-FINGERUP-E     #x701)
  (define SDL-FINGERMOTION-E #x702)

  ;; Gesture events
  (define SDL-DOLLARGESTURE-E #x800)
  (define SDL-DOLLARRECORD-E  #x801)
  (define SDL-MULTIGESTURE-E  #x802)

  ;; Clipboard events
  (define SDL-CLIPBOARDUPDATE-E #x900)

  ;; Drag and drop events
  (define SDL-DROPFILE-E     #x1000)
  (define SDL-DROPTEXT-E     #x1001)
  (define SDL-DROPBEGIN-E    #x1002)
  (define SDL-DROPCOMPLETE-E #x1003)

  ;; Audio hotplug events
  (define SDL-AUDIODEVICEADDED-E   #x1100)
  (define SDL-AUDIODEVICEREMOVED-E #x1101)

  ;; Render events
  (define SDL-RENDER-TARGETS-RESET-E #x2000)
  (define SDL-RENDER-DEVICE-RESET-E  #x2001)

  ;; for your use and should be allocated with SDL_RegisterEvents()
  (define SDL-USEREVENT-E #x8000)

  (define SDL-LASTEVENT-E #xFFFF)

  ;; Data
  (define-ftype sdl-common-event
    (struct
      [type      unsigned-32]
      [timestamp unsigned-32]))

  ;; https://wiki.libsdl.org/SDL_WindowEvent
  (define-ftype sdl-window-event
    (struct
      [type      unsigned-32]
      [timestamp unsigned-32]
      [windowID  unsigned-32]
      [event     unsigned-8]
      [padding1  unsigned-8]
      [padding2  unsigned-8]
      [padding3  unsigned-8]
      [data1     integer-32]
      [data2     integer-32]))

  ;; https://wiki.libsdl.org/SDL_KeyboardEvent
  (define-ftype sdl-keyboard-event
    (struct
      [type      unsigned-32]
      [timestamp unsigned-32]
      [windowID  unsigned-32]
      [state     unsigned-8]
      [repeat    unsigned-8]
      [keysym    sdl-keysym]))

  ;; https://wiki.libsdl.org/SDL_TextEditingEvent
  (define-ftype sdl-text-editing-event
    (struct
      [type      unsigned-32]
      [timestamp unsigned-32]
      [windowID  unsigned-32]
      [text      (array 32 char)]
      [start     integer-32]
      [length    integer-32]))

  ;; https://wiki.libsdl.org/SDL_TextInputEvent
  (define-ftype sdl-text-input-event
    (struct
      [type      unsigned-32]
      [timestamp unsigned-32]
      [windowID  unsigned-32]
      [text      (array 32 char)]))

  ;; https://wiki.libsdl.org/SDL_MouseMotionEvent
  (define-ftype sdl-mouse-motion-event
    (struct
      [type      unsigned-32]
      [timestamp unsigned-32]
      [windowID  unsigned-32]
      [which     unsigned-32]
      [state     unsigned-32]
      [x         integer-32]
      [y         integer-32]
      [xrel      integer-32]
      [yrel      integer-32]))

  ;; https://wiki.libsdl.org/SDL_MouseButtonEvent
  (define-ftype sdl-mouse-button-event
    (struct
      [type      unsigned-32]
      [timestamp unsigned-32]
      [windowID  unsigned-32]
      [which     unsigned-32]
      [button    unsigned-8]
      [state     unsigned-8]
      [clicks    unsigned-8]
      [padding1  unsigned-8]
      [x         integer-32]
      [y         integer-32]))

  ;; https://wiki.libsdl.org/SDL_MouseWheelEvent
  (define-ftype sdl-mouse-wheel-event
    (struct
      [type      unsigned-32]
      [timestamp unsigned-32]
      [windowID  unsigned-32]
      [which     unsigned-32]
      [x         integer-32]
      [y         integer-32]
      [direction unsigned-32]))

  ;; https://wiki.libsdl.org/SDL_JoyAxisEvent
  (define-ftype sdl-joy-axis-event
    (struct
      [type      unsigned-32]
      [timestamp unsigned-32]
      [which     integer-32]
      [axis      unsigned-8]
      [padding1  unsigned-8]
      [padding2  unsigned-8]
      [padding3  unsigned-8]
      [value     integer-16]
      [padding4  unsigned-16]))

  ;; https://wiki.libsdl.org/SDL_JoyBallEvent
  (define-ftype sdl-joy-ball-event
    (struct
      [type      unsigned-32]
      [timestamp unsigned-32]
      [which     integer-32]
      [ball      unsigned-8]
      [padding1  unsigned-8]
      [padding2  unsigned-8]
      [padding3  unsigned-8]
      [xrel      integer-16]
      [yrel      integer-16]))

  ;; https://wiki.libsdl.org/SDL_JoyHatEvent
  (define-ftype sdl-joy-hat-event
    (struct
      [type      unsigned-32]
      [timestamp unsigned-32]
      [which     integer-32]
      [hat       unsigned-8]
      [value     unsigned-8]
      [padding1  unsigned-8]
      [padding2  unsigned-8]))

  ;; https://wiki.libsdl.org/SDL_JoyButtonEvent
  (define-ftype sdl-joy-button-event
    (struct
      [type      unsigned-32]
      [timestamp unsigned-32]
      [which     integer-32]
      [button    unsigned-8]
      [state     unsigned-8]
      [padding1  unsigned-8]
      [padding2  unsigned-8]))

  ;; https://wiki.libsdl.org/SDL_JoyDeviceEvent
  (define-ftype sdl-joy-device-event
    (struct
      [type      unsigned-32]
      [timestamp unsigned-32]
      [which     integer-32]))

  ;; https://wiki.libsdl.org/SDL_ControllerAxisEvent
  (define-ftype sdl-controller-axis-event
    (struct
      [type      unsigned-32]
      [timestamp unsigned-32]
      [which     integer-32]
      [axis      unsigned-8]
      [padding1  unsigned-8]
      [padding2  unsigned-8]
      [padding3  unsigned-8]
      [value     unsigned-16]
      [padding4  unsigned-16]))

  ;; https://wiki.libsdl.org/SDL_ControllerButtonEvent
  (define-ftype sdl-controller-button-event
    (struct
      [type      unsigned-32]
      [timestamp unsigned-32]
      [which     integer-32]
      [button    unsigned-8]
      [state     unsigned-8]
      [padding1  unsigned-8]
      [padding2  unsigned-8]))

  ;; https://wiki.libsdl.org/SDL_ControllerDeviceEvent
  (define-ftype sdl-controller-device-event
    (struct
      [type      unsigned-32]
      [timestamp unsigned-32]
      [which     integer-32]))

  ;; https://wiki.libsdl.org/SDL_AudioDeviceEvent
  (define-ftype sdl-audio-device-event
    (struct
      [type      unsigned-32]
      [timestamp unsigned-32]
      [which     unsigned-32]
      [iscapture unsigned-8]
      [padding1  unsigned-8]
      [padding2  unsigned-8]
      [padding3  unsigned-8]))

  ;; https://wiki.libsdl.org/SDL_QuitEvent
  (define-ftype sdl-quit-event
    (struct
      [type      unsigned-32]
      [timestamp unsigned-32]))

  ;; https://wiki.libsdl.org/SDL_UserEvent
  (define-ftype sdl-user-event
    (struct
      [type      unsigned-32]
      [timestamp unsigned-32]
      [windowID  unsigned-32]
      [code      integer-32]
      [data1     void*]
      [data2     void*]))

  ;; https://wiki.libsdl.org/SDL_SysWMEvent
  (define-ftype sdl-sys-wm-event
    (struct
      [type      unsigned-32]
      [timestamp unsigned-32]
      [msg       void*])) ; this shouldn't be void* it should be SDL_SysWMmsg*

  ;; https://wiki.libsdl.org/SDL_TouchFingerEvent
  (define-ftype sdl-touch-finger-event
    (struct
      [type      unsigned-32]
      [timestamp unsigned-32]
      [touchId   integer-64]
      [fingerId  integer-64]
      [x         float]
      [y         float]
      [dx        float]
      [dy        float]
      [pressure  float]))

  ;; https://wiki.libsdl.org/SDL_MultiGestureEvent
  (define-ftype sdl-multi-gesture-event
    (struct
      [type       unsigned-32]
      [timestamp  unsigned-32]
      [touchId    integer-64]
      [dTheta     float]
      [dDist      float]
      [x          float]
      [y          float]
      [numFingers unsigned-16]
      [padding    unsigned-16]))

  ;; https://wiki.libsdl.org/SDL_DollarGestureEvent
  (define-ftype sdl-dollar-gesture-event
    (struct
      [type       unsigned-32]
      [timestamp  unsigned-32]
      [touchId    integer-64]
      [gestureId  integer-64]
      [numFingers unsigned-32]
      [error      float]
      [x          float]
      [y          float]))

  ;; https://wiki.libsdl.org/SDL_DropEvent
  (define-ftype sdl-drop-event
    (struct
      [type       unsigned-32]
      [timestamp  unsigned-32]
      [file       (* char)]
      [windowID   unsigned-32]))

  ;; https://wiki.libsdl.org/SDL_Event
  (define-ftype sdl-event
    (union
      [type unsigned-32]

      [common   sdl-common-event]
      [window   sdl-window-event]
      [key      sdl-keyboard-event]
      [edit     sdl-text-editing-event]
      [text     sdl-text-input-event]
      [motion   sdl-mouse-motion-event]
      [button   sdl-mouse-button-event]
      [wheel    sdl-mouse-wheel-event]
      [jaxis    sdl-joy-axis-event]
      [jball    sdl-joy-ball-event]
      [jhat     sdl-joy-hat-event]
      [jbutton  sdl-joy-button-event]
      [jdevice  sdl-joy-device-event]
      [caxis    sdl-controller-axis-event]
      [cbutton  sdl-controller-button-event]
      [cdevice  sdl-controller-device-event]
      [adevice  sdl-audio-device-event]
      [quit     sdl-quit-event]
      [user     sdl-user-event]
      [syswm    sdl-sys-wm-event]
      [tfinger  sdl-touch-finger-event]
      [mgesture sdl-multi-gesture-event]
      [dgesture sdl-dollar-gesture-event]
      [drop     sdl-drop-event]

      [padding (array 56 unsigned-8)]))



  ;;; Syntactic Sugar

  ;; Error Report Procedure

  (define (sdl-err-rep msg)
    ;; Dump message to stderr
    (display msg             (current-error-port))
    (newline                 (current-error-port))
    (display "SDL: "         (current-error-port))
    (display (sdl-get-error) (current-error-port))
    (newline                 (current-error-port)))


  ;; Ensure our subroutine's aren't NULL.

  (define (sdl-safe-eval var! on-exit)
    (cond
      ((= var! 0) (on-exit)
                  (sdl-quit)
                  (exit))

      (else var!)))


  ;; Tagged pattern matching
  ;; for the event system.
  ;;
  ; ('EMPTY)
  ; ('UNKNOWN)
  ; ('QUIT)
  ; ('KEYDOWN TODO)

  (define (sdl-get-event)
    ;; Get new event
    (if (= (sdl-poll-event! event-mem) 0)

        ;; No more events in pool.
        '(EMPTY)

        ;; Start packaging the data
        (let
          ([SDL-EVENT-E (ftype-ref sdl-event (type) event-mem)])

          (cond
            ; SDL Quit event
            ((= SDL-EVENT-E SDL-QUIT-E) '(QUIT))

            ; SDL Keydown event
            ((= SDL-EVENT-E SDL-KEYDOWN-E)
             (pretty-print
               (ftype-pointer->sexpr (ftype-&ref sdl-event (key) event-mem)))
             (list 'KEYDOWN))

            ; Hmm... the library doesn't know about this event.
            (else '(UNKNOWN)))))))
