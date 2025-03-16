#!/usr/bin/env bash

# cd "$(dirname "${BASH_SOURCE}")"

git pull origin master

function installDotFiles() {
  rsync --exclude ".git/" \
    --exclude ".DS_Store" \
    --exclude ".tmp/" \
    --exclude "bootstrap.sh" \
    --exclude "README.md" \
    --exclude "LICENSE" \
    -avh --no-perms . ~
  source ~/.bash_profile
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  installDotFiles
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
  echo ""
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    installDotFiles
  fi
fi
unset installDotFiles
