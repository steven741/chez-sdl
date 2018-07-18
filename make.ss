#! /usr/bin/scheme --script

(library-directories "./lib")

(optimize-level 3)
(generate-wpo-files #t)
(generate-inspector-information #f)

(define (simple-window)
  (compile-library "lib/sdl.sls")
  (compile-program "demos/simple-window.ss")
  (compile-whole-program "demos/simple-window.wpo"
			 "demos/simple-window")
  (make-boot-file "demos/simple-window.boot"
		  '("petite" "scheme")
		  "demos/simple-window"))

(define (lesson-01)
  (compile-library "lib/sdl.sls")
  (compile-program "tutorials/lesson-01.ss")
  (compile-whole-program "tutorials/lesson-01.wpo"
			 "tutorials/lesson-01")
  (make-boot-file "tutorials/lesson-01.boot"
		  '("petite" "scheme")
		  "tutorials/lesson-01"))

(define (all)
  (simple-window)
  (lesson-01))

(define (clean)
  (define (from-demos name)
    (delete-file (string-append "./demos/" name ".so"))
    (delete-file (string-append "./demos/" name ".wpo"))
    (delete-file (string-append "./demos/" name))
    (delete-file (string-append "./demos/" name ".boot")))
  (define (from-tutorials name)
    (delete-file (string-append "./tutorials/" name ".so"))
    (delete-file (string-append "./tutorials/" name ".wpo"))
    (delete-file (string-append "./tutorials/" name))
    (delete-file (string-append "./tutorials/" name ".boot")))
  (define (from-lib name)
    (delete-file (string-append "./lib/" name ".so"))
    (delete-file (string-append "./lib/" name ".wpo")))

  (from-lib "sdl")
  (from-demos "simple-window")
  (from-tutorials "lesson-01"))

(define (main args)
  (cond
   ((null? args)                          (all))
   ((string=? (car args) "all")           (all))
   ((string=? (car args) "simple-window") (simple-window))
   ((string=? (car args) "lesson-01")     (lesson-01))
   ((string=? (car args) "clean")         (clean))
   (else
    (main (cdr args)))))

(main (cdr (command-line)))
