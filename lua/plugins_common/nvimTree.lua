return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" }, -- 可选：文件图标支持
	keys = {
		{ "<C-b>", ":NvimTreeToggle<CR>", desc = "Toggle NvimTree", noremap = true, silent = true },
	},
	config = function()
		local function my_on_attach(bufnr)
			local api = require("nvim-tree.api")

			local function opts(desc)
				return {
					desc = "nvim-tree: " .. desc,
					buffer = bufnr,
					noremap = true,
					silent = true,
					nowait = true,
				}
			end

			-- 保留默认映射
			api.config.mappings.default_on_attach(bufnr)

			-- 自定义映射
			vim.keymap.set("n", "<C-t>", api.tree.change_root_to_parent, opts("Up"))
			vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))

			-- 可选：添加更多实用映射
			vim.keymap.set("n", "o", api.node.open.edit, opts("Open"))
			vim.keymap.set("n", "l", api.node.open.edit, opts("Open")) -- 与默认的展开折叠合并
			vim.keymap.set("n", "h", api.node.navigate.parent_close, opts("Close Directory"))
		end

		require("nvim-tree").setup({
			on_attach = my_on_attach,
			sort_by = "case_sensitive",
			view = {
				width = 30,
				side = "left",
			},
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = false, -- 显示 .gitignore 等点文件
			},
			-- 关键性能优化配置
			git = {
				enable = true, -- 启用 Git 集成（自动忽略 .gitignore 文件）
				ignore = false, -- 隐藏未被 Git 跟踪的文件
				timeout = 5000, -- Git 状态更新延迟（毫秒）
			},
			-- 文件系统性能优化
			filesystem_watchers = {
				enable = true,
				debounce_delay = 50, -- 文件变更检测延迟（毫秒）
			},
			actions = {
				change_dir = {
					global = true, -- 切换目录时同时改变 Vim 的 CWD
				},
			},
		})
	end,
}
