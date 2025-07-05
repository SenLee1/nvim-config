~~~
  __  __         _   _                 _           
 |  \/  |_   _  | \ | | ___  _____   _(_)_ __ ___  
 | |\/| | | | | |  \| |/ _ \/ _ \ \ / / | '_ ` _ \ 
 | |  | | |_| | | |\  |  __/ (_) \ V /| | | | | | |
 |_|  |_|\__, | |_| \_|\___|\___/ \_/ |_|_| |_| |_|
         |___/                                     
~~~

## 基础配置

### `./lua/configs/`
- 快捷键映射：查看 `./lua/configs/Keymaps.lua`
- 部分插件使用默认快捷键（请参考插件官方文档）

## 插件列表

### 核心插件 (`./lua/plugins`)

#### 基础功能
- **`Keys.lua`**
  - `folke/which-key.nvim`：按键提示（按下 `<leader>` 时显示组合键菜单）

#### 代码执行
- **`coderunner.lua`**
  - `CRAG666/code_runner.nvim`：代码运行器（支持 C/C++/Java/Python）

#### 导航增强
- **`leap-folder.lua`**
  - `chrisgrieser/nvim-origami`：折叠功能增强
  - `folke/flash.nvim`：
    - 快速跳转：按 `s` + 目标单词
    - 快速选中：按 `S`

#### 语法增强
- **`rainbow.lua`**
  - `HiPhish/rainbow-delimiters.nvim`：彩虹括号

#### 搜索工具
- **`telescope.lua`**
  - `nvim-telescope/telescope.nvim`：
    - `<leader>lf`：文件搜索
    - `<leader>lg`：内容搜索

#### 文本操作
- **`vim-surround.lua`**
  - `tpope/vim-surround`：快速包裹文本
    - `ysiw"`：给单词添加双引号
    - `ds"`：移除双引号
    - `yss"`：给整行添加双引号
    - `cs'"`：把双引号改成单引号

#### 文件管理
- **`yazi.lua`**
  - `mikavilpas/yazi.nvim`：内置 Yazi 文件管理器（需先安装 Yazi）

### AI 插件 (`lua/plugins_AI`)
- `olimorris/codecompanion.nvim`：LLM 支持（主要对接 Copilot）
- `github/copilot.vim`：GitHub Copilot 集成

### 界面增强 (`lua/plugins_UI`)
- `folke/noice.nvim`：增强命令行界面和错误提示
- `folke/tokyonight.nvim`：主题配色
- `akinsho/toggleterm.nvim`：内置终端

#### **`trouble.lua`**
- `rachartier/tiny-inline-diagnostic.nvim`：行内诊断提示
- `j-hui/fidget.nvim`：任务进度动画
- `folke/todo-comments.nvim`：高亮 `TODO`/`FIXME` 注释
- `folke/trouble.nvim`： 
  - `<leader>xX`：当前文件错误列表
  - `<leader>xx`：项目错误列表
  - `<leader>cs`：文件函数大纲

#### **`vim-illuminate.lua`**
- `numToStr/Comment.nvim`： 
  - `<leader>cc`：注释
  - `<leader>cu`：取消注释
  - `<leader>ci`：切换注释状态
- `RRethy/vim-illuminate`：光标所在单词高亮

### 实用工具 (`lua/plugins_common`)

#### **`autopair.lua`**
- `windwp/nvim-autopairs`：自动补全括号
- `nvim-lualine/lualine.nvim`：状态栏
- `godlygeek/tabular`：文本对齐
  - 选中文本后 `<leader>al` + 对齐符号（如 `&` `\`）
- `nvim-tree/nvim-web-devicons`：文件图标

#### **`buffer.lua`**
- `j-morano/buffer_manager.nvim`： 
  - `<leader><Tab>`：显示缓冲区列表
  - `dd`：删除缓冲区
- `romgrk/barbar.nvim`： 
  - `<Alt>+j/k`：切换缓冲区
  - `<Alt>+c`：关闭当前缓冲区
  - `<Alt>+数字`：跳转到指定缓冲区
  - `<Alt>+p`：切换显示模式（图标/完整名称）

#### **`nvimTree.lua`**
- `nvim-tree/nvim-tree.lua`： 
  - `<C-b>`：切换文件树
  - `o`：打开文件
  - `<C-t>`：返回上级目录

#### **`treesitter.lua`**
- `nvim-treesitter/nvim-treesitter`：语法高亮
  - `:TSInstall`：安装语言支持

### Git 工具 (`plugins_git`)

#### **`conflict.lua`**
- `akinsho/git-conflict.nvim`：合并冲突解决
  - `co`：采用当前更改
  - `ct`：采用传入更改
  - `cb`：保留双方更改
  - `]x`/`[x`：跳转到下/上一个冲突

#### **`gitsigns.lua`**
- `lewis6991/gitsigns.nvim`：Git 状态提示
  - 显示修改/新增/删除的行
  - `:Gitsigns` 查看完整功能

#### **`lazyGit.lua`**
- `kdheepak/lazygit.nvim`： 
  - `<leader>LG`：打开 lazygit（需提前安装）

### LSP 与补全 (`plugins_lsp_cmp`)

#### **`LuaSnip.lua`**
- `L3MON4D3/LuaSnip`：代码片段引擎

#### **`cmps.lua`**
补全数据源：
- `hrsh7th/cmp-path`：文件路径
- `hrsh7th/cmp-nvim-lua`：Lua API
- `hrsh7th/cmp-nvim-lsp`：LSP 建议
- `hrsh7th/cmp-cmdline`：命令行补全
- `hrsh7th/cmp-buffer`：当前文本
- `rafamadriz/friendly-snippets`：通用代码片段

#### **`conformat.lua`**
格式化工具：
  - `MunifTanjim/eslint.nvim`
  - `lukas-reineke/lsp-format.nvim`
  - `MunifTanjim/prettier.nvim`
  - `stevearc/conform.nvim`

#### **`lspconfig.lua`**
- `williamboman/mason.nvim`：LSP 管理（`:MasonInstall`）
- `onsails/lspkind.nvim`：LSP 图标
- `neovim/nvim-lspconfig`：LSP 配置

#### **`lspsaga.lua`**
- `nvimdev/lspsaga.nvim`：增强 LSP 交互体验

#### **`nvim-cmp.lua`**
- `hrsh7th/nvim-cmp`：补全核心
  - `<Tab>`/`<C-n>`：下一个选项
  - `<S-Tab>`/`<C-p>`：上一个选项
  - `<CR>`：确认选择

### Markdown 工具 (`plugins_md`)

#### **`md.lua`**
- `dhruvasagar/vim-table-mode`： 
  - `<leader>tic`：插入列
  - `<leader>tdc`：删除列
  - `<leader>tdd`：删除行
- `preservim/vim-markdown`： 
  - `||`：快速创建表格
- `img-paste-devs/img-paste.vim`：图片粘贴

#### **`markdown-preview.lua`**
- `brianhuster/live-preview.nvim`：`:livePreview` 实时预览

#### **`maga-nvim.lua`**
- `dccsillag/magma-nvim`：执行 Jupyter 代码块

### LaTeX 工具 (`plugins_tex`)

#### **`VimTex.lua`**
- `lervag/vimtex`：LaTeX 编译/预览

#### **`neotex.lua`**
- `donRaphaco/neotex`：实时预览（需配合 Zathura）
