COBC=cobc
COBCFLAGS=\
	-free\
	-x
BIN=./bin/a.out
SRC=./src/a.cob
$(BIN):$(SRC)
	$(COBC) \
	$(COBCFLAGS) \
	-o $(BIN) \
	$(SRC)
run:$(BIN)
	$(BIN) 
.phony:clean
clean:
	rm ./bin/*
