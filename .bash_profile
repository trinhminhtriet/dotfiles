. "$HOME/.atuin/bin/env"
. "$HOME/.cargo/env"

# Load the shell dotfiles, and then some:
for file in ~/.{paths.sh,aliases}; do
  [ -r "$file" ] && source "$file"
done
unset file
