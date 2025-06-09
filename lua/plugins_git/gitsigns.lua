-- return{
--     "lewis6991/gitsigns.nvim",
--     config = function()
--         require('gitsigns').setup {
--           update_debounce = 1000,
--           max_file_length = 40000,
--           attach_to_untracked = false,
--           current_line_blame = false,
--         }
--     end,
-- }
return {
  'lewis6991/gitsigns.nvim',
  event = { 'BufRead', 'BufNewFile' },
  opts = {
    -- 基础配置
    signs = {
      add = { text = '│' },
      change = { text = '│' },
      delete = { text = '_' },
    },
    current_line_blame = true,
  },
  config = function(_, opts)
    local gitsigns = require('gitsigns')
    gitsigns.setup(opts)

    -- 冲突检测函数
    local function count_conflicts()
      local file = vim.fn.expand('%:p')
      if file == '' or not vim.loop.fs_stat(file) then return 0 end

      local cmd = string.format('git --no-pager grep -n -E "<<<<<<<|=======|>>>>>>>" -- "%s" | wc -l', file)
      local handle = io.popen(cmd)
      local result = handle:read('*a')
      handle:close()
      return tonumber(result) or 0
    end

    -- 根据冲突数量动态禁用
    local MAX_CONFLICTS = 5
    local function toggle_gitsigns_based_on_conflicts()
      local conflicts = count_conflicts()
      if conflicts >= MAX_CONFLICTS then
        gitsigns.toggle_deleted(false)
        gitsigns.toggle_current_line_blame(false)
        vim.notify(string.format('Disabled gitsigns (too many conflicts: %d)', conflicts), vim.log.levels.WARN)
      else
        gitsigns.toggle_deleted(true)
        gitsigns.toggle_current_line_blame(true)
      end
    end

    -- 自动触发检测
    vim.api.nvim_create_autocmd({ 'BufRead', 'BufEnter' }, {
      callback = toggle_gitsigns_based_on_conflicts,
    })
  end,
}
-- -- lua/plugins/gitsigns.lua
-- return {
--   "lewis6991/gitsigns.nvim",
--   event = { "BufReadPre", "BufNewFile" },
--   config = function()
--     require("gitsigns").setup {
--       signs = {
--         add          = { text = "│" },
--         change       = { text = "│" },
--         delete       = { text = "_" },
--         topdelete    = { text = "‾" },
--         changedelete = { text = "~" },
--         untracked    = { text = "┆" },
--       },
--       max_file_length = 4000,        -- 超过 4000 行自动禁用
--       update_debounce = 500,         -- 更新延迟 ms
--       attach_to_untracked = false,   -- 不处理未跟踪文件
--       current_line_blame = false,    -- 关闭 blame 虚拟文本（如你启用了可改为 true）
--
--       on_attach = function(bufnr)
--         local gs = package.loaded.gitsigns
--         local map = function(mode, l, r, opts)
--           opts = opts or {}
--           opts.buffer = bufnr
--           vim.keymap.set(mode, l, r, opts)
--         end
--
--         -- 常用快捷键（可删）
--         map("n", "]c", function()
--           if vim.wo.diff then return "]c" end
--           vim.schedule(function() gs.next_hunk() end)
--           return "<Ignore>"
--         end, { expr = true })
--
--         map("n", "[c", function()
--           if vim.wo.diff then return "[c" end
--           vim.schedule(function() gs.prev_hunk() end)
--           return "<Ignore>"
--         end, { expr = true })
--       end,
--     }
--
--     -- 自动禁用大文件中的 gitsigns
--     vim.api.nvim_create_autocmd("BufReadPre", {
--       callback = function(args)
--         local size = vim.fn.getfsize(args.file)
--         if size > 1024 * 1024 then  -- 文件 > 1MB
--           vim.b[args.buf].gitsigns_disable = true
--         end
--       end,
--     })
--   end,
-- }
--
