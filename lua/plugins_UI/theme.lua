return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			-- Add type annotations for better completion and error checking
			---@class ColorScheme
			---@field orange string
			---@field LineNr table

			require("tokyonight").setup({
				style = "storm",
				light_style = "day",
				transparent = true,
				terminal_colors = true,
				styles = {
					comments = { italic = true },
					keywords = { italic = true },
					functions = {},
					variables = {},
					sidebars = "dark",
					floats = "dark",
				},
				day_brightness = 0.3,
				dim_inactive = false,
				lualine_bold = false,

				on_colors = function(colors) end,

				on_highlights = function(highlights, colors)
					highlights.LineNr.fg = colors.orange
					highlights.LineNrAbove.fg = colors.orange
					highlights.LineNrBelow.fg = colors.orange
					highlights.SpecialKey.fg = colors.blue
					highlights.Visual.bg = colors.bg_search
					highlights.SignColumn.fg = colors.yellow
				end,

				cache = true,
				plugins = {
					all = package.loaded.lazy == nil,
					auto = true,
				},
			})
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		---@module "ibl"
		---@type ibl.config
		opts = {},
	},
	{
		"Mofiqul/vscode.nvim",
		config = function()
			require("vscode").setup({})
		end,
	},
}
