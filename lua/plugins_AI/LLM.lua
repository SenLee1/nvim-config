-- return {
--     "olimorris/codecompanion.nvim",
--     -- dependencies = {},
--     -- config = function()
--     --     local code = require("codecompanion")
--     --
--     --     if not code then
--     --         return
--     --     end
--     --
--     --     code.setup({
--     --         adapters = {
--     --             opts = {
--     --                 -- show_defaults 会导致copilot不能正常工作
--     --                 show_defaults = true,
--     --                 -- log_level = "DEBUG",
--     --             },
--     --
--     --             [> deepseek = function() <]
--     --             [> return require("codecompanion.adapters").extend("deepseek", { <]
--     --             [>     name = "deepseek", <]
--     --             [>     env = { <]
--     --             [>         api_key = "sk-33d4f00347634cdbbc41091433d9d1d1", <]
--     --             [>     }, <]
--     --             [>     schema = { <]
--     --             [>         model = { <]
--     --             [>             default = "deepseek-coder", <]
--     --             [>         }, <]
--     --             [>     }, <]
--     --             [> }) <]
--     --             [> end, <]
--     --             deepseek = function()
--     --                 return require("codecompanion.adapters").extend("deepseek", {
--     --                     name = "deepseek",
--     --                     env = {
--     --                         api_key = "sk-33d4f00347634cdbbc41091433d9d1d1",
--     --                     },
--     --                     schema = {
--     --                         model = {
--     --                             default = "deepseek-coder",
--     --                             -- 添加 opts 配置
--     --                             opts = {
--     --                                 can_reason = true,
--     --                                 max_tokens = 2048,
--     --                                 temperature = 0.7,
--     --                             },
--     --                         },
--     --                         -- 添加响应转换器
--     --                         transform_response = function(response)
--     --                             return {
--     --                                 choices = {
--     --                                     {
--     --                                         message = {
--     --                                             content = response.output and response.output.text or "No response",
--     --                                         },
--     --                                     },
--     --                                 },
--     --                             }
--     --                         end,
--     --                     },
--     --                 })
--     --             end,
--     --             siliconflow_r1 = function()
--     --                 return require("codecompanion.adapters").extend("openai_compatible", {
--     --                     name = "siliconflow_r1",
--     --                     env = {
--     --                         url = "https://api.siliconflow.cn",
--     --                         chat_url = "/v1/chat/completions",
--     --                         api_key = "sk-qclnhwogmupaiednwmbbbwflkctvaikgkiponhntohsnbndt",
--     --                     },
--     --                     schema = {
--     --                         model = {
--     --                             default = "deepseek-ai/DeepSeek-R1",
--     --                             choices = {
--     --                                 ["deepseek-ai/DeepSeek-R1"] = { opts = { can_reason = true } },
--     --                                 "deepseek-ai/DeepSeek-V3",
--     --                             },
--     --                         },
--     --                     },
--     --                 })
--     --             end,
--     --
--     --             siliconflow_v3 = function()
--     --                 return require("codecompanion.adapters").extend("openai_compatible", {
--     --                     name = "siliconflow_v3",
--     --                     env = {
--     --                         url = "https://api.siliconflow.cn/v1/chat/completions",
--     --                         api_key = "sk-qclnhwogmupaiednwmbbbwflkctvaikgkiponhntohsnbndt",
--     --                     },
--     --                     schema = {
--     --                         model = {
--     --                             default = "deepseek-ai/DeepSeek-V3",
--     --                             choices = {
--     --                                 "deepseek-ai/DeepSeek-V3",
--     --                                 ["deepseek-ai/DeepSeek-R1"] = { opts = { can_reason = true } },
--     --                             },
--     --                         },
--     --                     },
--     --                 })
--     --             end,
--     --
--     --             copilot_claude = function()
--     --                 return require("codecompanion.adapters").extend("copilot", {
--     --                     name = "copilot_claude",
--     --                     schema = {
--     --                         model = {
--     --                             default = "claude-3.7-sonnet",
--     --                         },
--     --                     },
--     --                 })
--     --             end,
--     --         },
--     --
--     --         [>  strategies = { <]
--     --         [> chat = { adapter = "siliconflow_r1" }, <]
--     --         [> inline = { adapter = "siliconflow_r1" }, <]
--     --         [> }, <]
--     --         strategies = {
--     --             chat = {
--     --                 adapter = "siliconflow_r1",
--     --                 opts = {
--     --                     -- 聊天模式特定参数
--     --                 },
--     --             },
--     --             inline = {
--     --                 adapter = "deepseek",
--     --                 opts = {
--     --                     -- 必须添加 inline 专用参数
--     --                     auto_submit = true,
--     --                     stop_context_insertion = true,
--     --                     modes = { "i" }, -- 插入模式触发
--     --                 },
--     --             },
--     --         },
--     --
--     --         opts = {
--     --             language = "Chinese",
--     --         },
--     --         -------------------------------------------
--     --         prompt_library = {
--     --             ["DeepSeek Explain"] = require("plugins.prompts.deepseek-explain"),
--     --             ["Nextjs Agant"] = require("plugins.prompts.nextjs-agant"),
--     --         },
--     --     })
--     --
--     --     -- require("plugins.prompts.fidget").init()
--     -- end,
-- }
--
--
return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
		{ "nvim-lua/plenary.nvim" },
		{ "nvim-telescope/telescope.nvim" }, -- 新增 Telescope 依赖（仅用于 /buffer）
		{
			"saghen/blink.cmp",
			lazy = false,
			version = "*",
			opts = {
				keymap = {
					preset = "enter",
					["<S-Tab>"] = { "select_prev", "fallback" },
					["<Tab>"] = { "select_next", "fallback" },
				},
				cmdline = { enabled = false, sources = { "cmdline" } },
				sources = {
					default = { "lsp", "path", "buffer", "codecompanion" },
				},
			},
		},
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
}
