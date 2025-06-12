return {
	{
		"folke/tokyonight.nvim",
		-- "folke/storm.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"Mofiqul/vscode.nvim",
		config = function()
			require("vscode").setup({})
		end,
	},
}
