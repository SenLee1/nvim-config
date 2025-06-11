-- lazy.nvim 配置示例
return {
	-- 格式化工具
	{
		"stevearc/conform.nvim",
		opts = { -- 这里是正确的 opts 位置
			format_on_save = {
				enabled = false,
				lsp_fallback = true, -- conform 失败时自动调用 LSP
			},
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				lua = { "stylua" },
				-- 其他文件类型...
			},
		},
		config = function(_, opts)
			require("conform").setup(opts)
			-- 手动格式化快捷键
			vim.keymap.set("n", "<leader>f", function()
				require("conform").format({
					lsp_fallback = true,
					async = false,
					timeout_ms = 100,
				})
			end, { desc = "Format file" })
		end,
	},

	-- 诊断工具
	{
		"mfussenegger/nvim-lint",
		opts = {
			linters_by_ft = {
				javascript = { "eslint" },
				typescript = { "eslint" },
				python = { "pylint" },
				-- 其他文件类型...
			},
		},
		config = function(_, opts) -- 添加 config 函数
			require("lint").linters_by_ft = opts.linters_by_ft
		end,
	},
}
