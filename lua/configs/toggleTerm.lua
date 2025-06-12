--  <Esc> 退出终端模式
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })

-- 终端模式下的窗口导航
vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], { noremap = true, silent = true })
vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], { noremap = true, silent = true })
vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], { noremap = true, silent = true })
vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], { noremap = true, silent = true })
vim.keymap.set("n", "<leader>\\", function()
	-- 第一步：输入 size
	local size = vim.fn.input({
		prompt = "ToggleTerm size=",
		default = "20", -- 默认大小
	})
	if size == "" then
		size = "20"
	end -- 如果直接回车，使用默认值

	-- 第二步：选择 direction
	vim.ui.select({ "horizontal", "vertical", "float" }, { prompt = "direction=" }, function(direction)
		if direction then
			vim.cmd(string.format("ToggleTerm size=%s direction=%s", size, direction))
		end
	end)
end, { desc = "ToggleTerm with custom size/direction" })
