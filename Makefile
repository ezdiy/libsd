SOURCES = $(wildcard *.c) $(wildcard */*.c)
libsd.so: $(SOURCES)
	$(CC) -fvisibility=hidden -DNDEBUG -fno-stack-protector -fomit-frame-pointer -lz -Os -fPIC -shared -flto -s $^ -o $@
clean:
	rm -f *.so
