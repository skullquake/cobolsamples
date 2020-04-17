COBC=cobc
COBCFLAGS=
BIN=./bin/a.out
OBJ=./bin/a.so
SRC=./src/a.cob
all:\
	$(OBJ)
$(BIN):$(SRC)
	$(COBC) \
	$(COBCFLAGS) \
	-x \
	-o $(BIN) \
	$(SRC)
$(OBJ):$(SRC)
	$(COBC) \
	$(COBCFLAGS) \
	-m \
	-o $(OBJ) \
	$(SRC)
run:$(BIN)
	$(BIN) 
.phony:clean
clean:
	rm ./bin/*
