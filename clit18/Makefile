all: clit

CFLAGS=-funsigned-char -Wall -O2 -I ../libtommath-0.30/ -I ../lib -I ../lib/des -I .
clean:
	rm -f *.o clit

clit: clit.o hexdump.o drm5.o explode.o transmute.o display.o utils.o manifest.o ../lib/openclit.a 
	gcc -o clit $^  ../libtommath-0.30/libtommath.a

