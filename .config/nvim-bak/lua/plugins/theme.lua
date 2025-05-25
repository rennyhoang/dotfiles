return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            transparent_background = true,
            custom_highlights = function(colors)
                return {
                    IncSearch = { bg = colors.blue },
                }
            end,
            integrations = {
                treesitter = true,
                fidget = true,
            }
        })

        vim.cmd.colorscheme "catppuccin"
    end
}
