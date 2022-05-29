ifeq (${OS}, Windows_NT)
  REMOVE_FORCE=del
else
	REMOVE_FORCE=rm -f
endif

lib: libmusc.o

clean:
	${REMOVE_FORCE} *.o
	${REMOVE_FORCE} *.h
	${REMOVE_FORCE} *.exe
	${REMOVE_FORCE} libmusc

libmusc.o: 
	go build -o libmusc.o -buildmode=c-shared .