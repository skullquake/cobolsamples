COBC=cobc
COBCFLAGS=\
	-free\
	-x\
	-C
BIN=./bin/a.out
SRC=./src/a.cob
SRCC=./src/a.c
$(BIN):$(SRC)
	$(COBC) \
	$(COBCFLAGS) \
	-o $(SRCC) \
	$(SRC)
run:$(BIN)
	$(BIN) 
.phony:clean
clean:
	rm ./bin/* $(SRCC)
