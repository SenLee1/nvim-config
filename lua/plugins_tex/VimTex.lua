return {
	"lervag/vimtex",
	lazy = false,
	config = function()
		vim.g.vimtex_view_method = "general"
		vim.g.vimtex_view_general_viewer = "C:\\Users\\86132\\AppData\\Local\\SumatraPDF\\SumatraPDF.exe"
		vim.g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"
		vim.g.vimtex_compiler_latexmk = {
			build_dir = "",
			callback = 1,
			continuous = 1,
			executable = "latexmk",
			options = {
				"-synctex=1",
				"-interaction=nonstopmode",
				"-file-line-error",
				"-shell-escape",
			},
		}
		-- vim.cmd([[
		--     autocmd User VimtexEventCompileSuccess call VimtexCompileCallback()
		--     function! VimtexCompileCallback() abort
		--         if !exists('g:vimtex_compiler_latexmk')
		--             return
		--         endif
		--         let l:cmd = g:vimtex_view_general_viewer . ' -reuse-instance ' . expand('%:p:r') . '.pdf'
		--         call system(l:cmd)
		--     endfunction
		-- ]])
	end,
}
