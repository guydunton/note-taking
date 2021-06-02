#!/bin/bash -eu

# Go through all files and find - [ ]
# Remove the filepath
TODOS=$(grep -H -e '^\- \[ \]' -R ~/Documents/notes/notes | \
	sed 's/\- \[ \]//g' | \
	sed "s,$HOME/Documents/notes/notes/,,g")

echo "$TODOS"

if [[ -z $TODOS ]]; then
	echo "All caught up"
fi

