return {

	"mfussenegger/nvim-dap",
	event = "VeryLazy",
	keys = {
		{
			"<f5>",
			function()
				require("dap").continue()
			end,
			desc = "启动/继续 gdb",
		},
		{
			"<f10>",
			function()
				require("dap").step_over()
			end,
			desc = "单步调试",
		},
		{
			"<C-f10>",
			function()
				require("dap").step_into()
			end,
			desc = "步入",
		},
		{
			"<C-f>",
			function()
				require("dap").step_out()
			end,
			desc = "步出",
		},
		{
			"<C-f5>",
			function()
				require("dap").terminate()
			end,
			desc = "终止程序",
		},
	},
	config = function()
		local dap = require("dap")

		dap.adapters.gdb = {
			type = "executable",
			executable = {
				command = vim.fn.exepath("D:\\PATH\\mingw64\\gdb.exe"), -- 确保这里指向了你的 gdb.exe
				args = { "-i", "dap" },
			},
		}

		dap.configurations.c = {
			{
				name = "Launch file",
				type = "gdb",
				request = "launch",
				program = function()
					local path = vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "\\", "file")
					print("Executable path:", path) -- 调试输出
					return path
				end,
				cwd = "${workspaceFolder}",
				stopOnEntry = false,
				setupCommands = {
					{
						text = "-enable-pretty-printing",
						description = "Enable GDB pretty printing",
						ignoreFailures = false,
					},
				},
			},
		}
	end,
}
