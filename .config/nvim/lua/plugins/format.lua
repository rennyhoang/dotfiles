return {
  "stevearc/conform.nvim",
  opts = {},
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        python = { "black" },
        javascript = { "prettier" },
        cpp = { "clang-format" },
        go = { "gofumpt" },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
      },
    }
    )
  end,
}
