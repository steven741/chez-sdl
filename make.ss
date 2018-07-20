#! /usr/bin/scheme --script

(library-directories "./lib")

(optimize-level 3)
(generate-wpo-files #t)
(generate-inspector-information #f)


(define (simple)
  (compile-library "lib/sdl.sls")
  (compile-program "demo/simple.ss")
  (compile-whole-program "demo/simple.wpo"
			 "demo/simple")
  (make-boot-file "demo/simple.boot" '("petite" "scheme") "demo/simple"))

(define (events)
  (compile-library "lib/sdl.sls")
  (compile-program "demo/events.ss")
  (compile-whole-program "demo/events.wpo"
			 "demo/events")
  (make-boot-file "demo/events.boot" '("petite" "scheme") "demo/events"))

(define (surfaces)
  (compile-library "lib/sdl.sls")
  (compile-program "demo/surfaces.ss")
  (compile-whole-program "demo/surfaces.wpo"
			 "demo/surfaces")
  (make-boot-file "demo/surfaces.boot" '("petite" "scheme") "demo/surfaces"))

(define (renderer)
  (compile-library "lib/sdl.sls")
  (compile-program "demo/renderer.ss")
  (compile-whole-program "demo/renderer.wpo"
			 "demo/renderer")
  (make-boot-file "demo/renderer.boot" '("petite" "scheme") "demo/renderer"))


(define (all)
  (simple)
  (events)
  (surfaces)
  (renderer))


(define (clean)  
  (define (from-demo name)
    (delete-file (string-append "./demo/" name ".so"))
    (delete-file (string-append "./demo/" name ".wpo"))
    (delete-file (string-append "./demo/" name))
    (delete-file (string-append "./demo/" name ".boot")))

  (delete-file "./lib/sdl.so")
  (delete-file "./lib/sdl.wpo")
  (from-demo "simple")
  (from-demo "events")
  (from-demo "surfaces")
  (from-demo "renderer"))


(define (make args)
  (cond
   ((null? args)                     (all))
   ((string=? (car args) "all")      (all))
   ((string=? (car args) "simple")   (simple))
   ((string=? (car args) "events")   (events))
   ((string=? (car args) "surfaces") (surfaces))
   ((string=? (car args) "renderer") (renderer))
   ((string=? (car args) "clean")    (clean))
   (else
    (make (cdr args)))))

(make (command-line))
