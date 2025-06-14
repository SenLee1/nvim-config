return {
	{
		"Civitasv/cmake-tools.nvim",
		config = function()
			require("cmake-tools")
		end,
	},
	{ -- The task runner we use
		"stevearc/overseer.nvim",
		commit = "400e762648b70397d0d315e5acaf0ff3597f2d8b",
		cmd = { "MakeitOpen", "MakeitToggleResults", "MakeitRedo" },
		opts = {
			task_list = {
				direction = "bottom",
				min_height = 25,
				max_height = 25,
				default_detail = 1,
			},
		},
	},

	{
		"Zeioth/makeit.nvim",
		cmd = { "MakeitOpen", "MakeitToggleResults", "MakeitRedo" },
		dependencies = { "stevearc/overseer.nvim" },
		opts = { make_command = 'D:\\Git\\Git\\bin\\bash.exe -c "make"' },
	},
}
