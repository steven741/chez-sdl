# Initialization and Shutdown

---
Procedure:
>(**sdl-init** *flags...*) → number

Parameters:
>| *flags*                 |
 | :---------------------- |
 | SDL-INIT-TIMER          |
 | SDL-INIT-AUDIO          |
 | SDL-INIT-VIDEO          |
 | SDL-INIT-JOYSTICK       |
 | SDL-INIT-HAPTIC         |
 | SDL-INIT-GAMECONTROLLER |
 | SDL-INIT-EVENTS         |
 | SDL-INIT-EVERYTHING     |

Returns:
> 0 on proper startup or a negative number on error.

C Function Name:
>`SDL_Init`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_Init)

Examples:
```scheme
(sdl-init
  SDL-INIT-EVERYTHING)
```
```scheme
(sdl-init SDL-INIT-VIDEO
          SDL-INIT-AUDIO
          SDL-INIT-JOYSTICK)
```

---
Procedure:
>(**sdl-init-sub-system** *flags...*) → number

Parameters:
>| *flags*                 |
 | :---------------------- |
 | SDL-INIT-TIMER          |
 | SDL-INIT-AUDIO          |
 | SDL-INIT-VIDEO          |
 | SDL-INIT-JOYSTICK       |
 | SDL-INIT-HAPTIC         |
 | SDL-INIT-GAMECONTROLLER |
 | SDL-INIT-EVENTS         |
 | SDL-INIT-EVERYTHING     |

Returns:
> 0 on proper startup or a negative number on error.

C Function Name:
>`SDL_InitSubSystem`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_InitSubSystem)

Examples:
```scheme
(sdl-init-sub-system
  SDL-INIT-EVERYTHING)
```
```scheme
(sdl-init-sub-system SDL-INIT-VIDEO
                     SDL-INIT-AUDIO
                     SDL-INIT-JOYSTICK)
```

---
Procedure:
>(**sdl-quit**) → void

C Function Name:
>`SDL_Quit`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_Quit)

---
Procedure:
>(**sdl-quit-sub-system** *flags...*) → void

Parameters:
>| *flags*                 |
 | :---------------------- |
 | SDL-INIT-TIMER          |
 | SDL-INIT-AUDIO          |
 | SDL-INIT-VIDEO          |
 | SDL-INIT-JOYSTICK       |
 | SDL-INIT-HAPTIC         |
 | SDL-INIT-GAMECONTROLLER |
 | SDL-INIT-EVENTS         |
 | SDL-INIT-EVERYTHING     |

C Function Name:
>`SDL_QuitSubSystem`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_QuitSubSystem)

Examples:
```scheme
(sdl-quit-sub-system
  SDL-INIT-EVERYTHING)
```
```scheme
(sdl-quit-sub-system SDL-INIT-VIDEO
                     SDL-INIT-AUDIO
                     SDL-INIT-JOYSTICK)
```

---
Procedure:
>(**sdl-set-main-ready!**) → void

C Function Name:
>`SDL_SetMainReady`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_SetMainReady)

---
Procedure:
>(**sdl-init?** *flags...*) → boolean

Parameters:
>| *flags*                 |
 | :---------------------- |
 | SDL-INIT-TIMER          |
 | SDL-INIT-AUDIO          |
 | SDL-INIT-VIDEO          |
 | SDL-INIT-JOYSTICK       |
 | SDL-INIT-HAPTIC         |
 | SDL-INIT-GAMECONTROLLER |
 | SDL-INIT-EVENTS         |
 | SDL-INIT-EVERYTHING     |

Returns:
> `#t` if systems were initialized and `#f` otherwise.

C Function Name:
>`SDL_WasInit`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_WasInit)

Examples:
```scheme
(if (sdl-init? SDL-INIT-EVERYTHING)
    <everything-was-initialized>
    <noting-was-initialized>)
```
```scheme
(if (sdl-init? SDL-INIT-VIDEO
               SDL-INIT-AUDIO
               SDL-INIT-JOYSTICK)
    <systems-were-initialized>
    <systems-were-not-initialized>)
```



# Configuration Variables

---
Procedure:
>(**SDL-CLEAR-HINTS!**) → void

C Function Name:
>`SDL_ClearHints`

---
Procedure:
>(**SDL-GET-HINT-BOOLEAN** *name* *default*) → boolean

Parameters:
>***name*** : A string. Name of the hint.

>***default*** : Return value if hint not found.

Returns:
>The setting of the hint or, ***default*** if the hint isn't applicable to the system.

C Function Name:
>`SDL_GetHintBoolean`

---
Procedure:
>(**SDL-SET-HINT!** *name* *value*) → boolean

Parameters:
>***name*** : A string. Name of the [hint.](data.md#hints)

>***value*** : A string. Value to set hint.

Returns:
>`#t` if hint was set or `#f` otherwise.

C Function Name:
>`SDL_SetHint`

---
Procedure:
>(**SDL-SET-HINT-W/-PRIORITY!** *name* *value* *priority*) → boolean

Parameters:
>***name*** : A string. Name of the [hint.](data.md#hints)

>***value*** : A string. Value to set hint.

>| *priority*        |
 | :---------------- |
 | SDL-HINT-DEFAULT  |
 | SDL-HINT-NORMAL   |
 | SDL-HINT-OVERRIDE |

Returns:
>`#t` if hint was set or `#f` otherwise.

C Function Name:
>`SDL_SetHintWithPriority`



# Error Handling

---
Procedure:
>(**SDL-CLEAR-ERROR!**) → void

C Function Name:
>`SDL_ClearError`

---
Procedure:
>(**SDL-GET-ERROR**) → string

Returns:
>A message describing an error that has occured.

C Function Name:
>`SDL_GetError`



# Querying SDL Version

---
Procedure:
>(**SDL-GET-VERSION**) → list

Returns:
>A list of 3 numbers. (major minor patch)

C Function Name:
>`SDL_GetVersion`

---
Procedure:
>(**SDL-GET-REVISION**) → string

Returns:
>A string identifying the version of SDL being used.

C Function Name:
>`SDL_GetRevision`

---
Procedure:
>(**SDL-GET-REVISION-NUM**) → number

Returns:
>A number identifying the version of SDL being used.

C Function Name:
>`SDL_GetRevisionNumber`
