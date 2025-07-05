return {
	{
		"brianhuster/live-preview.nvim",
		dependencies = {
			-- You can choose one of the following pickers
			"nvim-telescope/telescope.nvim",
			"ibhagwan/fzf-lua",
			"echasnovski/mini.pick",
		},
	},

	-- {
	--     "iamcco/markdown-preview.nvim",
	--     cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	--     ft = { "markdown" },
	--     build = function()
	--         vim.fn["mkdp#util#install"]()
	--     end,
	--
	-- },
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && yarn install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},
	-- {
	--     "iamcco/markdown-preview.nvim",
	--     cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	--     ft = { "markdown" },
	--     build = function()
	--         vim.fn["mkdp#util#install"]()
	--     end,
	--     config = function()
	--         -- vim.g.mkdp_browser = "chrome"
	--
	--         -- 自定义函数来启动Markdown预览并分屏
	--         function MarkdownPreviewWithSplit()
	--             -- 获取当前窗口号
	--             local current_win = vim.fn.win_getid()
	--
	--             -- 移动当前窗口到右侧
	--             vim.cmd("wincmd r")
	--             vim.cmd("vertical resize 80") -- 调整终端窗口宽度
	--
	--             -- 打开Markdown预览
	--             vim.cmd("MarkdownPreviewToggle")
	--             vim.defer_fn(function()
	--                 -- 将Markdown预览窗口移动到左侧
	--                 vim.cmd("wincmd l") -- 移动到左侧窗口
	--                 vim.cmd("vertical resize 80") -- 调整Markdown预览窗口宽度
	--             end, 100)
	--         end
	--
	--         -- 设置映射来触发Markdown预览并分屏
	--         vim.api.nvim_set_keymap(
	--             "n",
	--             "<leader>mp",
	--             "<cmd>lua MarkdownPreviewWithSplit()<CR>",
	--             { noremap = true, silent = true }
	--         )
	--     end,
	-- },
}
-- {
--     "iamcco/markdown-preview.nvim",
--     cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
--     ft = { "markdown" },
--     build = function()
--         vim.fn["mkdp#util#install"]()
--     end,
--     config = function()
--         vim.g.mkdp_browser = "chrome"
--
--         -- 自定义函数来启动Markdown预览并分屏
--         function MarkdownPreviewWithSplit()
--             -- 获取当前窗口号
--             local current_win = vim.fn.win_getid()
--
--             -- 移动当前窗口到右侧
--             vim.cmd("wincmd r")
--             vim.cmd("vertical resize 80") -- 调整终端窗口宽度
--
--             -- 打开Markdown预览
--             vim.cmd("MarkdownPreviewToggle")
--             vim.defer_fn(function()
--                 -- 将Markdown预览窗口移动到左侧
--                 vim.cmd("wincmd l") -- 移动到左侧窗口
--                 vim.cmd("vertical resize 80") -- 调整Markdown预览窗口宽度
--             end, 100)
--         end
--
--         -- 设置映射来触发Markdown预览并分屏
--         vim.api.nvim_set_keymap(
--             "n",
--             "<leader>mp",
--             "<cmd>lua MarkdownPreviewWithSplit()<CR>",
--             { noremap = true, silent = true }
--         )
--     end,
-- },
