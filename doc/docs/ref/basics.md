# Initialization and Shutdown

---
Procedure:
>(**sdl-init** *flags...*) → number

Parameters:
>***flags*** : One or more [flags](values.md#initialize-flags).

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
>***flags*** : One or more [flags](values.md#initialize-flags).

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
>***flags*** : One or more [flags](values.md#initialize-flags).

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
>***flags*** : One or more [flags](values.md#initialize-flags).

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
>(**sdl-clear-hints!**) → void

C Function Name:
>`SDL_ClearHints`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_ClearHints)

---
Procedure:
>(**sdl-get-hint** *name*) → string

Parameters:
>***name*** : A string. Name of the [hint.](values.md#hints)

Returns:
>Returns the string value of a hint.

C Function Name:
>`SDL_GetHint`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GetHint)

---
Procedure:
>(**sdl-get-hint-boolean** *name* *default*) → boolean

Parameters:
>***name*** : A string. Name of the [hint.](values.md#hints)

>***default*** : A boolean. Return value if hint not found.

Returns:
>The setting of the hint or, ***default*** if the hint isn't applicable to the system.

C Function Name:
>`SDL_GetHintBoolean`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GetHintBoolean)

---
Procedure:
>(**sdl-set-hint!** *name* *value*) → boolean

Parameters:
>***name*** : A string. Name of the [hint.](values.md#hints)

>***value*** : A string. Value to set hint.

Returns:
>`#t` if hint was set or `#f` otherwise.

C Function Name:
>`SDL_SetHint`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_SetHint)

---
Procedure:
>(**sdl-set-hint-w/-priority!** *name* *value* *priority*) → boolean

Parameters:
>***name*** : A string. Name of the [hint.](values.md#hints)

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

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_SetHintWithPriority)

---
Procedure:
>(**sdl-make-hint-callback** *procedure*) → hint-callback

Parameters:
>***procedure*** : A procedure of 3 arguments.

Returns:
>A callback that can be used with `sdl-add-hint-callback!` and `sdl-del-hint-callback!`.

Examples:
```scheme
(define my-hint-callback
    (sdl-make-hint-callback
     (lambda (name old-val new-val)
       (printf "~s~n~d~n~d~n" name old-val new-val))))
```

---
Procedure:
>(**sdl-add-hint-callback!** *name* *callback*) → void

Parameters:
>***name*** : A string. Name of the [hint.](values.md#hints)

>***callback*** : A callback made with `sdl-make-hint-callback`.

C Function Name:
>`SDL_AddHintCallback`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_AddHintCallback)

---
Procedure:
>(**sdl-del-hint-callback!** *name* *callback*) → void

Parameters:
>***name*** : A string. Name of the [hint.](values.md#hints)

>***callback*** : A callback made with `sdl-make-hint-callback`.

C Function Name:
>`SDL_DelHintCallback`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_DelHintCallback)



# Error Handling

---
Procedure:
>(**sdl-clear-error!**) → void

C Function Name:
>`SDL_ClearError`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_ClearError)

---
Procedure:
>(**sdl-get-error**) → string

Returns:
>A message describing an error that has occured.

C Function Name:
>`SDL_GetError`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GetError)

---
Procedure:
>(**sdl-set-error!** *msg*) → number

Parameters:
>***msg*** : A string.

Returns:
>Always returns `-1`.

C Function Name:
>`SDL_SetError`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_SetError)



# Querying SDL Version

---
Procedure:
>(**sdl-get-version**) → list

Returns:
>A list of 3 numbers. (major minor patch)

C Function Name:
>`SDL_GetVersion`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GetVersion)

---
Procedure:
>(**sdl-get-revision**) → string

Returns:
>A string identifying the version of SDL being used.

C Function Name:
>`SDL_GetRevision`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GetRevision)

---
Procedure:
>(**sdl-get-revision-num**) → number

Returns:
>A number identifying the version of SDL being used.

C Function Name:
>`SDL_GetRevisionNumber`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GetRevisionNumber)