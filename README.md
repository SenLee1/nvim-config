
  __  __         _   _                 _           
 |  \/  |_   _  | \ | | ___  _____   _(_)_ __ ___  
 | |\/| | | | | |  \| |/ _ \/ _ \ \ / / | '_ ` _ \ 
 | |  | | |_| | | |\  |  __/ (_) \ V /| | | | | | |
 |_|  |_|\__, | |_| \_|\___|\___/ \_/ |_|_| |_| |_|
         |___/                                     

## Basic Configuration

### ./lua/configs/

To look up the keymaps, see ./lua/configs/Keymaps.lua. 

For some plugin keymaps, I just use the default keymap. See those plugins on github.

## Plugins

### ./lua/plugins

#### Keys.lua

- "folke/which-key.nvim":
    -- keymap hint: when you press <leader> or other keys that have combined maps, the menu will be shown.
	
#### coderunner.lua

- "CRAG666/code_runner.nvim" 
    -- Code Runner plugin with c, c++, java, python in my settings.

#### leap-folder.lua 

- "chrisgrieser/nvim-origami" 
    -- Provide fold method.
- "folke/flash.nvim"
    -- 快速跳转. To jump, press 's' and the word the to jump.
    -- 快速选中：'S'
	

#### rainbow.lua	

- "HiPhish/rainbow-delimiters.nvim"
    -- 彩色括号

#### telescope.lua

- "nvim-telescope/telescope.nvim"
    --快速查找，按下 <leader>lf 查找文件, <leader>lg 查找字符


#### vim-surround.lua

- "tpope/vim-surround"
    -- 快速操作 ''、""、()、{} 等包围符号：
    -- 为光标下单词加上 "" : ysiw"
    -- 删除光标下单词的 "" : ds"
    -- 为光标所在行添加 "" : yss"
    -- 把包围符号由 "" 改为 '' : cs'"

#### yazi.lua 

- "mikavilpas/yazi.nvim"
    -- yazi in nvim 
    -- 需要安装yazi
 

### lua/plugins_AI

#### "olimorris/codecompanion.nvim"

提供大语言模型支持（主要使用copilot)

#### "github/copilot.vim"

copilot 绑定插件

### lua/plugins_UI

#### "folke/noice.nvim"

Command 模式界面显示优化、提供错误检查

#### "folke/tokyonight.nvim"

颜色主题

#### "akinsho/toggleterm.nvim"

neovim内终端

#### trouble.lua

- "rachartier/tiny-inline-diagnostic.nvim"
    -- 
- "j-hui/fidget.nvim"
    -- fidget 图形
- "folke/todo-comments.nvim"
    -- 高亮 "TODO", "FIXME" 文本
- "folke/trouble.nvim"
    -- <leader>xX : 列出当前buffer所有报错信息
    -- <leader>xx : 列出当前工作目录所有报错信息
    -- <leader>cs : 列出文件内函数框架

#### vim-illuminate.lua

- "numToStr/Comment.nvim"
    -- 快速注释: <leader>cc 注释，<leader>cu 取消注释, <leader>ci 切换注释
- "RRethy/vim-illuminate"
    -- 高亮当前光标所在位置词


### lua/plugins_common

#### autopair.lua

- "windwp/nvim-autopairs"
    -- 自动补齐括号
- "nvim-lualine/lualine.nvim"
    -- 下方状态栏
- "nvim-lua/plenary.nvim"
- "godlygeek/tabular"
    -- 文本对齐
    -- visual模式选中文本，<leader>al + 对齐字符(&,\ 等)
- "nvim-tree/nvim-web-devicons"
    -- 提供图标

#### buffer.lua

- "j-morano/buffer_manager.nvim"
    -- <leader><Tab> 展示当前所有buffer，dd删除
- "romgrk/barbar.nvim"
    -- 上方buffer显示。
    -- <Alt> + j/k, 前/后一个buffer
    -- <Alt> + c, 关闭当前buffer 
    -- <Alt> + num, 第num个buffer
    -- <Alt> + p, 折叠当前buffer名，只保留图标

#### nvimTree.lua

- "nvim-tree/nvim-tree.lua"
    -- <C-b> 打开/关闭文件树
    -- o 打开当前文件到buffer 
    -- <C-t> 切换树目录为父目录

#### treesitter.lua

- "nvim-treesitter/nvim-treesitter"
    -- 提供文本高亮和语法分析
    -- :TSInstall 安装语言

### plugins_git 

#### conflict.lua

- "akinsho/git-conflict.nvim"
    -- 提供merge冲突
    -- co (choose ours) : 选择当前修改
    -- ct (choose theirs) : 选择引入修改
    -- cb (choose both) : 保留两个修改
    -- ]x : 移动到下一处冲突
    -- [x : 移动到上一处冲突

#### gitsigns.lua

- "lewis6991/gitsigns.nvim"
    - 显示 git 信息(删除，修改，添加)
    - 显示blame
    - 显示冲突
    - 更多功能：:Gitsigns 

#### lazyGit.lua 

- "kdheepak/lazygit.nvim"
    -- nvim 内使用 lazyGit
    -- 需安装lazyGit
    -- <leader>LG 启动lazyGit

### plugins_lsp_cmp

#### LuaSnip.lua

- "L3MON4D3/LuaSnip"
    -- 提供补全选项

#### cmps.lua

- "hrsh7th/cmp-path": 提供文件路径补全信息源
- "hrsh7th/cmp-nvim-lua": 提供lua API 补全信息源
- "hrsh7th/cmp-nvim-lsp": 提供lsp补全信息源
- "hrsh7th/cmp-cmdline" : 提供vim command模式补全信息源
- "hrsh7th/cmp-buffer" : 提供文本内已有文本信息源
- "rafamadriz/friendly-snippets" : 通用编程语言补全信息源

#### conformat.lua

- "MunifTanjim/eslint.nvim": 提供格式化规则
- "lukas-reineke/lsp-format.nvim" : 
- "MunifTanjim/prettier.nvim"
- "stevearc/conform.nvim"

#### lspconfig.lua

- "williamboman/mason.nvim"
    -- :MasonInstall lsp_name : 快速安装LSP
- "onsails/lspkind.nvim" : 提供LSP 图标
- "neovim/nvim-lspconfig" : LSP 设置(配置)

#### lspsaga.lua

- "nvimdev/lspsaga.nvim" : better experience for lsp

#### nvim-cmp.lua
- "hrsh7th/nvim-cmp"
    -- 补全配置
    -- <Tab>/<C-n> 选择下一个(shift Tab/<C-p> 上一个)
    -- <CR> 确认选择并补全

### plugins_md

#### md.lua 
    
- "dhruvasagar/vim-table-mode"
    -- 快速表格操作
    -- <leader>tic : 插入一列 
    -- <leader>tdc : 删除一列 
    -- <leader>tdd : 删除一行
- "preservim/vim-markdown"
    -- 提供 markdown 功能
    -- || : 生成表格
- "img-paste-devs/img-paste.vim"

#### markdown-preview.lua

- "brianhuster/live-preview.nvim" : :livePreview 预览markdown, html文件

#### maga-nvim.lua

- "dccsillag/magma-nvim" 
    -- Jupyter执行代码块

### plugins_tex 

#### VimTex.lua 

- "lervag/vimtex"
    -- latex 编译,预览

#### neotex.lua
- "donRaphaco/neotex"
    -- 实时预览（需要zathura等支持实时预览的latex阅读器, windows不支持）
