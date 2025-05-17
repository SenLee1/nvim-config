-- 查找文件
vim.keymap.set("n", "<leader>lf", "<cmd>Telescope find_files<cr>", { desc = "Find files" })

-- 全局搜索（live_grep）
vim.keymap.set("n", "<leader>lg", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })

-- 查找 buffers
vim.keymap.set("n", "<leader>lb", "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })

-- 查找帮助文档
vim.keymap.set("n", "<leader>lh", "<cmd>Telescope help_tags<cr>", { desc = "Help tags" })
