-- 手动启动预览
vim.g.mkdp_auto_start = 0

-- 自动关闭其他预览窗口
vim.g.mkdp_auto_close = 1

-- 刷新速度设置为快速
vim.g.mkdp_refresh_slow = 0

-- 不在全局命令中使用预览
vim.g.mkdp_command_for_global = 0

-- 不对外开放预览
vim.g.mkdp_open_to_the_world = 0

-- 预览 IP 地址
vim.g.mkdp_open_ip = ""

-- 预览使用的浏览器
vim.g.mkdp_browser = "chromium"

-- 不显示预览的 URL
vim.g.mkdp_echo_preview_url = 0

-- 预览浏览器功能
vim.g.mkdp_browserfunc = ""

-- 预览选项设置
vim.g.mkdp_preview_options = {
	mkit = {},
	katex = {},
	uml = {},
	maid = {},
	disable_sync_scroll = 0,
	sync_scroll_type = "middle",
	hide_yaml_meta = 1,
}

-- Markdown 预览的 CSS
vim.g.mkdp_markdown_css = ""

-- 高亮显示的 CSS
vim.g.mkdp_highlight_css = ""

-- 预览端口
vim.g.mkdp_port = ""

-- 预览页面标题模板
vim.g.mkdp_page_title = "「${name}」"

vim.cmd([[
  autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
]])

-- pdf viewer
vim.g.pdf_viewer = "SumatraPDF"
vim.g.pdf_viewer_path = "C:\\Users\\86132\\AppData\\Local\\SumatraPDF\\SumatraPDF.exe" 
-- C:\Users\86132\AppData\Local\SumatraPDF

