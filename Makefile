CC=gcc
CFLAGS=-Wall -pedantic -static -g
OBJ=dictionary.o strutil.o

libnucommon.a: libnucommon.a($(OBJ))

.c.a:
	$(CC) $(CFLAGS) $(CPPFLAGS) -c $< -o $*.o
	$(AR) r $@ $*.o
	$(RM) $*.o