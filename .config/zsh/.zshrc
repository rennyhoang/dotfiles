### INSTANT PROMPT ###
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

### SETTINGS ###
HISTFILE=~/.config/zsh/history
HISTSIZE=10000
SAVEHIST=10000

unsetopt beep
bindkey -v

autoload -Uz compinit
compinit

zstyle ':completion:*' menu select
zstyle :compinstall filename '/home/renny/.config/zsh/.zshrc'

### ALIASES ###
alias ls='eza -l --icons=always --color=always --no-user -F'
alias la='eza -la --icons=always --color=always --no-user -F'
alias rm='trash-put'
alias n='nvim'

#### PLUGINS ####
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

eval "$(zoxide init --cmd cd zsh)"
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
