#/bin/bash -eu

LAST_FILE=$(ls $HOME/Documents/notes/notes | sort | tail -n 1)
nvim -c "norm G" $HOME/Documents/notes/notes/$LAST_FILE 
