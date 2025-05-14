-- return {
--     "folke/noice.nvim",
--     event = "VeryLazy",
--     dependencies = {
--         "MunifTanjim/nui.nvim",
--         "rcarriga/nvim-notify", -- 可选，用于通知视图
--     },
--     opts = {
--         lsp = {
--             -- 覆盖 markdown 渲染以便 cmp 和其他插件使用 Treesitter
--             override = {
--                 ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
--                 ["vim.lsp.util.stylize_markdown"] = true,
--                 ["cmp.entry.get_documentation"] = true, -- 需要 hrsh7th/nvim-cmp
--             },
--         },
--         -- 预设配置
--         views = {
--             cmdline_popup = { position = { row = "90%", col = "50%" } }, -- 移到屏幕底部
--             popupmenu = { relative = "cursor", position = { row = 1, col = 0 } }, -- 移到光标附近
--         },
--         presets = {
--             bottom_search = true, -- 使用经典的底部命令行搜索
--             command_palette = true, -- 将命令行和弹出菜单放在一起
--             long_message_to_split = true, -- 长消息会发送到分割窗口
--             inc_rename = false, -- 启用 inc-rename.nvim 的输入对话框
--             lsp_doc_border = false, -- 为悬停文档和签名帮助添加边框
--         },
--         -- 可以在这里添加其他 noice.nvim 配置
--     },
--     -- 如果需要进行额外配置而不仅仅是 opts，可以使用 config 函数
--     -- config = function(_, opts)
--     --   require("noice").setup(opts)
--     --   -- 这里可以添加额外的配置
--     -- end,
-- }
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
		})
	end,
}
