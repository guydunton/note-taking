#!/bin/bash -eu

# Go through all files and find - [ ]
# Remove the filepath
TODOS=$(grep -H -e '^\- \[ \]' -R ~/Documents/notes/notes | \
	sed 's/\- \[ \]//g' | \
	sed "s,$HOME/Documents/notes/notes/,,g")

if [[ -z $TODOS ]]; then
	echo "All caught up"
else
	echo $TODOS
fi

