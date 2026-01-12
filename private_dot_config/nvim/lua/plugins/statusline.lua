return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			icons_enabled = true,
			theme = "auto", -- Automatically adapts to your current colorscheme
			component_separators = { left = "/", right = "/" },
			section_separators = { left = "", right = "" }, -- Rounded separators for a modern look
			disabled_filetypes = {
				statusline = { "alpha", "dashboard", "NvimTree", "neo-tree" }, -- Disable on dashboard/explorers
				winbar = {},
			},
			ignore_focus = {},
			always_divide_middle = true,
			globalstatus = true, -- ONE statusline for all split windows (cleaner look)
			refresh = {
				statusline = 1000,
				tabline = 1000,
				winbar = 1000,
			},
		},
		sections = {
			lualine_a = {
				{ "mode", separator = { left = "", right = "" } },
			},
			lualine_b = {
				"branch",
				"diff",
				{ "diagnostics", sources = { "nvim_diagnostic" } }, -- specific diagnostic source
				{ "filename", path = 1 }, -- 0 = just filename, 1 = relative path, 2 = absolute path
			},
			lualine_c = {
				"filetype",
				{ "fileformat", separator = { right = "" } },
				{ "%=", separator = { left = "", right = "" } },
				"lsp_status",
			},
			lualine_x = {
				"selectioncount",
				"searchcount",
				"encoding",
				"filesize",
			},
			lualine_y = { "progress" },
			lualine_z = {
				{ "location", separator = { left = "", right = "" } },
			},
		},
		inactive_sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = { "filename" },
			lualine_x = { "location" },
			lualine_y = {},
			lualine_z = {},
		},
		tabline = {},
		winbar = {},
		inactive_winbar = {},
		extensions = { "fugitive", "quickfix" }, -- Add other extensions here
	},
}
