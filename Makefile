all:
	for f in $(shell find src/ -type f | grep -v "SUMMARY.md" | grep -v "intro.md"); do \
		echo $$f; \
		grep -q "<sub><sup>Written: " $$f; \
	done
	mdbook build
