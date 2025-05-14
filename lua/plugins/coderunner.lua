return {
	"CRAG666/code_runner.nvim",
	config = function()
		require("code_runner").setup({
			filetype = {
				java = {
					"cd $dir &&",
					"javac $fileName &&",
					"java $fileNameWithoutExt",
				},
				python = "C:\\Users\\86132\\AppData\\Local\\Programs\\Python\\Python313\\python.exe",
				typescript = "deno run",
				rust = {
					"cd $dir &&",
					"rustc $fileName &&",
					"$dir/$fileNameWithoutExt",
				},
				c = function()
					c_base = {
						"cd $dir &&",
						"gcc $fileName -o",
						"$fileNameWithoutExt",
					}
					local c_exec = {
						"&& $fileNameWithoutExt",
						-- "del $fileNameWithoutExt.exe",
					}
					vim.ui.input({ prompt = "Add more args:" }, function(input)
						c_base[4] = input
						vim.print(vim.tbl_extend("force", c_base, c_exec))
						require("code_runner.commands").run_from_fn(vim.list_extend(c_base, c_exec))
					end)
				end,
				cpp = function()
					cpp_base = {
						"cd $dir &&",
						"g++ $fileName -o",
						"$fileNameWithoutExt.out",
					}
					local cpp_exec = {
						"&& $fileNameWithoutExt.out",
						-- "del $fileNameWithoutExt.exe",
					}
					vim.ui.input({ prompt = "Add more args:" }, function(input)
						cpp_base[4] = input
						vim.print(vim.tbl_extend("force", cpp_base, cpp_exec))
						require("code_runner.commands").run_from_fn(vim.list_extend(cpp_base, cpp_exec))
					end)
				end,
			},
		})
	end,
}
