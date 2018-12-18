# Data

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

---
Procedure:
>(**SDL-GET-MOUSE-FOCUS**) → SDL-WINDOW

Returns:
>The SDL-WINDOW object that has the mouse focus.

C Function Name:
>`SDL_GetMouseFocus`

---
Procedure:
>(**SDL-GET-DEFAULT-CURSOR**) → SDL-CURSOR

Returns:
>A SDL-CURSOR object that is the system's default cursor.

C Function Name:
>`SDL_GetDefaultCursor`

---
Procedure:
>(**SDL-WARP-MOUSE-IN-WINDOW** *window* *x* *y*) → '()

Parameters:
>***window*** : A SDL-WINDOW object.

>***x*** : The x-coordinate within the window.

>***y*** : The y-coordinate within the window.

C Function Name:
>`SDL_WarpMouseInWindow`

---
Procedure:
>(**SDL-WARP-MOUSE-GLOBAL** *x* *y*) → number

Returns:
>0 on success or a negative number on failure.

Parameters:
>***x*** : The x-coordinate.

>***y*** : The y-coordinate.

C Function Name:
>`SDL_WarpMouseInWindow`

---
Procedure:
>(**SDL-SET-CURSOR!** *cursor*) → '()

Parameters:
>***cursor*** : A SDL-CURSOR object.

C Function Name:
>`SDL_SetCursor`

---
Procedure:
>(**SDL-SET-RELATIVE-MOUSE-MODE!** *enable*) → number

Parameters:
>***enable*** : A boolean. Value to set mouse relative mode.

Returns:
>0 on success or a negative number on failure.

C Function Name:
>`SDL_SetRelativeMouseMode`

---
Procedure:
>(**SDL-GET-RELATIVE-MOUSE-MODE!**) → boolean

Returns:
>`#t` if mouse is in relative mode or `#f` otherwise.

C Function Name:
>`SDL_GetRelativeMouseMode`

---
Procedure:
>(**SDL-CREATE-CURSOR**) → SDL-CURSOR

C Function Name:
>`SDL_CreateCursor`

Notes:
> ***Unimplemented***

---
Procedure:
>(**SDL-GET-RELATIVE-MOUSE-STATE**) → number

C Function Name:
>`SDL_GetRelativeMouseState`

Notes:
> ***Unimplemented***

---
Procedure:
>(**SDL-GET-GLOBAL-MOUSE-STATE**) → number

C Function Name:
>`SDL_GetGlobalMouseState`

Notes:
> ***Unimplemented***

---
Procedure:
>(**SDL-GET-MOUSE-STATE**) → number

C Function Name:
>`SDL_GetMouseState`

Notes:
> ***Unimplemented***



# Joystick Support

---
Procedure:
>(**SDL-JOYSTICK-OPEN** *index*) → SDL-JOYSTICK

Parameters:
>***index*** : The index of the joystick.

Returns:
> The SDL-JOYSTICK object or `'()`.

C Function Name:
>`SDL_JoystickOpen`

Notes:
> ***Not up to specifications.***

---
Procedure:
>(**SDL-JOYSTICK-CLOSE** *joystick*) → '()

Parameters:
>***joystick*** : A SDL-JOYSTICK object.

C Function Name:
>`SDL_JoystickClose`

Notes:
> ***Not up to specifications.***

---
Procedure:
>(**SDL-JOYSTICK-NUM**) → number

Returns:
> The amount of joysticks that can be accessed.

C Function Name:
>`SDL_NumJoystick`

---
Procedure:
>(**SDL-JOYSTICK-CURRENT-POWER-LEVEL** *joystick*) → symbol

Parameters:
>***joystick*** : A SDL-JOYSTICK object.

Returns:
>| *levels* : sybmol          |
 | :------------------------- |
 | SDL-JOYSTICK-POWER-UNKNOWN |
 | SDL-JOYSTICK-POWER-EMPTY   |
 | SDL-JOYSTICK-POWER-LOW     |
 | SDL-JOYSTICK-POWER-MEDIUM  |
 | SDL-JOYSTICK-POWER-FULL    |
 | SDL-JOYSTICK-POWER-WIRED   |
 | SDL-JOYSTICK-POWER-MAX     |

C Function Name:
>`SDL_JoystickCurrentPowerLevel`

---
Procedure:
>(**SDL-JOYSTICK-EVENT-STATE** *state*) → number

Parameters:
>***state*** : Can be `SDL-QUERY`, `SDL-IGNORE`, or `SDL-ENABLE`.

Returns:
> `1` if enabled, `0` if disabled, or a negative error code.

C Function Name:
>`SDL_JoystickEventState`

---
Procedure:
>(**SDL-JOYSTICK-FROM-INSTANCE-ID** *instance-id*) → SDL-JOYSTICK

Parameters:
>***instance-id*** : Instance ID from the event system.

Returns:
> The SDL-JOYSTICK object or `'()`.

C Function Name:
>`SDL_JoystickFromInstanceID`

---
Procedure:
>(**SDL-JOYSTICK-IS-ATTACHED?** *joystick*) → boolean

Parameters:
>***joystick*** : A SDL-JOYSTICK object.

Returns:
> `#t` if joystick is attached or `#f` otherwise.

C Function Name:
>`SDL_JoystickGetAttached`

---
Procedure:
>(**SDL-JOYSTICK-GET-AXIS** *joystick* *axis*) → number

Parameters:
>***joystick*** : A SDL-JOYSTICK object.

>***axis*** : A number. The index of the axis.

Returns:
> The value of the axis or 0 on failure.

C Function Name:
>`SDL_JoystickGetAxis`

---
Procedure:
>(**SDL-JOYSTICK-GET-BALL** *joystick* *ball*) → list

Parameters:
>***joystick*** : A SDL-JOYSTICK object.

>***ball*** : A number. The index of the ball.

Returns:
> A list `(dx dy)` or `'()`.

C Function Name:
>`SDL_JoystickGetBall`

---
Procedure:
>(**SDL-JOYSTICK-IS-BUTTON-PRESSED?** *joystick* *button*) → boolean

Parameters:
>***joystick*** : A SDL-JOYSTICK object.

>***button*** : A number. The index of the button.

Returns:
> `#t` if button was pressed or `#f` otherwise.

C Function Name:
>`SDL_JoystickGetButton`

---
Procedure:
>(**SDL-JOYSTICK-GET-HAT** *joystick* *hat*) → symbol

Parameters:
>***joystick*** : A SDL-JOYSTICK object.

>***hat*** : A number. The index of the hat.

Returns:
>| *positions* : symbol |
 | :------------------- |
 | SDL-HAT-CENTERED     |
 | SDL-HAT-UP           |
 | SDL-HAT-RIGHT        |
 | SDL-HAT-DOWN         |
 | SDL-HAT-LEFT         |
 | SDL-HAT-RIGHT-UP     |
 | SDL-HAT-RIGHT-DOWN   |
 | SDL-HAT-LEFT-UP      |
 | SDL-HAT-LEFT-DOWN    |

C Function Name:
>`SDL_JoystickGetHat`

---
Procedure:
>(**SDL-JOYSTICK-INSTANCE-ID** *joystick*) → number

Parameters:
>***joystick*** : A SDL-JOYSTICK object.

Returns:
> Instance ID of the SDL-JOYSTICK object.

C Function Name:
>`SDL_JoystickInstanceID`

---
Procedure:
>(**SDL-JOYSTICK-INSTANCE-ID** *joystick*) → string

Parameters:
>***joystick*** : A SDL-JOYSTICK object.

Returns:
> Name of the SDL-JOYSTICK object.

C Function Name:
>`SDL_JoystickName`

---
Procedure:
>(**SDL-JOYSTICK-NAME-FOR-INDEX** *index*) → string

Parameters:
>***index*** : A number. Index of the joystick.

Returns:
> Name of the joystick at index.

C Function Name:
>`SDL_JoystickNameForIndex`

---
Procedure:
>(**SDL-JOYSTICK-NUM-AXES** *joystick*) → number

Parameters:
>***joystick*** : A SDL-JOYSTICK object.

Returns:
> Number of axes the joystick has.

C Function Name:
>`SDL_JoystickNumAxes`

---
Procedure:
>(**SDL-JOYSTICK-NUM-BALLS** *joystick*) → number

Parameters:
>***joystick*** : A SDL-JOYSTICK object.

Returns:
> Number of balls the joystick has.

C Function Name:
>`SDL_JoystickNumBalls`

---
Procedure:
>(**SDL-JOYSTICK-NUM-BALLS** *joystick*) → number

Parameters:
>***joystick*** : A SDL-JOYSTICK object.

Returns:
> Number of buttons the joystick has.

C Function Name:
>`SDL_JoystickNumButtons`

---
Procedure:
>(**SDL-JOYSTICK-NUM-HATS** *joystick*) → number

Parameters:
>***joystick*** : A SDL-JOYSTICK object.

Returns:
> Number of hats the joystick has.

C Function Name:
>`SDL_JoystickNumHats`

---
Procedure:
>(**SDL-JOYSTICK-GET-DEVICE-GUID**) → SDL-JOYSTICK-GUID

C Function Name:
>`SDL_JoystickGetDeviceGUID`

Notes:
> ***Unimplemented***

---
Procedure:
>(**SDL-JOYSTICK-GET-GUID**) → SDL-JOYSTICK-GUID

C Function Name:
>`SDL_JoystickGetGUID`

Notes:
> ***Unimplemented***

---
Procedure:
>(**SDL-JOYSTICK-GUID-FROM-STRING**) → SDL-JOYSTICK-GUID

C Function Name:
>`SDL_JoystickGetGUIDFromString`

Notes:
> ***Unimplemented***

---
Procedure:
>(**SDL-JOYSTICK-GET-GUID-STRING**) → SDL-JOYSTICK-GUID

C Function Name:
>`SDL_JoystickGetGUIDString`

Notes:
> ***Unimplemented***



# Game Controller Support

---
Procedure:
>(**SDL-GAME-CONTROLLER?** *index*) → boolean

Parameters:
>***index*** : A number. Index of the game controller/joystick.

Returns:
> `#t` if joystick is a game controller or `#f` otherwise.

C Function Name:
>`SDL_IsGameController`

---
Procedure:
>(**SDL-GAME-CONTROLLER-ATTACHED?** *controller*) → boolean

Parameters:
>***controller*** : A SDL-GAME-CONTROLLER object.

Returns:
> `#t` if game controller is attached or `#f` otherwise.

C Function Name:
>`SDL_GameControllerGetAttached`

---
Procedure:
>(**SDL-GAME-CONTROLLER-BUTTON-PRESSED?** *controller* *button*) → boolean

Parameters:
>***controller*** : A SDL-GAME-CONTROLLER object.

>| *button* : symbol                    |
 | :----------------------------------- |
 | SDL-CONTROLLER-BUTTON-A              |
 | SDL-CONTROLLER-BUTTON-B              |
 | SDL-CONTROLLER-BUTTON-X              |
 | SDL-CONTROLLER-BUTTON-Y              |
 | SDL-CONTROLLER-BUTTON-BACK           |
 | SDL-CONTROLLER-BUTTON-GUIDE          |
 | SDL-CONTROLLER-BUTTON-START          |
 | SDL-CONTROLLER-BUTTON-LEFT-STICK     |
 | SDL-CONTROLLER-BUTTON-RIGHT-STICK    |
 | SDL-CONTROLLER-BUTTON-LEFT-SHOULDER  |
 | SDL-CONTROLLER-BUTTON-RIGHT-SHOULDER |
 | SDL-CONTROLLER-BUTTON-UP             |
 | SDL-CONTROLLER-BUTTON-DOWN           |
 | SDL-CONTROLLER-BUTTON-LEFT           |
 | SDL-CONTROLLER-BUTTON-RIGHT          |

Returns:
> `#t` if button is pressed or `#f` otherwise.

C Function Name:
>`SDL_GameControllerGetButton`

---
Procedure:
>(**SDL-GAME-CONTROLLER-AXIS** *controller* *axis*) → number

Parameters:
>***controller*** : A SDL-GAME-CONTROLLER object.

>| *axis* : symbol                   |
 | :-------------------------------- |
 | SDL-CONTROLLER-AXIS-LEFT-X        |
 | SDL-CONTROLLER-AXIS-LEFT-Y        |
 | SDL-CONTROLLER-AXIS-RIGHT-X       |
 | SDL-CONTROLLER-AXIS-RIGHT-Y       |
 | SDL-CONTROLLER-AXIS-TRIGGER-LEFT  |
 | SDL-CONTROLLER-AXIS-TRIGGER-RIGHT |

Returns:
> The value of the axis.

C Function Name:
>`SDL_GameControllerGetAxis`

---
Procedure:
>(**SDL-GAME-CONTROLLER-OPEN** *index*) → SDL-GAME-CONTROLLER

Parameters:
>***index*** : The joystick to open as a game controller.

Returns:
> A SDL-GAME-CONTROLLER object or `'()`.

C Function Name:
>`SDL_GameControllerOpen`

---
Procedure:
>(**SDL-GAME-CONTROLLER-CLOSE** *controller*) → '()

Parameters:
>***controller*** : A SDL-GAME-CONTROLLER object.

C Function Name:
>`SDL_GameControllerClose`

---
Procedure:
>(**SDL-GAME-CONTROLLER-UPDATE**) → '()

C Function Name:
>`SDL_GameControllerUpdate`

---
Procedure:
>(**SDL-GAME-CONTROLLER-NAME** *controller*) → string

Parameters:
>***controller*** : A SDL-GAME-CONTROLLER object.

Returns:
> A string containing the name of the device.

C Function Name:
>`SDL_GameControllerName`

---
Procedure:
>(**SDL-GAME-CONTROLLER-FOR-INDEX** *index*) → string

Parameters:
>***index*** : A number. The index of the game controller.

Returns:
> A string containing the name of the device.

C Function Name:
>`SDL_GameControllerNameForIndex`

---
Procedure:
>(**SDL-GAME-CONTROLLER-MAPPING** *controller*) → string

Parameters:
>***controller*** : A SDL-GAME-CONTROLLER object.

Returns:
> A string containing the button mapping of the device.

C Function Name:
>`SDL_GameControllerMapping`

---
Procedure:
>(**SDL-BUTTON->STRING** *button*) → string

Parameters:
>| *button* : symbol                    |
 | :----------------------------------- |
 | SDL-CONTROLLER-BUTTON-A              |
 | SDL-CONTROLLER-BUTTON-B              |
 | SDL-CONTROLLER-BUTTON-X              |
 | SDL-CONTROLLER-BUTTON-Y              |
 | SDL-CONTROLLER-BUTTON-BACK           |
 | SDL-CONTROLLER-BUTTON-GUIDE          |
 | SDL-CONTROLLER-BUTTON-START          |
 | SDL-CONTROLLER-BUTTON-LEFT-STICK     |
 | SDL-CONTROLLER-BUTTON-RIGHT-STICK    |
 | SDL-CONTROLLER-BUTTON-LEFT-SHOULDER  |
 | SDL-CONTROLLER-BUTTON-RIGHT-SHOULDER |
 | SDL-CONTROLLER-BUTTON-UP             |
 | SDL-CONTROLLER-BUTTON-DOWN           |
 | SDL-CONTROLLER-BUTTON-LEFT           |
 | SDL-CONTROLLER-BUTTON-RIGHT          |

Returns:
> A string containing name of a button.

C Function Name:
>`SDL_GameControllerGetStringForButton`

---
Procedure:
>(**SDL-AXIS->STRING** *axis*) → string

Parameters:
>| *axis* : symbol                   |
 | :-------------------------------- |
 | SDL-CONTROLLER-AXIS-LEFT-X        |
 | SDL-CONTROLLER-AXIS-LEFT-Y        |
 | SDL-CONTROLLER-AXIS-RIGHT-X       |
 | SDL-CONTROLLER-AXIS-RIGHT-Y       |
 | SDL-CONTROLLER-AXIS-TRIGGER-LEFT  |
 | SDL-CONTROLLER-AXIS-TRIGGER-RIGHT |

Returns:
> A string containing the name of the axis.

C Function Name:
>`SDL_GameControllerGetStringForAxis`

---
Procedure:
>(**SDL-GAME-CONTROLLER-MAPPING** *name*) → symbol

Parameters:
>***name*** : A string. Name of the button.

Returns:
>||
 | :----------------------------------- |
 | SDL-CONTROLLER-BUTTON-A              |
 | SDL-CONTROLLER-BUTTON-B              |
 | SDL-CONTROLLER-BUTTON-X              |
 | SDL-CONTROLLER-BUTTON-Y              |
 | SDL-CONTROLLER-BUTTON-BACK           |
 | SDL-CONTROLLER-BUTTON-GUIDE          |
 | SDL-CONTROLLER-BUTTON-START          |
 | SDL-CONTROLLER-BUTTON-LEFT-STICK     |
 | SDL-CONTROLLER-BUTTON-RIGHT-STICK    |
 | SDL-CONTROLLER-BUTTON-LEFT-SHOULDER  |
 | SDL-CONTROLLER-BUTTON-RIGHT-SHOULDER |
 | SDL-CONTROLLER-BUTTON-UP             |
 | SDL-CONTROLLER-BUTTON-DOWN           |
 | SDL-CONTROLLER-BUTTON-LEFT           |
 | SDL-CONTROLLER-BUTTON-RIGHT          |
 | SDL-CONTROLLER-BUTTON-INVALID        |

C Function Name:
>`SDL_GameControllerGetButtonFromString`

---
Procedure:
>(**STRING->SDL-AXIS** *name*) → symbol

Parameters:
>***name*** : A string. Name of the axis.

Returns:
>||
 | :-------------------------------- |
 | SDL-CONTROLLER-AXIS-LEFT-X        |
 | SDL-CONTROLLER-AXIS-LEFT-Y        |
 | SDL-CONTROLLER-AXIS-RIGHT-X       |
 | SDL-CONTROLLER-AXIS-RIGHT-Y       |
 | SDL-CONTROLLER-AXIS-TRIGGER-LEFT  |
 | SDL-CONTROLLER-AXIS-TRIGGER-RIGHT |
 | SDL-CONTROLLER-AXIS-INVALID       |

C Function Name:
>`SDL_GameControllerGetAxisFromString`

---
Procedure:
>(**SDL-CONTROLLER->SDL-JOYSTICK** *controller*) → SDL-JOYSTICK

Parameters:
>***controller*** : A SDL-GAME-CONTROLLER object.

Returns:
> The SDL-JOYSTICK object corresponding to the SDL-GAME-CONTROLLER object.

C Function Name:
>`SDL_GameControllerGetJoystick`

---
Procedure:
>(**SDL-JOYSTICK-ID->SDL-CONTROLLER** *id*) → SDL-GAME-CONTROLLER

Parameters:
>***id*** : Joystick's instance ID.

Returns:
> The SDL-GAME-CONTROLLER object or `'()`.

C Function Name:
>`SDL_GameControllerFromInstanceID`

Notes:
> ***Not up to specifications.***

---
Procedure:
>(**SDL-GAME-CONTROLLER-EVENT-STATE**) → number

C Function Name:
>`SDL_GameControllerEventState`

Notes:
> ***Unimplemented***

---
Procedure:
>(**SDL-GAME-CONTROLLER-GET-BIND-FOR-BUTTON**) → ???

C Function Name:
>`SDL_GameControllerGetBindForButton`

Notes:
> ***Unimplemented***

---
Procedure:
>(**SDL-GAME-CONTROLLER-GET-BIND-FOR-AXIS**) → ???

C Function Name:
>`SDL_GameControllerGetBindForAxis`

Notes:
> ***Unimplemented***

---
Procedure:
>(**SDL-GAME-CONTROLLER-MAPPING-FOR-GUID**) → string

C Function Name:
>`SDL_GameControllerMappingForGUID`

Notes:
> ***Unimplemented***

---
Procedure:
>(**SDL-GAME-CONTROLLER-ADD-MAPPING-FROM-RW**) → number

C Function Name:
>`SDL_GameControllerAddMappingsFromRW`

Notes:
> ***Unimplemented***

---
Procedure:
>(**SDL-GAME-CONTROLLER-ADD-MAPPING-FROM-FILE**) → number

C Function Name:
>`SDL_GameControllerAddMappingsFromFile`

Notes:
> ***Unimplemented***

---
Procedure:
>(**SDL-GAME-CONTROLLER-ADD-MAPPING**) → number

C Function Name:
>`SDL_GameControllerAddMapping`

Notes:
> ***Unimplemented***



# Touch

---
Procedure:
>(**SDL-GET-NUM-TOUCH-DEVICES**) → number

Returns:
> Number of touch devices available.

C Function Name:
>`SDL_GetNumTouchDevices`

---
Procedure:
>(**SDL-GET-TOUCH-DEVICE** *index*) → number

Parameters:
>***index*** : A number. Index of the touch device.

Returns:
> The ID of the touch device.

C Function Name:
>`SDL_GetTouchDevice`

---
Procedure:
>(**SDL-GET-NUM-TOUCH-FINGERS** *touch-id*) → number

Parameters:
>***touch-id*** : The ID of the touch device.

Returns:
> The number of active fingers.

C Function Name:
>`SDL_GetNumTouchFingers`

---
Procedure:
>(**SDL-GET-TOUCH-FINGER** *touch-id* *index*) → SDL-FINGER

Parameters:
>***touch-id*** : The ID of the touch device.

>***index*** : The index of a finger.

Returns:
> A SDL-FINGER record or `'()`.

C Function Name:
>`SDL_GetTouchFinger`

Notes:
> ***Not up to specifications.***
