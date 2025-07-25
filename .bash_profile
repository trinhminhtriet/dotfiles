. "$HOME/.atuin/bin/env"
. "$HOME/.cargo/env"

# Load the shell dotfiles, and then some:
for file in ~/init/{aliases.zsh,exports.zsh,paths.zsh}; do
  [ -r "$file" ] && . "$file"
done
unset file

source ~/.profile