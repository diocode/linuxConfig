### [Juno] zshrc config

## Zap's plugs  ========================================================================================================
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
 plug "zsh-users/zsh-autosuggestions"
 plug "zap-zsh/zap-prompt"
 plug "zsh-users/zsh-syntax-highlighting"

## Starship init ========================================================================================================
export STARSHIP_CONFIG=~/.dotfiles/starship.toml
eval "$(starship init zsh)"
