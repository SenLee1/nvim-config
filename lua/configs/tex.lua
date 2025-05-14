vim.g.auto_save = 1 -- 启用自动保存
vim.g.auto_save_in_insert_mode = 1 -- 在插入模式下也自动保存

vim.g.livepreview_previewer = "SumatraPDF"
-- vim.api.nvim_create_augroup("autosave_insert_mode", { clear = true })
-- vim.api.nvim_create_autocmd("CursorHoldI", {
--     group = "autosave_insert_mode",
--     pattern = "*",
--     command = "silent! wa",
-- })
vim.g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf -no-focus"
vim.g.vimtex_view_general_options_latexmk = "-reuse-instance -no-focus"
-- 设置 updatetime 为较短时间，例如 200 毫秒
vim.o.updatetime = 1000
