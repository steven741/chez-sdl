;;;; -*- mode: Scheme; -*-

;;;;
;;;;
;;;;

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
(define SDLK-A            (char->integer #\a))
(define SDLK-B            (char->integer #\b))
(define SDLK-C            (char->integer #\c))
(define SDLK-D            (char->integer #\d))
(define SDLK-E            (char->integer #\e))
(define SDLK-F            (char->integer #\f))
(define SDLK-G            (char->integer #\g))
(define SDLK-H            (char->integer #\h))
(define SDLK-I            (char->integer #\i))
(define SDLK-J            (char->integer #\j))
(define SDLK-K            (char->integer #\k))
(define SDLK-L            (char->integer #\l))
(define SDLK-M            (char->integer #\m))
(define SDLK-N            (char->integer #\n))
(define SDLK-O            (char->integer #\o))
(define SDLK-P            (char->integer #\p))
(define SDLK-Q            (char->integer #\q))
(define SDLK-R            (char->integer #\r))
(define SDLK-S            (char->integer #\s))
(define SDLK-T            (char->integer #\t))
(define SDLK-U            (char->integer #\u))
(define SDLK-V            (char->integer #\v))
(define SDLK-W            (char->integer #\w))
(define SDLK-X            (char->integer #\x))
(define SDLK-Y            (char->integer #\y))
(define SDLK-Z            (char->integer #\z))

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

(define SDL-USEREVENT-E #x8000)
(define SDL-LASTEVENT-E #xFFFF)


;; Window Events
(define SDL-WINDOW-EVENT-SHOWN        1)
(define SDL-WINDOW-EVENT-HIDDEN       2)
(define SDL-WINDOW-EVENT-EXPOSED      3)
(define SDL-WINDOW-EVENT-MOVED        4)
(define SDL-WINDOW-EVENT-RESIZED      5)
(define SDL-WINDOW-EVENT-SIZE-CHANGED 6)
(define SDL-WINDOW-EVENT-MINIMIZED    7)
(define SDL-WINDOW-EVENT-MAXIMIZED    8)
(define SDL-WINDOW-EVENT-RESTORED     9)
(define SDL-WINDOW-EVENT-ENTER        10)
(define SDL-WINDOW-EVENT-LEAVE        11)
(define SDL-WINDOW-EVENT-FOCUS-GAINED 12)
(define SDL-WINDOW-EVENT-FOCUS-LOST   13)
(define SDL-WINDOW-EVENT-CLOSE        14)
(define SDL-WINDOW-EVENT-TAKE-FOCUS   15)
(define SDL-WINDOW-EVENT-HIT-TEST     16)


(define-ftype sdl-c-keysym
  (struct
   [scancode unsigned]
   [sym      integer-32]
   [mod      unsigned-16]
   [unused   unsigned-32]))

(define-ftype sdl-c-common-event
  (struct
   [type      unsigned-32]
   [timestamp unsigned-32]))

(define-ftype sdl-c-window-event
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

(define-ftype sdl-c-keyboard-event
  (struct
    [type      unsigned-32]
    [timestamp unsigned-32]
    [windowID  unsigned-32]
    [state     unsigned-8]
    [repeat    unsigned-8]
    [keysym    sdl-c-keysym]))

(define-ftype sdl-c-text-editing-event
  (struct
   [type      unsigned-32]
   [timestamp unsigned-32]
   [windowID  unsigned-32]
   [text      (array 32 char)]
   [start     integer-32]
   [length    integer-32]))

(define-ftype sdl-c-text-input-event
  (struct
   [type      unsigned-32]
   [timestamp unsigned-32]
   [windowID  unsigned-32]
   [text      (array 32 char)]))

(define-ftype sdl-c-mouse-motion-event
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

(define-ftype sdl-c-mouse-button-event
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

(define-ftype sdl-c-mouse-wheel-event
  (struct
   [type      unsigned-32]
   [timestamp unsigned-32]
   [windowID  unsigned-32]
   [which     unsigned-32]
   [x         integer-32]
   [y         integer-32]
   [direction unsigned-32]))

(define-ftype sdl-c-joy-axis-event
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

(define-ftype sdl-c-joy-ball-event
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

(define-ftype sdl-c-joy-hat-event
  (struct
   [type      unsigned-32]
   [timestamp unsigned-32]
   [which     integer-32]
   [hat       unsigned-8]
   [value     unsigned-8]
   [padding1  unsigned-8]
   [padding2  unsigned-8]))

(define-ftype sdl-c-joy-button-event
  (struct
   [type      unsigned-32]
   [timestamp unsigned-32]
   [which     integer-32]
   [button    unsigned-8]
   [state     unsigned-8]
   [padding1  unsigned-8]
   [padding2  unsigned-8]))

(define-ftype sdl-c-joy-device-event
  (struct
   [type      unsigned-32]
   [timestamp unsigned-32]
   [which     integer-32]))

(define-ftype sdl-c-controller-axis-event
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

(define-ftype sdl-c-controller-button-event
  (struct
   [type      unsigned-32]
   [timestamp unsigned-32]
   [which     integer-32]
   [button    unsigned-8]
   [state     unsigned-8]
   [padding1  unsigned-8]
   [padding2  unsigned-8]))

(define-ftype sdl-c-controller-device-event
  (struct
   [type      unsigned-32]
   [timestamp unsigned-32]
   [which     integer-32]))

(define-ftype sdl-c-audio-device-event
  (struct
   [type      unsigned-32]
   [timestamp unsigned-32]
   [which     unsigned-32]
   [iscapture unsigned-8]
   [padding1  unsigned-8]
   [padding2  unsigned-8]
   [padding3  unsigned-8]))

(define-ftype sdl-c-quit-event
  (struct
   [type      unsigned-32]
   [timestamp unsigned-32]))

(define-ftype sdl-c-user-event
  (struct
   [type      unsigned-32]
   [timestamp unsigned-32]
   [windowID  unsigned-32]
   [code      integer-32]
   [data1     void*]
   [data2     void*]))

(define-ftype sdl-c-sys-wm-event
  (struct
   [type      unsigned-32]
   [timestamp unsigned-32]
   [msg       void*]))

(define-ftype sdl-c-touch-finger-event
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

(define-ftype sdl-c-multi-gesture-event
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

(define-ftype sdl-c-dollar-gesture-event
  (struct
   [type       unsigned-32]
   [timestamp  unsigned-32]
   [touchId    integer-64]
   [gestureId  integer-64]
   [numFingers unsigned-32]
   [error      float]
   [x          float]
   [y          float]))

(define-ftype sdl-c-drop-event
  (struct
   [type       unsigned-32]
   [timestamp  unsigned-32]
   [file       (* char)]
   [windowID   unsigned-32]))

(define-ftype sdl-c-event
  (union
   [type unsigned-32]
   
   [common   sdl-c-common-event]
   [window   sdl-c-window-event]
   [key      sdl-c-keyboard-event]
   [edit     sdl-c-text-editing-event]
   [text     sdl-c-text-input-event]
   [motion   sdl-c-mouse-motion-event]
   [button   sdl-c-mouse-button-event]
   [wheel    sdl-c-mouse-wheel-event]
   [jaxis    sdl-c-joy-axis-event]
   [jball    sdl-c-joy-ball-event]
   [jhat     sdl-c-joy-hat-event]
   [jbutton  sdl-c-joy-button-event]
   [jdevice  sdl-c-joy-device-event]
   [caxis    sdl-c-controller-axis-event]
   [cbutton  sdl-c-controller-button-event]
   [cdevice  sdl-c-controller-device-event]
   [adevice  sdl-c-audio-device-event]
   [quit     sdl-c-quit-event]
   [user     sdl-c-user-event]
   [syswm    sdl-c-sys-wm-event]
   [tfinger  sdl-c-touch-finger-event]
   [mgesture sdl-c-multi-gesture-event]
   [dgesture sdl-c-dollar-gesture-event]
   [drop     sdl-c-drop-event]
   
   [padding (array 56 unsigned-8)]))


(define (sdl-poll-event)
  (if (= 0 (sdl-poll-event! event-mem))
      (set! _sdl-event-none? #t)
      (set! _sdl-event-none? #f)))

(define _sdl-event-none? #t)
(define (sdl-event-none?)
  _sdl-event-none?)


(define (sdl-event-timestamp)
  (error 'SDL "not implemented") sdl-event-timestamp)


;;; Application Events ;;;

(define (sdl-event-quit?)
  (if (sdl-event-none?)
      #f
      (= SDL-QUIT-E
	 (ftype-ref sdl-c-event (type) event-mem))))

(define (sdl-event-terminating?)
  (if (sdl-event-none?)
      #f
      (= SDL-APP-TERMINATING-E
	 (ftype-ref sdl-c-event (type) event-mem))))

(define (sdl-event-low-memory?)
  (if (sdl-event-none?)
      #f
      (= SDL-APP-LOWMEMORY-E
	 (ftype-ref sdl-c-event (type) event-mem))))

(define (sdl-event-will-enter-background?)
  (if (sdl-event-none?)
      #f
      (= SDL-APP-WILLENTERBACKGROUND-E
	 (ftype-ref sdl-c-event (type) event-mem))))

(define (sdl-event-did-enter-background?)
  (if (sdl-event-none?)
      #f
      (= SDL-APP-DIDENTERBACKGROUND-E
	 (ftype-ref sdl-c-event (type) event-mem))))

(define (sdl-event-will-enter-foreground?)
  (if (sdl-event-none?)
      #f
      (= SDL-APP-WILLENTERFOREGROUND-E
	 (ftype-ref sdl-c-event (type) event-mem))))

(define (sdl-event-did-enter-foreground?)
  (if (sdl-event-none?)
      #f
      (= SDL-APP-DIDENTERFOREGROUND-E
	 (ftype-ref sdl-c-event (type) event-mem))))


;;; Window Events ;;;

(define (sdl-event-window?)
  (if (sdl-event-none?)
      #f
      (= SDL-WINDOWEVENT-E
	 (ftype-ref sdl-c-event (type) event-mem))))

(define (sdl-event-syswm?)
  (if (sdl-event-none?)
      #f
      (= SDL-SYSWMEVENT-E
	 (ftype-ref sdl-c-event (type) event-mem))))

(define (sdl-event-win-shown?)
  (if (sdl-event-window?)
      (= SDL-WINDOW-EVENT-SHOWN
	 (ftype-ref sdl-c-window-event (event)
		    (ftype-&ref sdl-c-event (window) event-mem)))
      #f))

(define (sdl-event-win-hidden?)
  (if (sdl-event-window?)
      (= SDL-WINDOW-EVENT-HIDDEN
	 (ftype-ref sdl-c-window-event (event)
		    (ftype-&ref sdl-c-event (window) event-mem)))
      #f))

(define (sdl-event-win-exposed?)
  (if (sdl-event-window?)
      (= SDL-WINDOW-EVENT-EXPOSED
	 (ftype-ref sdl-c-window-event (event)
		    (ftype-&ref sdl-c-event (window) event-mem)))
      #f))

(define (sdl-event-win-moved?)
  (if (sdl-event-window?)
      (= SDL-WINDOW-EVENT-MOVED
	 (ftype-ref sdl-c-window-event (event)
		    (ftype-&ref sdl-c-event (window) event-mem)))
      #f))

(define (sdl-event-win-resized?)
  (if (sdl-event-window?)
      (= SDL-WINDOW-EVENT-RESIZED
	 (ftype-ref sdl-c-window-event (event)
		    (ftype-&ref sdl-c-event (window) event-mem)))
      #f))

(define (sdl-event-win-size-changed?)
  (if (sdl-event-window?)
      (= SDL-WINDOW-EVENT-SIZE-CHANGED
	 (ftype-ref sdl-c-window-event (event)
		    (ftype-&ref sdl-c-event (window) event-mem)))
      #f))

(define (sdl-event-win-minimized?)
  (if (sdl-event-window?)
      (= SDL-WINDOW-EVENT-MINIMIZED
	 (ftype-ref sdl-c-window-event (event)
		    (ftype-&ref sdl-c-event (window) event-mem)))
      #f))

(define (sdl-event-win-maximized?)
  (if (sdl-event-window?)
      (= SDL-WINDOW-EVENT-MAXIMIZED
	 (ftype-ref sdl-c-window-event (event)
		    (ftype-&ref sdl-c-event (window) event-mem)))
      #f))

(define (sdl-event-win-restored?)
  (if (sdl-event-window?)
      (= SDL-WINDOW-EVENT-RESTORED
	 (ftype-ref sdl-c-window-event (event)
		    (ftype-&ref sdl-c-event (window) event-mem)))
      #f))

(define (sdl-event-win-enter?)
  (if (sdl-event-window?)
      (= SDL-WINDOW-EVENT-ENTER
	 (ftype-ref sdl-c-window-event (event)
		    (ftype-&ref sdl-c-event (window) event-mem)))
      #f))

(define (sdl-event-win-leave?)
  (if (sdl-event-window?)
      (= SDL-WINDOW-EVENT-LEAVE
	 (ftype-ref sdl-c-window-event (event)
		    (ftype-&ref sdl-c-event (window) event-mem)))
      #f))

(define (sdl-event-win-focus-gained?)
  (if (sdl-event-window?)
      (= SDL-WINDOW-EVENT-FOCUS-GAINED
	 (ftype-ref sdl-c-window-event (event)
		    (ftype-&ref sdl-c-event (window) event-mem)))
      #f))

(define (sdl-event-win-focus-lost?)
  (if (sdl-event-window?)
      (= SDL-WINDOW-EVENT-FOCUS-LOST
	 (ftype-ref sdl-c-window-event (event)
		    (ftype-&ref sdl-c-event (window) event-mem)))
      #f))

(define (sdl-event-win-close?)
  (if (sdl-event-window?)
      (= SDL-WINDOW-EVENT-CLOSE
	 (ftype-ref sdl-c-window-event (event)
		    (ftype-&ref sdl-c-event (window) event-mem)))
      #f))

(define (sdl-event-win-take-focus?)
  (if (sdl-event-window?)
      (= SDL-WINDOW-EVENT-TAKE-FOCUS
	 (ftype-ref sdl-c-window-event (event)
		    (ftype-&ref sdl-c-event (window) event-mem)))
      #f))

(define (sdl-event-win-hit-test?)
  (if (sdl-event-window?)
      (= SDL-WINDOW-EVENT-HIT-TEST
	 (ftype-ref sdl-c-window-event (event)
		    (ftype-&ref sdl-c-event (window) event-mem)))
      #f))

(define (sdl-event-win-id)
  (ftype-ref sdl-c-window-event (windowID)
	     (ftype-&ref sdl-c-event (window) event-mem)))
(define (sdl-event-win-x)
  (ftype-ref sdl-c-window-event (data1)
	     (ftype-&ref sdl-c-event (window) event-mem)))
(define (sdl-event-win-y)
  (ftype-ref sdl-c-window-event (data2)
	     (ftype-&ref sdl-c-event (window) event-mem)))
(define (sdl-event-win-w)
  (ftype-ref sdl-c-window-event (data1)
	     (ftype-&ref sdl-c-event (window) event-mem)))
(define (sdl-event-win-h)
  (ftype-ref sdl-c-window-event (data2)
	     (ftype-&ref sdl-c-event (window) event-mem)))


;;; Keyboard Events ;;;

(define (sdl-event-keyup?)
  (if (sdl-event-none?)
      #f
      (= SDL-KEYUP-E
	 (ftype-ref sdl-c-event (type) event-mem))))

(define (sdl-event-keydown?)
  (if (sdl-event-none?)
      #f
      (= SDL-KEYDOWN-E
	 (ftype-ref sdl-c-event (type) event-mem))))

(define (sdl-event-text-editing?)
  (if (sdl-event-none?)
      #f
      (= SDL-TEXTEDITING-E
	 (ftype-ref sdl-c-event (type) event-mem))))

(define (sdl-event-text-input?)
  (if (sdl-event-none?)
      #f
      (= SDL-TEXTINPUT-E
	 (ftype-ref sdl-c-event (type) event-mem))))

(define (sdl-event-key-map-changed?)
  (if (sdl-event-none?)
      #f
      (= SDL-KEYMAPCHANGED-E
	 (ftype-ref sdl-c-event (type) event-mem))))


(define (sdl-event-key-repeat?)
  (if (or (sdl-event-keyup?)
	  (sdl-event-keydown?))
      (not
       (= 0 (ftype-ref sdl-c-keyboard-event (repeat)
		       (ftype-&ref sdl-c-event (key) event-mem))))
      #f))

(define (sdl-event-key-up? key)
  (if (sdl-event-keyup?)
      (= key
	 (ftype-ref sdl-c-keysym (sym)
		    (ftype-&ref sdl-c-keyboard-event (keysym)
				(ftype-&ref sdl-c-event (key) event-mem))))
      #f))

(define (sdl-event-key-down? key)
  (if (sdl-event-keydown?)
      (= key
	 (ftype-ref sdl-c-keysym (sym)
		    (ftype-&ref sdl-c-keyboard-event (keysym)
				(ftype-&ref sdl-c-event (key) event-mem))))
      #f))

(define (sdl-event-code-up? code)
  (if (sdl-event-keyup?)
      (= code
	 (ftype-ref sdl-c-keysym (scancode)
		    (ftype-&ref sdl-c-keyboard-event (keysym)
				(ftype-&ref sdl-c-event (key) event-mem))))
      #f))

(define (sdl-event-code-down? code)
  (if (sdl-event-keydown?)
      (= code
	 (ftype-ref sdl-c-keysym (scancode)
		    (ftype-&ref sdl-c-keyboard-event (keysym)
				(ftype-&ref sdl-c-event (key) event-mem))))
      #f))

(define (sdl-event-mod-up? mod)
  (if (sdl-event-keyup?)
      (= mod
	 (ftype-ref sdl-c-keysym (mod)
		    (ftype-&ref sdl-c-keyboard-event (keysym)
				(ftype-&ref sdl-c-event (key) event-mem))))
      #f))

(define (sdl-event-mod-down? mod)
  (if (sdl-event-keydown?)
      (= mod
	 (ftype-ref sdl-c-keysym (mod)
		    (ftype-&ref sdl-c-keyboard-event (keysym)
				(ftype-&ref sdl-c-event (key) event-mem))))
      #f))


;;; Mouse Events ;;;


;;; Joystick Events ;;;


;;; Game Controller Events ;;;

#|
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
|#
