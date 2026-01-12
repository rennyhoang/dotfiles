local branch = "main"

local function register(ensure_installed)
	for filetype, parser in pairs(ensure_installed) do
		local filetypes = vim.treesitter.language.get_filetypes(parser)
		if not vim.tbl_contains(filetypes, filetype) then
			table.insert(filetypes, filetype)
		end
		vim.treesitter.language.register(parser, filetypes)
	end
end

local function install_and_start()
	vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
		callback = function(event)
			local bufnr = event.buf
			local filetype = vim.api.nvim_get_option_value("filetype", { buf = bufnr })
			if filetype == "" then
				return
			end
			local parser_name = vim.treesitter.language.get_lang(filetype) -- WARNING: might return filetype (not helpful)
			local parser_configs = require("nvim-treesitter.parsers")
			local parser_can_be_used = nil
			if branch == "master" then
				parser_can_be_used = parser_configs.list[parser_name]
			elseif branch == "main" then
				parser_can_be_used = parser_configs[parser_name]
			end
			local parser_installed = pcall(vim.treesitter.get_parser, bufnr, parser_name)
			if not parser_installed then
				if branch == "master" then
					vim.cmd("TSInstallSync " .. parser_name)
				elseif branch == "main" then
					require("nvim-treesitter").install({ parser_name }):wait(30000) -- main branch syntax
				end
				vim.notify("Installed parser: " .. parser_name, vim.log.levels.INFO, { title = "core/treesitter" })
			end

			parser_installed = pcall(vim.treesitter.get_parser, bufnr, parser_name)
			if not parser_installed then
				return
			end

			vim.treesitter.start(bufnr, parser_name)
		end,
	})
end

return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		event = "BufRead",
		branch = branch,
		build = ":TSUpdate",
		opts = {
			ensure_installed = {},
		},
		config = function(_, opts)
			register(opts.ensure_installed)
			install_and_start()
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter-context",
		event = "BufRead",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			event = "BufRead",
		},
		opts = {
			enable = true,
			multiwindow = false,
		},
	},
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		branch = branch,
	},
}
