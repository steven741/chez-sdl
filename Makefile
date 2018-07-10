SCHEME = scheme -q  --libdirs ./lib --optimize-level 3

all:
	echo '(generate-wpo-files #t) (compile-library "lib/sdl.sls")' | $(SCHEME)
	echo '(generate-wpo-files #t) (compile-program "examples/simple-window.ss")' | $(SCHEME)
	echo '(compile-whole-program "examples/simple-window.wpo" "examples/simple-window")' | $(SCHEME)
	echo "(make-boot-file \"examples/simple-window.boot\" '(\"petite\" \"scheme\") \"examples/simple-window\")" | $(SCHEME)

clean:
	$(RM) lib/sdl.so \
              lib/sdl.wpo
	$(RM) examples/simple-window.so   \
              examples/simple-window.wpo  \
              examples/simple-window      \
              examples/simple-window.boot
