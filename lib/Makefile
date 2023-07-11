CC = $(CROSS_COMPILE)gcc
CFLAGS += -Wall -O -fpic
LDFLAGS += -shared

prefix?=/usr/local
libdir?=$(prefix)/lib
includedir?=$(prefix)/include

STATIC_LIB = libmcdi.a
SHARED_LIB = libmcdi.so
HEADERS=mcdi_ept.h mcdi_lib.h mc_driver_pcol.h
REALNAME_LIB=$(SHARED_LIB).$(MAJOR_VERSION).$(MINOR_VERSION).$(PATCH_VERSION)

MAJOR_VERSION=0
MINOR_VERSION=1
PATCH_VERSION=0

LIB_SRC	= $(shell echo *.c)
LIB_OBJ = $(LIB_SRC:.c=.o)

.PHONY: all

all: $(STATIC_LIB) $(SHARED_LIB)

$(STATIC_LIB): $(LIB_OBJ)
	$(CROSS_COMPILE)ar rcs $@ $^

$(SHARED_LIB): $(LIB_OBJ)
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $(REALNAME_LIB)

clean:
	$(RM) *~ *.o libmcdi.*

install:
	mkdir -p $(DESTDIR)/$(libdir)/
	mkdir -p $(DESTDIR)/$(includedir)/
	install -m 644 $(REALNAME_LIB) $(DESTDIR)/$(libdir)/
	install -m 644 $(HEADERS) $(DESTDIR)/$(includedir)/
	ln -r -s -f $(DESTDIR)/$(libdir)/$(REALNAME_LIB) $(DESTDIR)/$(libdir)/$(SHARED_LIB)
