#!/bin/bash -eu

fileDate="$(date +%Y-%m-%d)"

# Not sure what this is doing
if [[ "$(date +%a)" != "Mon" ]]; then
	fileDate="$(date -vmon +%Y-%m-%d)"
fi
noteFilename="$HOME/Documents/notes/notes/note-${fileDate}.md"

# If file doesn't exist create it with a header
if [[ ! -f "${noteFilename}" ]]; then
	echo "# Notes for $(date +%Y-%m-%d)" > "${noteFilename}"
fi

# go to end of file
# add subheading
# create 2 empty lines
# put cursor in the middle scroll
# put into insert mode
nvim -c "norm Go" \
     -c "norm Go## $(date '+%a %H:%M:%S')" \
     -c "norm G2o" \
     -c "norm zz" \
     "${noteFilename}"
     #-c "startinsert" "${noteFilename}"

