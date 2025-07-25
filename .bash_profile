. "$HOME/.atuin/bin/env"
. "$HOME/.cargo/env"

echo "Loading current ~/.bash_profile"

echo "Loading ~/.profile"
source ~/.profile

# Load the shell dotfiles, and then some:
for file in ~/init/{aliases.zsh,exports.zsh,paths.zsh}; do
  echo "Loading $file"
  [ -r "$file" ] && . "$file"
done
unset file
