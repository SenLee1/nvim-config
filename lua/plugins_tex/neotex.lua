return {
	"donRaphaco/neotex",
	lazy = false,
	config = function()
		vim.g.neotex_view_method = "general"
		vim.g.neotex_view_general_viewer = "C:\\Users\\86132\\AppData\\Local\\SumatraPDF\\SumatraPDF.exe"
		vim.g.neotex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"
		vim.g.neotex_compiler_latexmk = {
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
	end,
}
