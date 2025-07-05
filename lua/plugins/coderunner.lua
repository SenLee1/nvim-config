local function get_conda_python_path()
	-- 获取当前 Conda 环境名称
	local conda_env = os.getenv("CONDA_DEFAULT_ENV")
	if not conda_env or conda_env == "base" then
		-- 如果不在 Conda 环境中或处于 base 环境，返回系统 Python
		return vim.fn.exepath("python") or "python"
	else
		-- 构造 Conda 环境的 Python 路径（Windows 和 Unix 兼容）
		local conda_prefix = os.getenv("CONDA_PREFIX")
		if not conda_prefix then
			return "python"
		end

		local python_path
		if vim.fn.has("win32") == 1 then
			python_path = conda_prefix .. "\\python.exe"
		else
			python_path = conda_prefix .. "/bin/python"
		end

		-- 检查路径是否存在
		return vim.fn.filereadable(python_path) == 1 and python_path or "python"
	end
end

local function get_command_separator()
	return vim.fn.has("win32") == 1 and ";" or "&&"
end

return {
	"CRAG666/code_runner.nvim",
	config = function()
		require("code_runner").setup({
			filetype = {
				java = function()
					local sep = get_command_separator()
					return {
						"cd $dir " .. sep,
						"javac $fileName " .. sep,
						"java $fileNameWithoutExt",
					}
				end,
				-- python = "C:\\Users\\86132\\AppData\\Local\\Programs\\Python\\Python313\\python.exe",
				-- python = "E:\\anaconda\\python.exe",
				python = get_conda_python_path,
				typescript = "deno run",
				rust = function()
					local sep = get_command_separator()
					return {
						"cd $dir " .. sep,
						"rustc $fileName " .. sep,
						"$dir/$fileNameWithoutExt",
					}
				end,
				c = function()
					local sep = get_command_separator()
					c_base = {
						"cd $dir " .. sep,
						"gcc $fileName -o",
						"$fileNameWithoutExt.exe",
					}
					local c_exec = {
						sep .. " $fileNameWithoutExt.exe",
						-- "del $fileNameWithoutExt.exe",
					}
					vim.ui.input({ prompt = "Add more args:" }, function(input)
						c_base[4] = input
						vim.print(vim.tbl_extend("force", c_base, c_exec))
						require("code_runner.commands").run_from_fn(vim.list_extend(c_base, c_exec))
					end)
				end,
				cpp = function()
					local sep = get_command_separator()
					cpp_base = {
						"cd $dir " .. sep,
						"g++ $fileName -o",
						"$fileNameWithoutExt.out",
					}
					local cpp_exec = {
						sep .. " $fileNameWithoutExt.out",
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
