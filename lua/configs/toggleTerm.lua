-- 让 <Esc> 退出终端模式
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })

-- 终端模式下的窗口导航
vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], { noremap = true, silent = true })
vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], { noremap = true, silent = true })
vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], { noremap = true, silent = true })
vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], { noremap = true, silent = true })
