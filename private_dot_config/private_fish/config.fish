if status is-interactive
    set -g fish_greeting
    zoxide init fish --cmd cd | source
end

set -Ux PREFIX "$HOME/opt/cross"
set -Ux TARGET "i686-elf"
fish_add_path $PREFIX/bin

function za
    # Get the name of the most recently used session
    set session (zellij list-sessions -n 2>/dev/null | head -n 1 | cut -f 1 -d ' ')

    if test -n "$session"
        zellij attach $session
    else
        # If no sessions exist, start a new one
        zellij
    end
end
