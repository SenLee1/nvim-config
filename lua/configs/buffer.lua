vim.keymap.set("n", "<leader><tab>", function()
	require("buffer_manager.ui").toggle_quick_menu()
end, { desc = "Toggle buffer quick menu" })
