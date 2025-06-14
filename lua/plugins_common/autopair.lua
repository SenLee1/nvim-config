return {
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},

	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup()
		end,
	},

	{
		"nvim-lua/plenary.nvim",
		-- 根据&等对齐
		"godlygeek/tabular",

		"nvim-tree/nvim-web-devicons",
		"preservim/nerdcommenter",
		-- "Xuyuanp/nerdtree-git-plugin",
	},
}
