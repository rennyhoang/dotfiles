### INSTANT PROMPT ###
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

### SETTINGS ###
HISTFILE=~/.config/zsh/history
HISTSIZE=10000
SAVEHIST=10000

unsetopt beep
bindkey -e

zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors “${(s.:.)LS_COLORS}”
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle :compinstall filename '/home/renny/.config/zsh/.zshrc'

autoload -Uz compinit
compinit

### ALIASES ###
alias ls='eza --icons=always --color=always -a'
alias rm='trash-put'
alias df='duf'
alias man='tldr'

#### PLUGINS ####
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

eval "$(zoxide init --cmd cd zsh)"
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
