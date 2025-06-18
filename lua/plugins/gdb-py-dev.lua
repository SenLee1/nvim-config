return {
	{
		"esensar/nvim-dev-container",
		dependencies = "nvim-treesitter/nvim-treesitter",
	},

	{
		"neovim/pynvim",
	},

	{
		"sakhnik/nvim-gdb",
		-- 如果使用 Lua 配置
		-- require("gdb").setup({
		--     signs = {
		--         current_line = {
		--             texthl = "DebugPC", -- 使用自定义高亮组
		--             linehl = "CursorLine", -- 整行高亮
		--             numhl = "LineNr", -- 行号高亮
		--         },
		--     },
		-- }),
	},
}
