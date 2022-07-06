SRC    := $(shell find src/ -type f | grep -v "SUMMARY.md" | grep -v "intro.md")
UPDATE := <sub><sup>Updated:
DEV    := 1

.PHONY: $(SRC)

all: setup

release:
	make DEV=0 build

setup: generate check

generate:
	./build.sh

build: setup
	mdbook build

check: $(SRC)

$(SRC):
	grep -q "$(UPDATE)" $@
ifeq ($(DEV),1)
	grep -q "$(UPDATE) $(shell git log -n 1 --format=%as $@)</sup></sub>" $@
endif
