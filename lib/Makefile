all: openclit.a

CFLAGS=-O3 -Wall -Ides -Isha -Inewlzx -I.
clean:
	rm -f *.o openclit.a des/*.o lzx/*.o sha/*.o

openclit.a: litatom.o litdrm.o litlib.o litembiggen.o littags.o litmetatags.o litmanifest.o litdirectory.o litsections.o litheaders.o litutil.o sha/mssha1.o des/des.o newlzx/lzxglue.o newlzx/lzxd.o
	-rm -f openclit.a
	ar rv openclit.a $^

