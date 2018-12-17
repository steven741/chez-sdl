# Chez-SDL
This is an interface to SDL 2 for the Chez Scheme system. (not stable)

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

todo


# TODO
## Video
* Window Getter & Setters
* Renderer
* Pixels
* Surfaces

## Force Feeback
* Haptics

## Audio
* Basic audio system
