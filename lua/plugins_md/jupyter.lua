-- return {
--     "geg2102/nvim-jupyter-client",
--     config = function()
--         require("nvim-jupyter-client").setup({
--             -- 可选：自定义快捷键
--             -- keymaps = {
--             --     execute_line = "<Leader>l", -- 执行当前行
--             --     execute_cell = "<Leader>c", -- 执行代码块（Cell）
--             --     execute_all = "<Leader>R", -- 执行整个文件
--             -- },
--             -- 其他配置...
--         })
--     end,
-- }
return {
	"meatballs/notebook.nvim",
	config = function()
		require("notebook").setup({})

		-- 在这里添加你的 magma 适配代码
		local api = require("notebook.api")
		local settings = require("notebook.settings")

		function _G.define_cell(extmark)
			-- 你原来的 define_cell 函数内容
		end

		function _G.define_all_cells()
			-- 你原来的 define_all_cells 函数内容
		end

		-- 自动命令
		vim.api.nvim_create_autocmd({ "BufRead" }, { pattern = { "*.ipynb" }, command = "MagmaInit" })
		vim.api.nvim_create_autocmd(
			"User",
			{ pattern = { "MagmaInitPost", "NBPostRender" }, callback = _G.define_all_cells }
		)
	end,
}
