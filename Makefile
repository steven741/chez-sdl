SCHEME = scheme -q  --libdirs ./lib --optimize-level 3

all:
	echo '(generate-wpo-files #t) (compile-library "lib/sdl.sls")' | $(SCHEME)
	echo '(generate-wpo-files #t) (compile-program "examples/simple-window.ss")' | $(SCHEME)
	echo '(compile-whole-program "examples/simple-window.wpo" "examples/simple-window")' | $(SCHEME)
	echo "(make-boot-file \"examples/simple-window.boot\" '(\"petite\" \"scheme\") \"examples/simple-window\")" | $(SCHEME)

lesson-01:
	echo '(generate-wpo-files #t) (compile-library "lib/sdl.sls")' | $(SCHEME)
	echo '(generate-wpo-files #t) (compile-program "tutorials/lesson-01.ss")' | $(SCHEME)
	echo '(compile-whole-program "tutorials/lesson-01.wpo" "tutorials/lesson-01")' | $(SCHEME)
	echo "(make-boot-file \"tutorials/lesson-01.boot\" '(\"petite\" \"scheme\") \"tutorials/lesson-01\")" | $(SCHEME)

clean:
	$(RM) lib/sdl.so \
              lib/sdl.wpo
	$(RM) examples/simple-window.so   \
              examples/simple-window.wpo  \
              examples/simple-window      \
              examples/simple-window.boot
	$(RM) tutorials/lesson-01.so   \
              tutorials/lesson-01.wpo  \
              tutorials/lesson-01      \
              tutorials/lesson-01.boot
