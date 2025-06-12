return {

	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},
	{
		"Xuyuanp/nerdtree-git-plugin",
	},
	{
		"preservim/nerdcommenter",
	},
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup()
		end,
	},
	{
		"nvim-tree/nvim-web-devicons",
	},
}
