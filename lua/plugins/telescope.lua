return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim", -- 必需依赖
		"BurntSushi/ripgrep", -- 推荐安装（全文搜索用）
		"sharkdp/fd", -- 文件查找优化（可选）
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		-- Windows 路径分隔符转换函数
		local function convert_path(path)
			return path and path:gsub("\\", "/") or path
		end

		telescope.setup({
			defaults = {
				-- 通用配置
				path_display = function(_, path)
					return convert_path(path)
				end,
				mappings = {
					i = {
						["<ESC>"] = actions.close, -- 按ESC退出
						["<C-j>"] = actions.move_selection_next, -- 向下导航
						["<C-k>"] = actions.move_selection_previous, -- 向上导航
					},
				},

				-- Windows 专用参数
				vimgrep_arguments = {
					"rg",
					"--color=never",
					"--no-heading",
					"--with-filename",
					"--line-number",
					"--column",
					"--smart-case",
					"--hidden",
					"--glob=!.git/",
					"--path-separator=/",
				},
			},

			pickers = {
				-- 文件查找配置
				find_files = {
					hidden = true,
					no_ignore = false,
				},

				-- 全文搜索配置
				live_grep = {
					only_sort_text = true,
					theme = "dropdown",
					additional_args = function()
						return { "--max-depth=5" } -- 限制搜索深度
					end,
				},

				-- 光标单词搜索
				grep_string = {
					theme = "dropdown",
					search = "", -- 默认使用光标单词
				},
			},
		})

		-- 快捷键绑定
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", function()
			builtin.find_files({ cwd = convert_path(vim.fn.expand("%:p:h")) })
		end, { desc = "[F]ind [F]iles" })

		vim.keymap.set("n", "<leader>fg", function()
			builtin.live_grep({ cwd = convert_path(vim.fn.getcwd()) })
		end, { desc = "[F]ind by [G]rep" })

		vim.keymap.set("n", "<leader>fs", function()
			builtin.grep_string({ search = vim.fn.expand("<cword>") })
		end, { desc = "[F]ind [S]tring under cursor" })
	end,
}
