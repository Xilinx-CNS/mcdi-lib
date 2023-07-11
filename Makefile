.PHONY: all lib init example

all: lib init example

lib:
	$(MAKE) -C $@

init:
	$(MAKE) -C $@

example: lib
	$(MAKE) -C $@

.PHONY: clean
clean:
	$(MAKE) -C lib $@
	$(MAKE) -C init $@
	$(MAKE) -C example $@

install:
	$(MAKE) -C lib $@
