SRC    := $(shell find src/ -type f | grep -v "SUMMARY.md" | grep -v "intro.md")
UPDATE := <sub><sup>Updated:
CI     := 0

.PHONY: $(SRC)

all: setup

ci:
	make CI=1 build

setup: generate check

generate:
	./build.sh

build: setup
	mdbook build

check: $(SRC)

$(SRC):
	grep -q "$(UPDATE)" $@
ifeq ($(CI),0)
	grep -q "$(UPDATE) $(shell git log -n 1 --format=%as $@)</sup></sub>" $@
endif
