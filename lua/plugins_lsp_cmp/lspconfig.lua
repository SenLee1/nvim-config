return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({})
		end,
	},
	{
		"onsails/lspkind.nvim",
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			-- require("lspconfig").texlab.setup({})
			lspconfig.eslint.setup({
				-- 配置项可以根据需要添加
			})
			lspconfig.pyright.setup({})
			lspconfig.jsonls.setup({})
			lspconfig.gopls.setup({})
			lspconfig.html.setup({})
			lspconfig.markdown_oxide.setup({})
			-- lspconfig.java_language_server.setup({})
			lspconfig.jdtls.setup({
				filetypes = { "java" },
				root_dir = lspconfig.util.root_pattern(".git", "build.gradle", "pom.xml"),
			})
			lspconfig.cssls.setup({})
			lspconfig.clangd.setup({})
			lspconfig.lua_ls.setup({})

			-- latex
			lspconfig.texlab.setup({
				settings = {
					texlab = {
						autoClosing = true,
						build = {
							executable = "latexmk",
							args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
							onSave = true,
							forwardSearchAfter = true,
						},
						forwardSearch = {
							executable = "SumatraPDF",
							args = {
								"-reuse-instance",
								"%p",
								"-forward-search",
								"%f",
								"%l",
							},
						},
						chktex = {
							onOpenAndSave = true,
							onEdit = false,
						},
					},
				},
			})
			-- 在 lazy.nvim 的配置文件中，配置键盘映射
			-- vim.api.nvim_set_keymap("n", "<leader>f", "<cmd>Format<CR>", { noremap = true, silent = true })
			require("lspkind").init({
				-- DEPRECATED (use mode instead): enables text annotations
				--
				-- default: true
				-- with_text = true,

				-- defines how annotations are shown
				-- default: symbol
				-- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
				mode = "symbol_text",

				-- default symbol map
				-- can be either 'default' (requires nerd-fonts font) or
				-- 'codicons' for codicon preset (requires vscode-codicons font)
				--
				-- default: 'default'
				preset = "codicons",

				-- override preset symbols
				--
				-- default: {}
				symbol_map = {
					Text = "󰉿",
					Method = "󰆧",
					Function = "󰊕",
					Constructor = "",
					Field = "󰜢",
					Variable = "󰀫",
					Class = "󰠱",
					Interface = "",
					Module = "",
					Property = "󰜢",
					Unit = "󰑭",
					Value = "󰎠",
					Enum = "",
					Keyword = "󰌋",
					Snippet = "",
					Color = "󰏘",
					File = "󰈙",
					Reference = "󰈇",
					Folder = "󰉋",
					EnumMember = "",
					Constant = "󰏿",
					Struct = "󰙅",
					Event = "",
					Operator = "󰆕",
					TypeParameter = "",
				},
			})
		end,
	},
}
