CC=g++
CFLAGS=-DIVERVION="\"${VERSION}\""
ID3 =-I/home/sals/shared/main3/env/tools/include
ID3V2= -L/home/sals/shared/main3/env/tools/lib
CLIBS=list.o list.cpp
LDLIBS=list.o convert.o id3v2.o genre.p
FLAGS=-Wall
FIN=-lid3 -lz

all: id3 deux

id3: list.o list.cpp
	${CC} ${ID3} \ ${CFLAGS}  -c -o ${CLIBS}

deux : id3v2
	${CC} ${ID3V2} ${FLAGS} -o $@ ${LDLIBS} ${FIN} 

clean:
	-rm -f ${LBLIBS} ${CLIBS}

.PHONY: clean
