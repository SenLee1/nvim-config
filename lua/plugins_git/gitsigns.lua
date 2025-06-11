return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
	require("gitsigns").setup {
	  signs = {
		add          = { text = "│" },
		change       = { text = "│" },
		delete       = { text = "_" },
		topdelete    = { text = "‾" },
		changedelete = { text = "~" },
		untracked    = { text = "┆" },
	  },
	  max_file_length = 4000,        -- 超过 4000 行自动禁用
	  update_debounce = 500,         -- 更新延迟 ms
	  attach_to_untracked = false,   -- 不处理未跟踪文件
	  current_line_blame = false,    -- 关闭 blame 虚拟文本（如你启用了可改为 true）

	  on_attach = function(bufnr)
		local gs = package.loaded.gitsigns
		local map = function(mode, l, r, opts)
		  opts = opts or {}
		  opts.buffer = bufnr
		  vim.keymap.set(mode, l, r, opts)
		end

		-- 常用快捷键（可删）
		map("n", "]c", function()
		  if vim.wo.diff then return "]c" end
		  vim.schedule(function() gs.next_hunk() end)
		  return "<Ignore>"
		end, { expr = true })

		map("n", "[c", function()
		  if vim.wo.diff then return "[c" end
		  vim.schedule(function() gs.prev_hunk() end)
		  return "<Ignore>"
		end, { expr = true })
	  end,
	}

	-- 自动禁用大文件中的 gitsigns
	vim.api.nvim_create_autocmd("BufReadPre", {
	  callback = function(args)
		local size = vim.fn.getfsize(args.file)
		if size > 1024 * 1024 then  -- 文件 > 1MB
		  vim.b[args.buf].gitsigns_disable = true
		end
	  end,
	})
  end,
}

