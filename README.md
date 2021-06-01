# Note taking

This repo contains the scripts and commands I use to take notes

## Setup

- Clone the repo locally

```bash
git clone https://github.com/guydunton/note-taking.git
cd note-taking
```

- Make the scripts executable

```bash
chmod +x todos.sh
chmod +x vimNotes.sh
```

- Copy [todos.sh](./todos.sh) & [vimNotes.sh](./vimNotes.sh) into the home directory

```bash
cp todos.sh ~/
cp vimNotes.sh ~/
```

- Copy the following lines into your bash profile

```bash
alias note='$HOME/vimNotes.sh'
alias notes='code $HOME/Documents/notes'
alias todos='$HOME/todos.sh'
```

- Create the directories `~/Documents/notes` & `~/Documents/notes/notes`

```bash
mkdir ~/Documents/notes
mkdir ~/Documents/notes/notes
```
