return {
	"nvim-treesitter/nvim-treesitter",
	commit = "42fc28ba918343ebfd5565147a42a26580579482",
	branch = "main",
	lazy = false,
	version = false,
	build = ":TSUpdate",
	opts = {
		--添加不同语言
		-- ensure_installed = { "c", "lua", "cpp", "vim", "help", "json", "python", "rust","cmake" ,},
		ensure_installed = { "c", "lua", "bash", "regex", "cpp", "vim", "json", "python", "rust", "cmake" },
		highlight = { enable = true, additional_vim_regex_highlighting = false },
		indent = { enable = true },
		-- 不同括号颜色区分
		rainbow = {
			enable = true,
			extended_mode = true,
			max_file_lines = nil,
		},
	},
	config = function(_, opts) -- 必须添加 config 函数
		require("nvim-treesitter.configs").setup(opts)
	end,
}
