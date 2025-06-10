return {
	"p00f/nvim-ts-rainbow",
	config = function()
		require("nvim-treesitter.configs").setup({
			-- treesitter 基本设置
			-- ensure_installed = "maintained", -- 安装所有维护中的解析器
			highlight = {
				enable = true, -- 启用高亮
				additional_vim_regex_highlighting = false,
			},
			-- nvim-ts-rainbow 设置
			rainbow = {
				enable = true,
				extended_mode = true,
				max_file_lines = nil,
				colors = {
					"#FF5F87",
					"#FFAF00",
					"#5FAFFF",
					"#5FAF5F",
					"#AF5FFF",
					"#FF87AF",
					"#FFD700",
				},
			},
		})
	end,
}
