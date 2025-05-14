return {
	"L3MON4D3/LuaSnip",
	dependencies = {
		"rafamadriz/friendly-snippets", -- 提供 LaTeX 片段
	},
	config = function()
		require("luasnip.loaders.from_vscode").lazy_load()
		-- 自定义片段（可选）
	end,
}
