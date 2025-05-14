-- 在注释分隔符后添加空格
vim.g.NERDSpaceDelims = 1

-- 使用紧凑语法进行多行注释美化
vim.g.NERDCompactSexyComs = 1

-- 将逐行注释分隔符对齐到左侧，而不是跟随代码缩进
vim.g.NERDDefaultAlign = 'left'

-- 设置使用特定语言的备用分隔符
vim.g.NERDAltDelims_java = 1

-- 添加自定义格式或覆盖默认设置
vim.g.NERDCustomDelimiters = {
  c = { left = '//', right = '' },
  cpp = { left = '//', right = '' }
}
-- 允许注释和反转空行（在注释区域时很有用）
vim.g.NERDCommentEmptyLines = 1

-- 取消注释时删除尾随空格
vim.g.NERDTrimTrailingWhitespace = 1

-- 启用 NERDCommenterToggle 以检查所有选定行是否已注释
vim.g.NERDToggleCheckAllLines = 1

