return {
	"nvim-treesitter/nvim-treesitter",
	run = ":TSUpdate",
	opts = {
		--添加不同语言
		ensure_installed = { "c", "lua", "cpp", "vim", "help", "json", "python", "rust" },
		highlight = { enable = true, additional_vim_regex_highlighting = false },
		indent = { enable = true },
		-- 不同括号颜色区分
		rainbow = {
			enable = true,
			extended_mode = true,
			max_file_lines = nil,
		},
	},
}
