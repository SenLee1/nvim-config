return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	opts = {
		lsp = {
			override = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
				["cmp.entry.get_documentation"] = true,
			},
		},
		-- 消息显示设置
		messages = {
			enabled = true,
			view = "notify", -- 使用 notify 视图（右上角弹出）
			view_error = "notify", -- 错误同样使用 notify 视图
			timeout = 50, -- 1秒后自动消失（单位毫秒）
		},
		-- 路由规则：控制哪些消息使用 notify 视图
		routes = {
			{
				filter = { event = "msg_show", find = "E492" }, -- 针对此类错误
				view = "notify",
				timeout = 50,
			},
			{
				filter = { event = "msg_show" },
				view = "mini", -- 其他消息不弹出
			},
		},
		presets = {
			bottom_search = true,
			command_palette = false,
			long_message_to_split = true,
			inc_rename = false,
			lsp_doc_border = false,
		},
	},
	config = function(_, opts)
		require("noice").setup(opts)
		-- 可选：调整 notify的显示位置（如果需要）
		require("notify").setup({
			timeout = 50,
			position = "top_right", -- 确保在右上角
			render = "compact", -- 紧凑模式
			cmdline = {
				position = {
					enabled = true,
					-- 忽略以 "te" 开头的命令
					filter = function(cmd)
						return not cmd:match("^te")
					end,
				}, -- 命令行位置
			},
		})
	end,
}
