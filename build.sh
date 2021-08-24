#!/bin/bash

_parse() {
    local rel title
    rel=$(echo "$2" | sed 's#^src#.#g')
    title=$(cat $2 | head -n 1)
    _format "$1" "$title" "$rel"
}

_format() {
    echo "$1- [$2]($3)"
}

_summary() {
    local f dir
    echo "# Summary"
    echo
    _format "" "Intro" "./intro.md"
    for f in $(find src/ -mindepth 2 -type f -name "intro.md" | sort); do
        _parse "" "$f"
        dir=$(dirname $f)
        for f in $(find $dir -type f -name "*.md" | grep -v "intro.md" | sort); do
            _parse "    " "$f"
        done
    done
}

_summary > src/SUMMARY.md
