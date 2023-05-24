CC ?= gcc
CFLAGS += -Wall -Werror -O2
LDFLAGS ?=

SRC = src/m4fwloader.c
OBJ = $(SRC:.c=.o)

all: prepare m4fwloader

prepare:
	mkdir -p bin

m4fwloader: $(OBJ)
	$(CC) $(CFLAGS) $(LDFLAGS) -o bin/$@ $^

clean:
	$(RM) -f src/*.o
	$(RM) -r bin/