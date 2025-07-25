[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh
eval "$(atuin init bash)"
eval "$(starship init bash)"

. "$HOME/.atuin/bin/env"
. "$HOME/.cargo/env"