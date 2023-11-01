CFLAGS = -static -O3 -Wall -Wextra -pedantic -Wformat-security -std=gnu89

all: hexcompare

hexcompare: main.c gui.c
	$(CC) $(CFLAGS) -o hexcompare main.c gui.c -lncurses -ltinfo

clean:
	rm -f *.o
	rm -f hexcompare
