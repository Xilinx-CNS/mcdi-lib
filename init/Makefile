CC = $(CROSS_COMPILE)gcc
CFLAGS += -Wall -O
INIT_APP_SRC = mcdi_init_app.c

all: init_app

init_app:
	 $(CC) $(CFLAGS) $(LDFLAGS) $(INIT_APP_SRC) -o $@

clean:
	$(RM) *~ *.o init_app

.PHONY: clean
