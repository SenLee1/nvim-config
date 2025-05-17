-- lazy.nvim 配置示例
return {
	"3rd/image.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	-- init.lua 或 plugins/image.lua
	-- require("image").setup({
	--     backend = "ueberzug",
	--     render = {
	--         min_padding = 5,
	--         show_label = true,
	--         use_dither = true,
	--         foreground_color = true,
	--         background_color = true,
	--     },
	--     integrations = {
	--         markdown = {
	--             enabled = true,
	--             clear_in_insert_mode = false,
	--             download_remote_images = true,
	--             only_render_image_at_cursor = false,
	--             filetypes = { "markdown", "vimwiki" },
	--         },
	--     },
	-- }),
}
