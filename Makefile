CC?=clang

libandroid-fixshebang.so: libandroid-fixshebang.c
	$(CC) -Wall -shared -D_USE_GNU -fPIC -o libandroid-fixshebang.so libandroid-fixshebang.c

.PHONY: install
install:
	mkdir -p ${PREFIX}/bin/
	cp fixedshell ${PREFIX}/bin/
	chmod 755 ${PREFIX}/bin/fixedshell
	mkdir -p ${PREFIX}/lib/
	cp libandroid-fixshebang.so ${PREFIX}/lib/
	chmod 655 ${PREFIX}/lib/libandroid-fixshebang.so

.PHONY: clean
clean:
	rm libandroid-fixshebang.so

.PHONY: uninstall
uninstall:
	rm ${PREFIX}/bin/fixedshell
	rm ${PREFIX}/lib/libandroid-fixshebang.so

