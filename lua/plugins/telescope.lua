return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"BurntSushi/ripgrep",
		"sharkdp/fd",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		local action_state = require("telescope.actions.state")
		local builtin = require("telescope.builtin")

		-- 安全打开多选文件（修复版）
		local function safe_open_multi(prompt_bufnr)
			-- 先获取所有选中项
			local picker = action_state.get_current_picker(prompt_bufnr)
			local selections = picker:get_multi_selection()

			-- 如果有多个选中项
			if selections and #selections > 1 then
				-- 先关闭Telescope界面
				actions.close(prompt_bufnr)

				-- 异步打开所有文件
				vim.schedule(function()
					-- 先打开第一个文件
					local first_file = selections[1].filename
					if first_file then
						vim.cmd("edit " .. vim.fn.fnameescape(first_file))
					end

					-- 然后打开剩余文件
					for i = 2, #selections do
						local file = selections[i].filename
						if file then
							vim.cmd("badd " .. vim.fn.fnameescape(file))
						end
					end
				end)
			else
				-- 如果没有多选，执行默认操作
				actions.select_default(prompt_bufnr)
			end
		end

		telescope.setup({
			defaults = {
				mappings = {
					n = {
						["<Enter>"] = safe_open_multi,
						["<Tab>"] = actions.toggle_selection,
						["dd"] = function(prompt_bufnr)
							local picker = action_state.get_current_picker(prompt_bufnr)
							local entry = action_state.get_selected_entry()
							if picker and entry then
								picker:remove_selection(entry)
							end
						end,
					},
					i = {
						["<Tab>"] = actions.toggle_selection,
					},
				},
			},
		})

		-- 快捷键设置
		vim.keymap.set("n", "<leader>ff", builtin.find_files)
		vim.keymap.set("n", "<leader>fg", builtin.live_grep)
	end,
}
-- return {
--     "nvim-telescope/telescope.nvim",
--     dependencies = {
--         "nvim-lua/plenary.nvim", -- 必需依赖
--         "BurntSushi/ripgrep", -- 推荐安装（全文搜索用）
--         "sharkdp/fd", -- 文件查找优化（可选）
--     },
--     config = function()
--         local telescope = require("telescope")
--         local actions = require("telescope.actions")
--         local action_state = require("telescope.actions.state")
--
--         -- Windows 路径分隔符转换函数
--         local function convert_path(path)
--             return path and path:gsub("\\", "/") or path
--         end
--
--         telescope.setup({
--             defaults = {
--                 -- 通用配置
--                 path_display = function(_, path)
--                     return convert_path(path)
--                 end,
--                 mappings = {
--                     n = {
--                         ["j"] = actions.move_selection_next,
--                         ["k"] = actions.move_selection_previous,
--                         ["dd"] = function(prompt_bufnr)
--                             -- 新版 Telescope 删除选中项的正确方式
--                             local current_picker = action_state.get_current_picker(prompt_bufnr)
--                             local entry = action_state.get_selected_entry()
--                             if entry then
--                                 current_picker:delete_selection(function(sel)
--                                     return sel == entry
--                                 end)
--                             end
--                         end,
--                         ["<Tab>"] = actions.toggle_selection,
--                         ["<Enter>"] = function(prompt_bufnr)
--                             actions.select_default(prompt_bufnr)
--                             local picker = action_state.get_current_picker(prompt_bufnr)
--                             local selections = picker:get_multi_selection()
--
--                             if selections and #selections > 0 then
--                                 vim.schedule(function()
--                                     for _, sel in ipairs(selections) do
--                                         if sel.filename then
--                                             vim.cmd("edit " .. vim.fn.fnameescape(sel.filename))
--                                         end
--                                     end
--                                 end)
--                             end
--                         end,
--                     },
--                     i = {
--                         ["<C-j>"] = actions.move_selection_next, -- 向下导航
--                         ["<C-k>"] = actions.move_selection_previous, -- 向上导航
--                         ["<Esc>"] = actions.close, -- <Esc> 退出
--                         ["<Tab>"] = actions.toggle_selection, -- <Tab> 多选（Insert 模式）
--                         ["<C-o>"] = function() -- <C-o> 进入 Normal 模式
--                             vim.api.nvim_feedkeys(
--                                 vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, false, true),
--                                 "n",
--                                 true
--                             )
--                         end,
--                     },
--                 },
--
--                 -- Windows 专用参数
--                 vimgrep_arguments = {
--                     "rg",
--                     "--color=never",
--                     "--no-heading",
--                     "--with-filename",
--                     "--line-number",
--                     "--column",
--                     "--smart-case",
--                     "--hidden",
--                     "--glob=!.git/",
--                     "--path-separator=/",
--                 },
--             },
--
--             pickers = {
--                 -- 文件查找配置
--                 find_files = {
--                     hidden = true,
--                     no_ignore = false,
--                 },
--
--                 -- 全文搜索配置
--                 live_grep = {
--                     only_sort_text = true,
--                     theme = "dropdown",
--                     additional_args = function()
--                         return { "--max-depth=5" } -- 限制搜索深度
--                     end,
--                 },
--
--                 -- 光标单词搜索
--                 grep_string = {
--                     theme = "dropdown",
--                     search = "", -- 默认使用光标单词
--                 },
--             },
--         })
--
--         -- 快捷键绑定
--         local builtin = require("telescope.builtin")
--         vim.keymap.set("n", "<leader>ff", function()
--             builtin.find_files({ cwd = convert_path(vim.fn.expand("%:p:h")) })
--         end, { desc = "[F]ind [F]iles" })
--
--         vim.keymap.set("n", "<leader>fg", function()
--             builtin.live_grep({ cwd = convert_path(vim.fn.getcwd()) })
--         end, { desc = "[F]ind by [G]rep" })
--
--         vim.keymap.set("n", "<leader>fs", function()
--             builtin.grep_string({ search = vim.fn.expand("<cword>") })
--         end, { desc = "[F]ind [S]tring under cursor" })
--     end,
-- }
