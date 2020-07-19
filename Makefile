OFILES =  main.o block.o blockchain.o sha256.o
CFLAGS = -Wall -g
INCLUDES = -std=c++11
CC = clang++
.SUFFIXES: .o .cpp
crypto: $(OFILES)
			$(CC) $(CFLAGS) $(OFILES)  -o TestChain
block.o: block.cpp block.h
	$(CC) $(CFLAGS) -c block.cpp
blockchain.o: blockchain.cpp blockchain.h
	$(CC) $(CFLAGS) $(INCLUDES) -c blockchain.cpp
clean:
	-rm -f TestChain *.o *~