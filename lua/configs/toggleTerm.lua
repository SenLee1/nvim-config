--  <Esc> 退出终端模式
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })

-- 终端模式下的窗口导航
vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], { noremap = true, silent = true })
vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], { noremap = true, silent = true })
vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], { noremap = true, silent = true })
vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], { noremap = true, silent = true })

-- 针对 lazygit 的终端缓冲区，让 Esc 直接传递（不进入终端 Normal 模式）
vim.api.nvim_create_autocmd("TermOpen", {
	pattern = "*lazygit*", -- 仅对 lazygit 生效
	callback = function()
		vim.keymap.set("t", "<Esc>", "<Esc>", { buffer = true, noremap = true })
	end,
})
