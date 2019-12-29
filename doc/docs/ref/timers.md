# Timer Support

---
Procedure:
>(**sdl-delay** *ms*) → void

Parameters:
>***ms*** : A number. The number of milliseconds to delay.

C Function Name:
>`SDL_Delay`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_Delay)

---
Procedure:
>(**sdl-get-ticks**) → number

Returns:
>Number of milliseconds since the SDL library initialized.

C Function Name:
>`SDL_GetTicks`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GetTicks)

---
Procedure:
>(**sdl-get-performance-counter**) → number

Returns:
>The current counter value.

C Function Name:
>`SDL_GetPerformanceCounter`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GetPerformanceCounter)

---
Procedure:
>(**sdl-get-performance-frequency**) → number

Returns:
>A platform-specific count per second.

C Function Name:
>`SDL_GetPerformanceFrequency`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_GetPerformanceFrequency)


---
Procedure:
>(**sdl-add-timer!** *interval* *procedure*) → sdl-timer-id

Parameters:
>***interval*** : A number. Delay in milliseconds.

>***procedure*** : A procedure of 1 argument. Must return a number which is the new delay interval.

Returns:
>A number representing the timer id. If id is 0 an error occured.

C Function Name:
>`SDL_AddTimer`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_AddTimer)

Examples:
```scheme
(define my-timer
  (sdl-add-timer! 500
    (lambda (interval)
      (printf "~d~n" interval)
      interval)))
```

---
Procedure:
>(**sdl-remove-timer!** *timer-id*) → number

Parameters:
>***timer-id*** : A number created by calling `sdl-add-timer!`.

Returns:
>`SDL-TRUE` or `SDL-FALSE`.

C Function Name:
>`SDL_RemoveTimer`

Other Docs:
>[SDL Wiki](https://wiki.libsdl.org/SDL_RemoveTimer)
