if status is-interactive
    starship init fish | source
    eval (zellij setup --generate-auto-start fish | string collect)
end
