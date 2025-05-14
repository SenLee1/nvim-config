vim.api.nvim_create_autocmd("FileType", {
	pattern = "python",
	callback = function()
		vim.api.nvim_buf_set_keymap(0, "n", "<F7>", ":w<CR>:term python %<CR>", { silent = true, noremap = true })
	end,
})
