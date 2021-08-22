SRC := $(shell find src/ -type f | grep -v "SUMMARY.md" | grep -v "intro.md")

.PHONY: $(SRC)

all: check build

check: $(SRC)

$(SRC):
	grep -q "<sub><sup>Updated: " $@

build:
	mdbook build
