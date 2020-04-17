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
CC?=gcc
COBC?=cobc
AR?=ar
BUILDDIR=./bin/build
BIN=./bin/a.$(BINEXT)
SRCDIR=src
SRCC:=$(shell find $(SRCDIR) -name '*.c')
SRCCOB:=$(shell find $(SRCDIR) -name '*.cob')
OBJSC:=$(addprefix $(BUILDDIR)/,$(SRCC:%.c=%.o))
OBJSCOB:=$(addprefix $(BUILDDIR)/,$(SRCCOB:%.cob=%.o))
OBJS:=\
	$(OBJSC) \
	$(OBJSCOB)
CFLAGS+=\
	`cob-config --cflags`
LDFLAGS+=\
	`cob-config --libs`
all:\
	$(BIN)
$(BIN):$(OBJS)
	@printf "generating $@...\n"
	@mkdir -p $(@D)
	$(CC)\
		$(OBJS) \
		$(LDFLAGS) \
		-o $(BIN)


$(BUILDDIR)/%.o: %.c
	@printf "generating $@...\n"
	@mkdir -p $(@D)
	$(CC)\
		$(CFLAGS)\
		-c $<\
		$(LDFLAGS)\
		-o $@
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



