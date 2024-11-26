return {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
        require("dashboard").setup({
            disable_move = true,
            config = {
                project = { enable = false },
                week_header = {
                    enable = true,
                },
                shortcut = {
                    { desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
                    { desc = "󰩈 Quit", group = "@property", action = ":q", key = "q" },
                },
                disable_move = true,
            },
            hide = {
                tabline = true,
                statusline = true,
            },
        })
    end,
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
