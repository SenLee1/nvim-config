-- git config --global --unset http.proxy
-- git config --global --unset https.proxy
require("configs.basic")
require("configs.copilot")
require("configs.markdown")
require("configs.telescope")
require("configs.nerdcommenter")
require("configs.nerdtree")
require("configs.tex")
require("run_debug.python")
require("run_debug.c")
require("run_debug.cpp")
-- vim.g.python3_host_prog = "\\C\\Users\\86132\\AppData\\Local\\Microsoft\\WindowsApps\\python3.exe"
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
-- colorscheme tokyonight-night  -storm   -day   -moon
require("lazy").setup({
	{ import = "plugins_lsp_cmp" },
	{ import = "plugins" },
	{ import = "plugins_common" },
	{ import = "plugins_md" },
	{ import = "plugins_tex" },
	{ import = "plugins_debug" },
	{ import = "plugins_AI" },
	{ import = "plugins_UI" },
	{ import = "plugins_git" },
	{ "mhartington/formatter.nvim", config = true },
})


-- vim.cmd([[colorscheme tokyonight-storm]])
vim.opt.termguicolors = true
vim.cmd([[colorscheme tokyonight-moon]])

-- vim.cmd [[
--   highlight! link NERDTreeFlags NERDTreeFile
--   highlight! WebDevIconsDefaultFolderSymbol guifg=#669900 ctermfg=2
--   highlight! WebDevIconsDefaultFileSymbol guifg=#FFFFFF ctermfg=15
-- ]]

-- vim.cmd([[
--   let g:webdevicons_enable = 1
--   let g:webdevicons_enable_nerdtree = 1
-- ]])

-- vim.cmd([[colorscheme vscode]])

vim.api.nvim_set_hl(0, "EndOfBuffer", {})

-- 设置 lspconfig 使其自动补全功能与 nvim-cmp 集成
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- require('lspconfig').clangd.setup {
--   capabilities = capabilities,
-- }
vim.api.nvim_set_keymap('n', '<leader>f', '<cmd>Format<CR>', { noremap = true, silent = true })
vim.api.nvim_set_hl(0, "LineNr", {
	fg = "white", -- 行号文字颜色（白色）
	bg = "NONE", -- 背景透明（继承终端）
})
require("lsp-format").setup({})
-- vim.g.python3_host_prog = "C:\\users\\86132\\AppData\\Local\\Programs\\python\\python313\\python.exe"
vim.g.python3_host_prog = "E:\\anaconda\\python.exe"
local on_attach = function(client, bufnr)
	require("lsp-format").on_attach(client, bufnr)

	-- ... custom code ...
end
require("lspconfig").gopls.setup({ on_attach = on_attach })
