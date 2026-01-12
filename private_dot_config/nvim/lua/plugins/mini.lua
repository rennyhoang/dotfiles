return {
	{
		"nvim-mini/mini.nvim",
		version = false,
		config = function()
			require("mini.animate").setup()
			require("mini.completion").setup()
			require("mini.indentscope").setup()
			require("mini.cursorword").setup()
			require("mini.jump2d").setup()
			require("mini.pairs").setup()
		end,
	},
}
