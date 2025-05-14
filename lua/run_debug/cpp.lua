vim.api.nvim_create_autocmd("FileType", {
	pattern = "cpp",
	callback = function()
		vim.api.nvim_buf_set_keymap(
			0,
			"n",
			"<F7>",
			":w<CR>:lua require('run_cpp').run()<CR>",
			{ silent = true, noremap = true }
		)
	end,
})

-- 创建一个 Lua 模块 run_cpp.lua
_G.run_cpp = {}
function _G.run_cpp.run()
	vim.ui.input({ prompt = "Enter G++ options: " }, function(input)
		if input == nil then
			return
		end
		local cmd = string.format("g++ %s %% -o %%:r && .%%/%%:r", input)
		vim.cmd("term " .. cmd)
	end)
end
