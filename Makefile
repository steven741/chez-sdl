all:
	echo '(compile-file "lib/sdl.sls")' | scheme -q --optimize-level 3
	echo '(compile-file "examples/simple-window.ss")' | scheme -q --optimize-level 3 --libdirs ./lib
	echo "(make-boot-file \"examples/simple-window.boot\" \
                              '(\"petite\" \"scheme\")        \
                              \"lib/sdl.so\"                  \
                              \"examples/simple-window.so\")" | scheme -q

clean:
	$(RM) lib/sdl.so
	$(RM) examples/simple-window.so
	$(RM) examples/simple-window.boot
