# Install
BIN = player

# Flags
CFLAGS += -Wall -Wextra -pedantic -Wno-unused-function -Os -s

SRC = gui_main.c
OBJ = $(SRC:.c=.o)

$(BIN):
	@mkdir -p bin
	rm -f bin/$(BIN) $(OBJS)
	$(CC) $(SRC) $(CFLAGS) -o bin/$(BIN) -lX11 -ldl -lpthread -lm
