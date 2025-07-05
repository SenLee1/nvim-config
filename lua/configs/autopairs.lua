-- Define AutoPairs for a specific filetype
vim.api.nvim_create_autocmd("FileType", {
	pattern = "FILETYPE",
	callback = function()
		vim.b.AutoPairs = { ["("] = ")" }
	end,
})

-- Define AutoPairs for php filetype
vim.api.nvim_create_autocmd("FileType", {
	pattern = "php",
	callback = function()
		vim.b.AutoPairs = { ["<?"] = "?>", ["<?php"] = "?>" }
	end,
})
vim.g.AutoPairsMapCR = 0 -- 禁用 AutoPairs 的默认回车映射
vim.api.nvim_set_keymap("i", "<CR>", "<CR><Plug>AutoPairsReturn", { noremap = false, silent = true })
