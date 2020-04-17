# ------------------------------------------------------------------------------
# The main COBOL executable object needs to be compiled with COBC using the -x
# flag
# In this makefile we differentiate between the COBOL sources at
# src/main.cob and /src/cobol/*.cob, and use seperate COBC invocations
# ------------------------------------------------------------------------------
OS=$(shell $(CXX) -dumpmachine)
SOEXT?=so
BINEXT?=out
ifeq (,$(findstring mingw,$(OS)))
SOEXT?=dll
BINEXT?=exe
endif
ifeq (,$(findstring djgpp,$(OS)))
SOEXT?=dll
BINEXT?=exe
endif
ifeq ($(PREFIX),)
PREFIX := /usr/local
endif
CC=gcc
COBC=cobc
AR=ar
BUILDDIR=./bin/build
BIN=./bin/a.$(BINEXT)
SRCDIR=src
SRCC:=$(shell find $(SRCDIR) -name '*.c')
#differentiate between main cob and other
SRCCOBMAIN:=./src/main.cob
OBJCOBMAIN:=$(BUILDDIR)/main.o
#differentiate between main cob and other
SRCCOB:=$(shell find $(SRCDIR)/cobol -name '*.cob')
OBJSC:=$(addprefix $(BUILDDIR)/,$(SRCC:%.c=%.o))
OBJSCOB:=$(addprefix $(BUILDDIR)/,$(SRCCOB:%.cob=%.o))
OBJS:=\
	$(OBJSCOB) \
	$(OBJSC)
CFLAGS+=\
	-I./src 
#	`cob-config --cflags`
LDFLAGS+=
#	`cob-config --libs`
all:\
	$(BIN)
$(BIN):$(OBJS) $(OBJCOBMAIN)
	@printf "generating $@...\n"
	@mkdir -p $(@D)
	$(COBC)\
		-fixed \
		-x \
		-o \
		$(BIN) \
		$(OBJCOBMAIN) \
		$(OBJS) 
$(BUILDDIR)/%.o: %.c
	@printf "generating $@...\n"
	@mkdir -p $(@D)
	$(CC)\
		$(CFLAGS)\
		$< \
		-c \
		-o $@
#MAIN COB
$(OBJCOBMAIN):$(SRCCOBMAIN)
	@printf "generating $@...\n"
	@mkdir -p $(@D)
	$(COBC)\
		$< \
		-x \
		-c \
		-static \
		-o $@
#OTHER COB
$(BUILDDIR)/%.o: %.cob
	@printf "generating $@...\n"
	@mkdir -p $(@D)
	$(COBC)\
		$< \
		-c \
		-static \
		-o $@
run:$(BIN)
	$(BIN)
.phony:\
	run\
	clean\
	lsvar
clean:
	@rm -r ./bin



