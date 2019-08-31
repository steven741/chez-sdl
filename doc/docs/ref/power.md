# Power Management Status

---
Procedure:
>(**SDL-GET-POWER-INFO**) → list

Returns:
>A list of 3 elements. (seconds percentage state)

C Function Name:
>`SDL_GetPowerInfo`

Notes:
> ***seconds*** : Seconds of battery life left. Will return -1 if we can't determine a value, or we're not running on a battery.

> ***percentage*** : Percentage of battery life left, between 0 and 100. Will return -1 if we can't determine a value, or we're not running on a battery.

>| *state*                   |
 | :------------------------ |
 | SDL-POWERSTATE-UNKNOWN    |
 | SDL-POWERSTATE-ON-BATTERY |
 | SDL-POWERSTATE-NO-BATTERY |
 | SDL-POWERSTATE-CHARGING   |
 | SDL-POWERSTATE-CHARGED    |
