ZDOTDIR=~/.config/zsh
GEM_HOME="$(gem env user_gemhome)"
PATH="$PATH:$GEM_HOME/bin:$HOME/.config/emacs/bin"
EDITOR="nvim"
ELECTRON_OZONE_PLATFORM_HINT="wayland"
LS_COLORS="$(vivid generate catppuccin-mocha)"
