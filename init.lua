--  _   _                 _
-- | \ | | ___  _____   _(_)_ __ ___
-- |  \| |/ _ \/ _ \ \ / / | '_ ` _ \
-- | |\  |  __/ (_) \ V /| | | | | | |
-- |_| \_|\___|\___/ \_/ |_|_| |_| |_|
--

-- 应用./lua/configs/ 下所有设置
local function scan_configs()
	-- 获取路径分隔符
	local path_sep = package.config:sub(1, 1)

	-- 构建配置目录路径
	local config_dir = vim.fn.stdpath("config") .. path_sep .. "lua" .. path_sep .. "configs"

	-- 扫描目录
	for _, file in ipairs(vim.fn.readdir(config_dir)) do
		if file:match("%.lua$") then
			local module = file:sub(1, -5)
			local ok, err = pcall(require, "configs." .. module)
			if not ok then
				vim.notify("Failed to load config: " .. module .. "\n" .. err, vim.log.levels.ERROR)
			end
		end
	end
end

scan_configs()

-- vim.g.python3_host_prog = "\\C\\Users\\86132\\AppData\\Local\\Microsoft\\WindowsApps\\python3.exe"

-- Lazy.nvim 配置
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

vim.api.nvim_set_hl(0, "EndOfBuffer", {})

-- 设置 lspconfig 使其自动补全功能与 nvim-cmp 集成
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- vim.api.nvim_set_keymap('n', '<leader>f', '<cmd>Format<CR>', { noremap = true, silent = true })
require("lsp-format").setup({})
-- vim.g.python3_host_prog = "C:\\users\\86132\\AppData\\Local\\Programs\\python\\python313\\python.exe"
vim.g.python3_host_prog = "E:\\anaconda\\python.exe"
local on_attach = function(client, bufnr)
	require("lsp-format").on_attach(client, bufnr)
end
require("lspconfig").gopls.setup({ on_attach = on_attach })
