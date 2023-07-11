CC = $(CROSS_COMPILE)gcc
CFLAGS += -Wall -O
LDLIBS = -lmcdi
APP_SRCS = mcdi.c
EXTRA_CFLAGS += -I$(realpath ../lib/)
LDFLAGS += -L../lib/

all: mcdi_example_app

mcdi_example_app:
	$(CC) $(CFLAGS) $(APP_SRCS) $(EXTRA_CFLAGS) $(LDFLAGS) $(LDLIBS) -o $@

clean:
	$(RM) *~ *.o mcdi_example_app

.PHONY: clean
