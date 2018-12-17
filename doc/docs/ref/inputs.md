# Data

---
| SDL System Cursor           |
| :----------------           |
| SDL-SYSTEM-CURSOR-ARROW     |
| SDL-SYSTEM-CURSOR-IBEAM     |
| SDL-SYSTEM-CURSOR-WAIT      |
| SDL-SYSTEM-CURSOR-CROSSHAIR |
| SDL-SYSTEM-CURSOR-WAITARROW |
| SDL-SYSTEM-CURSOR-SIZENWSE  |
| SDL-SYSTEM-CURSOR-SIZENESW  |
| SDL-SYSTEM-CURSOR-SIZEWE    |
| SDL-SYSTEM-CURSOR-SIZENS    |
| SDL-SYSTEM-CURSOR-SIZEALL   |
| SDL-SYSTEM-CURSOR-NO        |
| SDL-SYSTEM-CURSOR-HAND      |

---
Record:
> (**SDL-FINGER**)

Fields:
> ***id*** : ID of a finger.

> ***x*** : X-pos of a finger input.

> ***y*** : Y-pos of a finger input.

> ***p*** : Pressure of a finger input.



# Keyboard Support

---
Procedure:
>(**SDL-GET-KEY-FROM-NAME** *name*) → number

Parameters:
>***name*** : A string. Name of the [keycode.](data.md#scancodes-keycodes)

Returns:
>A number corresponding to it's keycode.

C Function Name:
>`SDL_GetKeyFromName`

---
Procedure:
>(**SDL-GET-KEY-FROM-SCANCODE** *scancode*) → number

Parameters:
>***scancode*** : Value of a [scancode.](data.md#scancodes-keycodes)

Returns:
>A number corresponding to it's keycode.

C Function Name:
>`SDL_GetKeyFromScancode`

---
Procedure:
>(**SDL-GET-KEY-NAME** *key*) → string

Parameters:
>***key*** : Value of a [keycode.](data.md#scancodes-keycodes)

Returns:
>A string containing the name of a keycode.

C Function Name:
>`SDL_GetKeyName`

---
Procedure:
>(**SDL-GET-KEYBOARD-FOCUS**) → SDL-WINDOW

Returns:
>A window object that has the keyboard focus.

C Function Name:
>`SDL_GetKeyboardFocus`

---
Procedure:
>(**SDL-GET-KEYBOARD-STATE**) → (LAMBDA SCANCODE) → boolean

Returns:
>A procedure that when passed a [scancode](data.md#scancodes-keycodes) returns `#t` if the key is pressed otherwise `#f`.

C Function Name:
>`SDL_GetKeyboardState`

Examples:
```scheme
(define key-state
  (sdl-get-keyboard-state))

(if (key-state SDL-SCANCODE-RETURN)
    (printf "<RETURN> key pressed.~n"))

(if (and (key-state SDL-SCANCODE-RIGHT)
         (key-state SDL-SCANCODE-UP))
    (printf "Right and Up Keys Pressed.~n"))
```

---
Procedure:
>(**SDL-GET-MOD-STATE**) → int

Returns:
>A number that's bits have been set with [key modifer values.](data.md#key-modifers)

C Function Name:
>`SDL_GetModState`

---
Procedure:
>(**SDL-GET-SCANCODE-FROM-KEY** *key*) → int

Parameters:
>***key*** : Value of a [keycode.](data.md#scancodes-keycodes)

Returns:
>Scancode equivalent of keycode.

C Function Name:
>`SDL_GetScancodeFromKey`

---
Procedure:
>(**SDL-GET-SCANCODE-FROM-NAME** *name*) → int

Parameters:
>***name*** : The name of a scancode as a string.

Returns:
>Scancode value of the string.

C Function Name:
>`SDL_GetScancodeFromName`

---
Procedure:
>(**SDL-GET-SCANCODE-NAME** *code*) → string

Parameters:
>***code*** : Value of a [scancode.](data.md#scancodes-keycodes)

Returns:
>String value of a scancode.

C Function Name:
>`SDL_GetScancodeName`

---
Procedure:
>(**SDL-HAS-SCREEN-KEYBOARD-SUPPORT?**) → boolean

Returns:
>`#t` if screen has keyboard support or `#f` otherwise.

C Function Name:
>`SDL_HasScreenKeyboardSupport`

---
Procedure:
>(**SDL-IS-SCREEN-KEYBOARD-SHOWN?** *window*) → boolean

Parameters:
>***window*** : A SDL-WINDOW object.

Returns:
>`#t` if screen's keyboard is shown or `#f` otherwise.

C Function Name:
>`SDL_IsScreenKeyboardShown`

---
Procedure:
>(**SDL-IS-TEXT-INPUT-ACTIVE?**) → boolean

Returns:
>`#t` if the text input is active or `#f` otherwise.

C Function Name:
>`SDL_IsTextInputActive`

---
Procedure:
>(**SDL-SET-MOD-STATE!** *mods*) → '()

Parameters:
> ***mods*** : A series of [key modifer values.](data.md#key-modifers)

C Function Name:
>`SDL_SetModState`

Examples:
```scheme
(sdl-set-mod-state! KMOD-LSHIFT
                    KMOD-CAPS
		    KMOD-RCTRL)
```

---
Procedure:
>(**SDL-SET-TEXT-INPUT-RECT!** *rect*) → '()

Parameters:
> ***rect*** : A SDL-RECT record. (Optional)

C Function Name:
>`SDL_SetTextInputRect`

Notes:
> ***Not implemented.***

---
Procedure:
>(**SDL-START-TEXT-INPUT**) → '()

C Function Name:
>`SDL_StartTextInput`

---
Procedure:
>(**SDL-STOP-TEXT-INPUT**) → '()

C Function Name:
>`SDL_StopTextInput`



# Mouse Support

---
Procedure:
>(**SDL-CAPTURE-MOUSE** *enable*) → boolean

Parameters:
> ***enable*** : Sets whether mouse should be captured or ignored.

Returns:
>`#t` if set succeeded `#f` otherwise.

C Function Name:
>`SDL_CaptureMouse`

---
Procedure:
>(**SDL-CREATE-COLOR-CURSOR** *image* *hot-x* *hot-y*) → SDL-CURSOR

Parameters:
>***image*** : A SDL-SURFACT object.
>***hot-x*** : The x-position of the cursor hot spot.
>***hot-y*** : The y-position of the cursor hot spot.

Returns:
>A SDL-CURSOR object or `'()` on failure.

C Function Name:
>`SDL_CreateColorCursor`

Notes:
> ***Not up to specifications.***

---
Procedure:
>(**SDL-CREATE-SYSTEM-CURSOR** *id*) → SDL-CURSOR

Parameters:
>| *id* : symbol                |
 | :--------------------------- |
 | SDL-SYSTEM-CURSOR-ARROW      |
 | SDL-SYSTEM-CURSOR-IBEAM      |
 | SDL-SYSTEM-CURSOR-WAIT       |
 | SDL-SYSTEM-CURSOR-CROSSHAIR  |
 | SDL-SYSTEM-CURSOR-WAIT-ARROW |
 | SDL-SYSTEM-CURSOR-SIZE-NWSE  |
 | SDL-SYSTEM-CURSOR-SIZE-NESW  |
 | SDL-SYSTEM-CURSOR-SIZE-WE    |
 | SDL-SYSTEM-CURSOR-SIZE-NS    |
 | SDL-SYSTEM-CURSOR-SIZE-ALL   |
 | SDL-SYSTEM-CURSOR-NO         |
 | SDL-SYSTEM-CURSOR-HAND       |

Returns:
>A SDL-CURSOR object or `'()` on failure.

C Function Name:
>`SDL_CreateSystemCursor`

Notes:
> ***Not up to specifications.***

---
Procedure:
>(**SDL-FREE-CURSOR** *cursor*) → '()

Parameters:
>***cursor*** : A SDL-CURSOR object.

C Function Name:
>`SDL_FreeCursor`

Notes:
> ***Not up to specifications.***

---
Procedure:
>(**SDL-GET-CURSOR**) → SDL-CURSOR

Returns:
>The current cursor as a SDL-CURSOR object.

C Function Name:
>`SDL_GetCursor`


---
Procedure:
>(**SDL-FREE-CURSOR** *toggle*) → number

Parameters:
>***toggle*** : A [device query value.](data.md#device-queries)

Returns:
>The value of SDL-ENABLE if cursor is shown, SDL-DISABLE if cursor is hidden, or a negative value indicating error.

C Function Name:
>`SDL_ShowCursor`


   sdl-get-mouse-focus
   sdl-get-default-cursor
   sdl-warp-mouse-in-window
   sdl-warp-mouse-global
   sdl-set-cursor!
   sdl-set-relative-mouse-mode!
   sdl-get-relative-mouse-mode



# Joystick Support

   sdl-joystick-open
   sdl-joystick-close
   sdl-joystick-num
   sdl-joystick-current-power-level
   sdl-joystick-event-state
   sdl-joystick-from-instance-id
   sdl-joystick-get-attached
   sdl-joystick-get-axis
   sdl-joystick-get-ball
   sdl-joystick-get-button
   sdl-joystick-get-hat
   sdl-joystick-instance-id
   sdl-joystick-name
   sdl-joystick-name-for-index
   sdl-joystick-num-axes
   sdl-joystick-num-balls
   sdl-joystick-num-buttons
   sdl-joystick-num-hats



# Game Controller Support

   sdl-game-controller?
   sdl-game-controller-attached?
   sdl-game-controller-button-pressed?
   sdl-game-controller-axis
   sdl-game-controller-open
   sdl-game-controller-close
   sdl-game-controller-name
   sdl-game-controller-name-for-index
   sdl-game-controller-mapping
   sdl-button->string
   sdl-axis->string
   string->sdl-button
   string->sdl-axis
   sdl-controller->sdl-joystick
   sdl-joystick-id->sdl-controller



# Touch

   sdl-get-num-touch-devices
   sdl-get-touch-device
   sdl-get-num-touch-fingers
   sdl-get-touch-finger
