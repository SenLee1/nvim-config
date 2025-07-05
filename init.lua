--  _   _                 _
-- | \ | | ___  _____   _(_)_ __ ___
-- |  \| |/ _ \/ _ \ \ / / | '_ ` _ \
-- | |\  |  __/ (_) \ V /| | | | | | |
-- |_| \_|\___|\___/ \_/ |_|_| |_| |_|
--

require("configs.basic")
require("configs.copilot")
require("configs.markdown")
require("configs.telescope")
require("configs.nerdcommenter")
require("configs.toggleTerm")
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
--colorscheme tokyonight-night  -storm   -day   -moon
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
	-- { "mhartington/formatter.nvim", config = true },
})

vim.cmd([[colorscheme tokyonight-moon]])
vim.opt.termguicolors = true

-- vim.cmd([[colorscheme vscode]])

vim.api.nvim_set_hl(0, "EndOfBuffer", {})

-- 设置 lspconfig 使其自动补全功能与 nvim-cmp 集成
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- require('lspconfig').clangd.setup {
--   capabilities = capabilities,
-- }
-- vim.api.nvim_set_keymap('n', '<leader>f', '<cmd>Format<CR>', { noremap = true, silent = true })
require("lsp-format").setup({})
-- vim.g.python3_host_prog = "C:\\users\\86132\\AppData\\Local\\Programs\\python\\python313\\python.exe"
vim.g.python3_host_prog = "E:\\anaconda\\python.exe"
local on_attach = function(client, bufnr)
	require("lsp-format").on_attach(client, bufnr)

	-- ... Customer code ...
end
require("lspconfig").gopls.setup({ on_attach = on_attach })

-- vim.schedule(function()
--     vim.api.nvim_set_hl(0, "LineNr", { fg = "#ffa500", bold = true })
-- end)
