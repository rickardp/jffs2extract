LDLIBS=-lz
CFLAGS=-Iinclude

all: jffs2extract
	
clean:
	rm -f jffs2extract.o minilzo.o jffs2extract

install: jffs2extract
	install -m 0755 jffs2extract /usr/bin

jffs2extract: jffs2extract.o minilzo.o

%.o: %.c
	$(CC) -c $(CFLAGS) $< -o $@

.PHONY: clean install
