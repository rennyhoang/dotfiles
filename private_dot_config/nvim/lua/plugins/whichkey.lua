return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		preset = false,
		icons = { mappings = false },
	},
	dependencies = {
		{ "nvim-mini/mini.icons", version = false },
		{ "nvim-tree/nvim-web-devicons", opts = {} },
	},
	keys = {},
	config = function()
		local wk = require("which-key")
		wk.add({
			{ "<leader>f", group = "telescope" },
		})
	end,
}
