return {
	{
		"dhruvasagar/vim-table-mode",
		"preservim/vim-markdown",
		"img-paste-devs/img-paste.vim",
	},
	{
		"arminveres/md-pdf.nvim",
		branch = "main", -- you can assume that main is somewhat stable until releases will be made
		lazy = true,
		keys = {
			{
				"<leader>,",
				function()
					require("md-pdf").convert_md_to_pdf()
				end,
				desc = "Markdown preview",
			},
		},
		---@type md-pdf.config
		opts = {},
	},
}
