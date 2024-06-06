all: clit.exe
OBJS=clit.obj explode.obj transmute.obj drm5.obj hexdump.obj display.obj utils.obj manifest.obj
LIBS=advapi32.lib kernel32.lib msvcrt.lib ..\lib\openclit.lib ..\libtommath-0.30\tommath.lib 
CFLAGS=/D_DLL /Fo$*.obj /c /W3 /Ogsi1 /O1 /G6yAFs /DWIN32_LEAN_AND_MEAN  -I..\lib -I..\libtommath-0.30 -I..\lib\des -I. 
AFLAGS=/Fo$*.obj /coff
clean:  
    -del $(OBJS) clit.exe

clit.exe: $(OBJS) ../lib/openclit.lib
    link /map /subsystem:console /NODEFAULTLIB /OUT:$*.exe $** $(LIBS)

