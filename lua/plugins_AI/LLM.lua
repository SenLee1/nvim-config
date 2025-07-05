return {
	{
		"olimorris/codecompanion.nvim",
		dependencies = {
			{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
			{ "nvim-lua/plenary.nvim" },
			{ "nvim-telescope/telescope.nvim" }, -- 新增 Telescope 依赖（仅用于 /buffer）
		},
		opts = {
			-- 全局显示设置
			display = {
				chat = {
					show_header_separator = false, -- 从新配置继承
				},
			},
			-- 策略配置
			strategies = {
				-- 保持原有适配器（如 copilot）
				chat = {
					adapter = "copilot", -- 您原来的配置
					slash_commands = {
						["buffer"] = {
							description = "Select file with Telescope",
							callback = "strategies.chat.slash_commands.file", -- 使用内置 Telescope 逻辑
							opts = {
								provider = "telescope", -- 强制使用 Telescope
								contains_code = true,
							},
						},
					},
				},
				inline = { adapter = "copilot" },
				agent = { adapter = "copilot" },
			},
			-- 其他原有配置
			opts = {
				language = "Chinese",
				log_level = "DEBUG",
			},
		},
	},
}
