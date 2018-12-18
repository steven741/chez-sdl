# Chez-SDL
This is an interface to SDL 2 for the Chez Scheme system. (in development)

```scheme
(import (sdl (2)))

(sdl-init SDL-INIT-VIDEO)

(define win
  (sdl-create-window "chezscheme"
                     SDL-WINDOWPOS-UNDEFINED
                     SDL-WINDOWPOS-UNDEFINED
                     640
		     480
		     SDL-WINDOW-SHOWN))

(define (event-loop)
  (sdl-poll-event)
  (cond
    ((sdl-event-none?) (event-loop))
    ((sdl-event-quit?) '())
    (else
      (event-loop))))

(event-loop)

(sdl-destroy-window win)
(sdl-quit)
```


# Features

* Scheme style interface to SDL 2
* Full marshalling of Scheme data to C data
* Minimal overhead wrapping
* Adequate documentation


# Quickstart Guide

0. Install the [Chez Scheme system](https://github.com/cisco/ChezScheme) and the [SDL2 development library](https://www.libsdl.org/).

1. Install Chez-SDL where the Chez Scheme system can find it.
```bash
export CHEZSCHEMELIBDIRS="/path/to/chez-sdl/lib:$CHEZSCHEMELIBDIRS"
```

2. Start running the demos.
```bash
scheme --script ./events.ss
```

3. Read the [documentation](https://steven741.github.io/chez-sdl/).
