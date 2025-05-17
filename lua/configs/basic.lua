vim.api.nvim_set_keymap("n", "<C-b>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
vim.o.nu = ture
vim.o.ts = 4
vim.o.rnu = true
vim.o.shiftwidth = 4
-- 启用剪切板共享
vim.opt.clipboard = "unnamed"
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99
vim.opt.splitright = true
vim.opt.splitbelow = true
-- 总是显示状态栏
vim.opt.laststatus = 2
-- 高亮显示当前搜索结果
vim.opt.hlsearch = true
-- 自动禁用当前搜索高亮
vim.cmd("nohlsearch")
-- 启用增量搜索
vim.opt.incsearch = true
-- 搜索时忽略大小写
vim.opt.ignorecase = true
-- 在搜索时根据输入是否包含大写字母决定是否区分大小写
vim.opt.smartcase = true
-- 自动恢复上次退出时的光标位置
vim.api.nvim_command([[au BufReadPost * if line("'\"") > 1 && line("'\"") < line("$") | exe "normal! g'\"" | endif]])
-- 设置 mapleader 为空格键
vim.g.mapleader = " "
-- 设置空格键 + sr 进行搜索，并且再次按键取消光标
vim.api.nvim_set_keymap("n", "<leader>sr", ":%s/", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader><CR>", ":nohlsearch<CR>", { noremap = true })
-- Ctrl + U 在普通模式下向上滚动视口，不移动光标
vim.api.nvim_set_keymap("n", "<C-U>", "5<C-Y>", { noremap = true })

-- Ctrl + D 在普通模式下向下滚动视口，不移动光标
vim.api.nvim_set_keymap("n", "<C-D>", "5<C-D>", { noremap = true })

-- Ctrl + U 在插入模式下向上滚动视口，不移动光标
vim.api.nvim_set_keymap("i", "<C-U>", "<Esc>5<C-Y>a", { noremap = true })

-- Ctrl + D 在插入模式下向下滚动视口，不移动光标
vim.api.nvim_set_keymap("i", "<C-D>", "<Esc>5<C-D>a", { noremap = true })

-- 拆分窗口
-- 设置 sk 映射
vim.api.nvim_set_keymap("n", "sk", ":set nosplitbelow<CR>:split<CR>:set splitbelow<CR>", { noremap = true })

-- 设置 sj 映射
vim.api.nvim_set_keymap("n", "sj", ":set splitbelow<CR>:split<CR>", { noremap = true })

-- 设置 sh 映射
vim.api.nvim_set_keymap("n", "sh", ":set nosplitright<CR>:vsplit<CR>:set splitright<CR>", { noremap = true })

-- 设置 sl 映射

vim.api.nvim_set_keymap("n", "sl", ":set splitright<CR>:vsplit<CR>", { noremap = true })
-- bufferline move
-- 设置q键直接退出
vim.api.nvim_set_keymap("n", "<Space>q", ":q<CR>", { noremap = true, silent = true })
-- vim.api.nvim_create_autocmd("User", {
--     pattern = "CocJumpPlaceholder",
--     callback = function()
--         vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-o>", true, false, true), "in", false)
--     end,
-- })

vim.api.nvim_set_keymap("n", "<Space>wq", ":wq<CR>", { noremap = true, silent = true })
-- 使用 Tab 键选择补全项
-- 使用 Tab 键选择补全项，回车键确认
vim.api.nvim_set_keymap("i", "<Tab>", 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', { expr = true, silent = true })
vim.api.nvim_set_keymap("i", "<S-Tab>", 'pumvisible() ? "\\<C-p>" : "\\<S-Tab>"', { expr = true })
vim.api.nvim_set_keymap("n", "<leader>f", ":Format<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>F", ":FormatWrite<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>r", ":RunCode<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>rf", ":RunFile<CR>", { noremap = true, silent = false })

-- 取消gd高亮
vim.api.nvim_set_keymap("n", "gd", "gd:nohlsearch<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ai", ":CodeCompanion", { silent = true, noremap = true })
-- copilot.vim
vim.api.nvim_create_autocmd("CmdlineEnter", {
	callback = function()
		vim.g.copilot_enabled = false
	end,
})
vim.api.nvim_create_autocmd("CmdlineLeave", {
	callback = function()
		vim.g.copilot_enabled = true
	end,
})
