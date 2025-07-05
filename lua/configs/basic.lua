vim.api.nvim_set_keymap("n", "<C-b>", ":NERDTreeToggle<CR>", { noremap = true, silent = true })
vim.opt.number = true -- 显示绝对行号
vim.opt.relativenumber = true -- 其他行显示相对行号

vim.opt.expandtab = true -- 按 Tab 键插入空格

vim.opt.tabstop = 4 -- Tab 显示为 4 个空格宽度

vim.opt.softtabstop = 4 -- 编辑时退格键删除 4 个空格

vim.opt.shiftwidth = 4 -- 自动缩进时每级缩进 4 个空格

vim.opt.clipboard = "unnamed" -- 启用剪切板共享

vim.opt.foldmethod = "indent"

vim.opt.foldlevel = 99

vim.opt.splitright = true

vim.opt.splitbelow = true

vim.opt.laststatus = 2 -- 总是显示状态栏

vim.opt.hlsearch = true -- 高亮显示当前搜索结果

vim.cmd("nohlsearch") -- 自动禁用当前搜索高亮

vim.opt.incsearch = true -- 启用增量搜索

vim.opt.ignorecase = true -- 搜索时忽略大小写

vim.opt.smartcase = true -- 在搜索时根据输入是否包含大写字母决定是否区分大小写

-- 自动恢复上次退出时的光标位置
vim.api.nvim_command([[au BufReadPost * if line("'\"") > 1 && line("'\"") < line("$") | exe "normal! g'\"" | endif]])
vim.g.mapleader = " "
-- copilot.vim
-- vim.api.nvim_create_autocmd("CmdlineEnter", {
--     callback = function()
--         vim.g.copilot_enabled = false
--     end,
-- })
vim.api.nvim_create_autocmd("CmdlineLeave", {
	callback = function()
		vim.g.copilot_enabled = true
	end,
})

-- ===========================================
-- ==         光标位置下显示文本            ==
-- ===========================================
vim.opt.scrolloff = 5 -- 上下各有5行边距

vim.opt.scrolloff = 5 -- 光标距离顶部/底部的最小行数
vim.opt.sidescrolloff = 5 -- 水平方向的类似设置（可选）

vim.g.gitgutter_async = 1 -- 强制异步（避免阻塞 Neovim）

-- =======================================
-- ==windows 下terminal 设置为powershell==
-- =======================================

if vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1 then
	vim.cmd([[ let &shell = 'powershell.exe' ]])
	vim.cmd(
		[[ let &shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;' ]]
	)
	vim.cmd([[ let &shellquote = '' ]])
	vim.cmd([[ let &shellxquote = '' ]])
end

-- ===============
-- ==    GDB    ==
-- ===============

vim.loader.enable()

-- =====================
-- ==    clipboard    ==
-- =====================

if vim.fn.has("win32") == 1 then
	vim.g.clipboard = {
		name = "win32yank-wsl",
		copy = {
			["+"] = "win32yank.exe -i --crlf",
			["*"] = "win32yank.exe -i --crlf",
		},
		paste = {
			["+"] = "win32yank.exe -o --lf",
			["*"] = "win32yank.exe -o --lf",
		},
		cache_enabled = true,
	}
end

vim.api.nvim_set_hl(0, "SpecialKey", { fg = "#FF9E64" }) -- 设置为橙色
