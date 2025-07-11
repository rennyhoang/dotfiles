ZDOTDIR=~/.config/zsh
PREFIX="$HOME/opt/cross"
GEM_HOME="$(gem env user_gemhome)"
export GOPATH="$HOME/.local/share/go"
export GOMODCACHE="$HOME/.cache/go/mod"
EDITOR="nvim"
ELECTRON_OZONE_PLATFORM_HINT="wayland"
LS_COLORS="$(vivid generate catppuccin-mocha)"
PREFIX="$HOME/opt/cross"
TARGET=i686-elf
CRYPTOGRAPHY_OPENSSL_NO_LEGACY=1
PATH="$PATH:$GEM_HOME/bin:$HOME/.config/emacs/bin:$HOME/.dotnet/tools:$HOME/.config/composer/vendor/bin:$GOROOT/bin:$GOPATH/bin:$(go env GOPATH)/bin:$HOME/.cabal/bin"
export MANPAGER='nvim +Man!'
