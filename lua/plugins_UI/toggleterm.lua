return {
	-- amongst your other plugins
	-- {'akinsho/toggleterm.nvim', version = "*", config = true}
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({
				open_mapping = [[<c-\>]],
				-- 在当前buffer的下方打开新终端
				direction = "horizontal",
				terminal_mappings = true,
			})
		end,
	},
	{
		"itchyny/lightline.vim",
	},
}
