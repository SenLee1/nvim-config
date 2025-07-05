-- ==================
--      搜索替换   ==
-- ==================
vim.api.nvim_set_keymap("n", "<leader>sr", ":%s/", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader><CR>", ":nohlsearch<CR>", { noremap = true })
-- 取消gd高亮
vim.api.nvim_set_keymap("n", "gd", "gd:nohlsearch<CR>", { noremap = true, silent = true })
-- Ctrl + U 在普通模式下向上滚动视口，不移动光标
vim.api.nvim_set_keymap("n", "<C-U>", "5<C-Y>", { noremap = true })

-- Ctrl + D 在普通模式下向下滚动视口，不移动光标
vim.api.nvim_set_keymap("n", "<C-D>", "5<C-D>", { noremap = true })

-- ===================
--    快速退出    ====
-- ===================
vim.api.nvim_set_keymap("n", "<Space>q", ":q<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Space>wq", ":wq<CR>", { noremap = true, silent = true })

-- =================================
-- ==          分屏操作           ==
-- =================================
-- 设置 sk, sj, sh, sl 四个方向映射
vim.api.nvim_set_keymap("n", "sk", ":set nosplitbelow<CR>:split<CR>:set splitbelow<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "sj", ":set splitbelow<CR>:split<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "sh", ":set nosplitright<CR>:vsplit<CR>:set splitright<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "sl", ":set splitright<CR>:vsplit<CR>", { noremap = true })

-- 选择补全项
-- 使用 Tab 键选择补全项，回车键确认
vim.api.nvim_set_keymap("i", "<Tab>", 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', { expr = true, silent = true })
vim.api.nvim_set_keymap("i", "<S-Tab>", 'pumvisible() ? "\\<C-p>" : "\\<S-Tab>"', { expr = true })

-- ======================
--     Code Runner  =====
-- ======================
vim.keymap.set("n", "<leader>r", ":RunCode<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>rf", ":RunFile<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "<leader>ai", ":CodeCompanion", { silent = true, noremap = true })

-- ================================
-- ==         Spell check        ==
-- ================================
vim.keymap.set("n", "<Leader>sp", function()
	vim.opt.spell = not vim.opt.spell:get()
	print("拼写检查: " .. (vim.opt.spell:get() and "ON" or "OFF"))
end, { desc = "Toggle spell check" })
vim.opt.spelllang = "en,cjk" -- 只检查英文
vim.opt.spelloptions = "camel,noplainbuffer" -- 忽略非单词字符（如中文）
-- 在状态栏显示拼写检查状态（需插件如 lualine.nvim）
vim.opt.statusline:prepend("%{&spell?'[SPELL]':''}")

-- ===================
-- ==     Buffer    ==
-- ===================
vim.keymap.set("n", "<leader><tab>", function()
	require("buffer_manager.ui").toggle_quick_menu()
end, { desc = "Toggle buffer quick menu" })

-- ===========================
-- == open settings quickly ==
-- ===========================
vim.keymap.set("n", "<Leader>cfg", function()
	local nvim_config_path = vim.fn.stdpath("config") -- 获取配置目录路径
	vim.cmd("edit " .. nvim_config_path) -- 用 netrw 文件浏览器打开
end, { desc = "Browse Neovim config directory" })

-- ============
-- ==  Yazi  ==
-- ============

vim.api.nvim_set_keymap("n", "<leader>oz", ":Yazi<CR>", { silent = true, noremap = true })

-- =================
-- ==   Profile   ==
-- =================

-- 性能分析快捷键
vim.api.nvim_set_keymap("n", "<leader>cfp", "", {
	noremap = true,
	callback = function()
		-- 清除旧的性能日志
		vim.fn.delete("profile.log")

		-- 开始性能分析
		vim.cmd("profile start profile.log")
		vim.cmd("profile func *")
		vim.cmd("profile file *")

		vim.notify("性能分析已开始，结果将保存到 profile.log", vim.log.levels.INFO)
	end,
	desc = "Start performance profiling",
})

vim.api.nvim_set_keymap("n", "<leader>cfP", "", {
	noremap = true,
	callback = function()
		-- 结束性能分析
		vim.cmd("profile pause")

		vim.notify("性能分析结束，推出后结果保存到 profile.log", vim.log.levels.INFO)
	end,
	desc = "Finish performance profiling",
})
-- ===============
--   Tabularize  =
-- ===============
vim.api.nvim_set_keymap("v", "<leader>al", ":Tabularize /", { silent = false, noremap = true })

-- ==================
--    Telescope   ===
-- ==================
-- 查找文件
vim.keymap.set("n", "<leader>lf", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
-- 全局搜索（live_grep）
vim.keymap.set("n", "<leader>lg", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
-- 查找 buffers
vim.keymap.set("n", "<leader>lb", "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })
-- 查找帮助文档
vim.keymap.set("n", "<leader>lh", "<cmd>Telescope help_tags<cr>", { desc = "Help tags" })

-- ===================
--   ToggleTerm   ====
-- ===================
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

-- ===============
--  Markdown  ====
-- ===============

-- <leader>, : markdown -> PDF
