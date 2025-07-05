return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			local shell, shell_args

			-- Windows 配置
			if vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1 then
				shell = "powershell"
				shell_args = { "-NoLogo", "-NoProfile", "-ExecutionPolicy", "RemoteSigned" }
			-- Linux/macOS 配置（默认使用 bash，可修改为 zsh/fish）
			else
				shell = "bash" -- 或 "zsh" / "fish"
				shell_args = {} -- Linux/macOS 通常不需要额外参数
			end

			require("toggleterm").setup({
				open_mapping = [[<c-\>]],
				shell = shell,
				shell_args = shell_args,
				direction = "horizontal",
				terminal_mappings = true,
			})
		end,
	},
}
