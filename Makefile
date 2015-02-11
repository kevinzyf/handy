INIT=$(shell [ -e config.mk ] || ./build_config.sh)
include config.mk

default clean:
	@for d in $(SUBDIRS);\
		do \
			echo "making $@ in $$d"; \
			(cd $$d && make $@ -j2) || exit 1; \
		done
