#! /usr/bin/scheme --script

(library-directories "./lib")

(optimize-level 3)
(generate-wpo-files #t)
(generate-inspector-information #f)

(define (simple-window)
  (compile-library "lib/sdl.sls")
  (compile-program "examples/simple-window.ss")
  (compile-whole-program "examples/simple-window.wpo"
			 "examples/simple-window")
  (make-boot-file "examples/simple-window.boot"
		  '("petite" "scheme")
		  "examples/simple-window"))

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
  (define (from-example name)
    (delete-file (string-append "./examples/" name ".so"))
    (delete-file (string-append "./examples/" name ".wpo"))
    (delete-file (string-append "./examples/" name))
    (delete-file (string-append "./examples/" name ".boot")))
  (define (from-tutorial name)
    (delete-file (string-append "./tutorials/" name ".so"))
    (delete-file (string-append "./tutorials/" name ".wpo"))
    (delete-file (string-append "./tutorials/" name))
    (delete-file (string-append "./tutorials/" name ".boot")))
  (define (from-lib name)
    (delete-file (string-append "./lib/" name ".so"))
    (delete-file (string-append "./lib/" name ".wpo")))

  (from-lib "sdl")
  (from-example "simple-window")
  (from-tutorial "lesson-01"))

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
