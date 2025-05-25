return {
  {'akinsho/toggleterm.nvim',
    version = "*", 
    config = function ()
      require("toggleterm").setup({
        shade_terminals = true,
        shading_factor = 100,
        shading_ratio = 3,
        open_mapping = [[<c-\>]],
        direction = 'float',
        float_opts = {
          border = 'curved',
        },
      })
    end}
}
