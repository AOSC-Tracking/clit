all: clit

CFLAGS=-funsigned-char -Wall -O2 -I /usr/lib/ -I ../lib -I ../lib/des -I .
clean:
	rm -f *.o clit

clit: clit.o hexdump.o drm5.o explode.o transmute.o display.o utils.o manifest.o ../lib/openclit.a 
	gcc -o clit $^  /usr/lib/libtommath.a

