SRC := $(shell find src/ -type f | grep -v "SUMMARY.md" | grep -v "intro.md")

.PHONY: $(SRC)

all: check build

check: $(SRC)

$(SRC):
	grep -q "<sub><sup>Updated: $(shell git log -n 1 --format=%as $@)</sup></sub>" $@

build:
	mdbook build
