<!-- ~~~ -->
<!--   __  __         _   _                 _            -->
<!--  |  \/  |_   _  | \ | | ___  _____   _(_)_ __ ___   -->
<!--  | |\/| | | | | |  \| |/ _ \/ _ \ \ / / | '_ ` _ \  -->
<!--  | |  | | |_| | | |\  |  __/ (_) \ V /| | | | | | | -->
<!--  |_|  |_|\__, | |_| \_|\___|\___/ \_/ |_|_| |_| |_| -->
<!--          |___/                                      -->
<!-- ~~~ -->
<!--  -->
<!-- ## Basic Configuration -->
<!--  -->
<!-- ### ./lua/configs/ -->
<!--  -->
<!-- To look up the keymaps, see ./lua/configs/Keymaps.lua.  -->
<!--  -->
<!-- For some plugin keymaps, I just use the default keymap. See those plugins on github. -->
<!--  -->
<!-- ## Plugins -->
<!--  -->
<!-- ### ./lua/plugins -->
<!--  -->
<!-- #### Keys.lua -->
<!--  -->
<!-- - "folke/which-key.nvim": -->
<!--     -- keymap hint: when you press <leader> or other keys that have combined maps, the menu will be shown. -->
<!--      -->
<!-- #### coderunner.lua -->
<!--  -->
<!-- - "CRAG666/code_runner.nvim"  -->
<!--     -- Code Runner plugin with c, c++, java, python in my settings. -->
<!--  -->
<!-- #### leap-folder.lua  -->
<!--  -->
<!-- - "chrisgrieser/nvim-origami"  -->
<!--     -- Provide fold method. -->
<!-- - "folke/flash.nvim" -->
<!--     -- 快速跳转. To jump, press 's' and the word the to jump. -->
<!--     -- 快速选中：'S' -->
<!--      -->
<!--  -->
<!-- #### rainbow.lua	 -->
<!--  -->
<!-- - "HiPhish/rainbow-delimiters.nvim" -->
<!--     -- 彩色括号 -->
<!--  -->
<!-- #### telescope.lua -->
<!--  -->
<!-- - "nvim-telescope/telescope.nvim" -->
<!--     --快速查找，按下 <leader>lf 查找文件, <leader>lg 查找字符 -->
<!--  -->
<!--  -->
<!-- #### vim-surround.lua -->
<!--  -->
<!-- - "tpope/vim-surround" -->
<!--     -- 快速操作 ''、""、()、{} 等包围符号： -->
<!--     -- 为光标下单词加上 "" : ysiw" -->
<!--     -- 删除光标下单词的 "" : ds" -->
<!--     -- 为光标所在行添加 "" : yss" -->
<!--     -- 把包围符号由 "" 改为 '' : cs'" -->
<!--  -->
<!-- #### yazi.lua  -->
<!--  -->
<!-- - "mikavilpas/yazi.nvim" -->
<!--     -- yazi in nvim  -->
<!--     -- 需要安装yazi -->
<!--   -->
<!--  -->
<!-- ### lua/plugins_AI -->
<!--  -->
<!-- #### "olimorris/codecompanion.nvim" -->
<!--  -->
<!-- 提供大语言模型支持（主要使用copilot) -->
<!--  -->
<!-- #### "github/copilot.vim" -->
<!--  -->
<!-- copilot 绑定插件 -->
<!--  -->
<!-- ### lua/plugins_UI -->
<!--  -->
<!-- #### "folke/noice.nvim" -->
<!--  -->
<!-- Command 模式界面显示优化、提供错误检查 -->
<!--  -->
<!-- #### "folke/tokyonight.nvim" -->
<!--  -->
<!-- 颜色主题 -->
<!--  -->
<!-- #### "akinsho/toggleterm.nvim" -->
<!--  -->
<!-- neovim内终端 -->
<!--  -->
<!-- #### trouble.lua -->
<!--  -->
<!-- - "rachartier/tiny-inline-diagnostic.nvim" -->
<!--     --  -->
<!-- - "j-hui/fidget.nvim" -->
<!--     -- fidget 图形 -->
<!-- - "folke/todo-comments.nvim" -->
<!--     -- 高亮 "TODO", "FIXME" 文本 -->
<!-- - "folke/trouble.nvim" -->
<!--     -- <leader>xX : 列出当前buffer所有报错信息 -->
<!--     -- <leader>xx : 列出当前工作目录所有报错信息 -->
<!--     -- <leader>cs : 列出文件内函数框架 -->
<!--  -->
<!-- #### vim-illuminate.lua -->
<!--  -->
<!-- - "numToStr/Comment.nvim" -->
<!--     -- 快速注释: <leader>cc 注释，<leader>cu 取消注释, <leader>ci 切换注释 -->
<!-- - "RRethy/vim-illuminate" -->
<!--     -- 高亮当前光标所在位置词 -->
<!--  -->
<!--  -->
<!-- ### lua/plugins_common -->
<!--  -->
<!-- #### autopair.lua -->
<!--  -->
<!-- - "windwp/nvim-autopairs" -->
<!--     -- 自动补齐括号 -->
<!-- - "nvim-lualine/lualine.nvim" -->
<!--     -- 下方状态栏 -->
<!-- - "nvim-lua/plenary.nvim" -->
<!-- - "godlygeek/tabular" -->
<!--     -- 文本对齐 -->
<!--     -- visual模式选中文本，<leader>al + 对齐字符(&,\ 等) -->
<!-- - "nvim-tree/nvim-web-devicons" -->
<!--     -- 提供图标 -->
<!--  -->
<!-- #### buffer.lua -->
<!--  -->
<!-- - "j-morano/buffer_manager.nvim" -->
<!--     -- <leader><Tab> 展示当前所有buffer，dd删除 -->
<!-- - "romgrk/barbar.nvim" -->
<!--     -- 上方buffer显示。 -->
<!--     -- <Alt> + j/k, 前/后一个buffer -->
<!--     -- <Alt> + c, 关闭当前buffer  -->
<!--     -- <Alt> + num, 第num个buffer -->
<!--     -- <Alt> + p, 折叠当前buffer名，只保留图标 -->
<!--  -->
<!-- #### nvimTree.lua -->
<!--  -->
<!-- - "nvim-tree/nvim-tree.lua" -->
<!--     -- <C-b> 打开/关闭文件树 -->
<!--     -- o 打开当前文件到buffer  -->
<!--     -- <C-t> 切换树目录为父目录 -->
<!--  -->
<!-- #### treesitter.lua -->
<!--  -->
<!-- - "nvim-treesitter/nvim-treesitter" -->
<!--     -- 提供文本高亮和语法分析 -->
<!--     -- :TSInstall 安装语言 -->
<!--  -->
<!-- ### plugins_git  -->
<!--  -->
<!-- #### conflict.lua -->
<!--  -->
<!-- - "akinsho/git-conflict.nvim" -->
<!--     -- 提供merge冲突 -->
<!--     -- co (choose ours) : 选择当前修改 -->
<!--     -- ct (choose theirs) : 选择引入修改 -->
<!--     -- cb (choose both) : 保留两个修改 -->
<!--     -- ]x : 移动到下一处冲突 -->
<!--     -- [x : 移动到上一处冲突 -->
<!--  -->
<!-- #### gitsigns.lua -->
<!--  -->
<!-- - "lewis6991/gitsigns.nvim" -->
<!--     - 显示 git 信息(删除，修改，添加) -->
<!--     - 显示blame -->
<!--     - 显示冲突 -->
<!--     - 更多功能：:Gitsigns  -->
<!--  -->
<!-- #### lazyGit.lua  -->
<!--  -->
<!-- - "kdheepak/lazygit.nvim" -->
<!--     -- nvim 内使用 lazyGit -->
<!--     -- 需安装lazyGit -->
<!--     -- <leader>LG 启动lazyGit -->
<!--  -->
<!-- ### plugins_lsp_cmp -->
<!--  -->
<!-- #### LuaSnip.lua -->
<!--  -->
<!-- - "L3MON4D3/LuaSnip" -->
<!--     -- 提供补全选项 -->
<!--  -->
<!-- #### cmps.lua -->
<!--  -->
<!-- - "hrsh7th/cmp-path": 提供文件路径补全信息源 -->
<!-- - "hrsh7th/cmp-nvim-lua": 提供lua API 补全信息源 -->
<!-- - "hrsh7th/cmp-nvim-lsp": 提供lsp补全信息源 -->
<!-- - "hrsh7th/cmp-cmdline" : 提供vim command模式补全信息源 -->
<!-- - "hrsh7th/cmp-buffer" : 提供文本内已有文本信息源 -->
<!-- - "rafamadriz/friendly-snippets" : 通用编程语言补全信息源 -->
<!--  -->
<!-- #### conformat.lua -->
<!--  -->
<!-- - "MunifTanjim/eslint.nvim": 提供格式化规则 -->
<!-- - "lukas-reineke/lsp-format.nvim" :  -->
<!-- - "MunifTanjim/prettier.nvim" -->
<!-- - "stevearc/conform.nvim" -->
<!--  -->
<!-- #### lspconfig.lua -->
<!--  -->
<!-- - "williamboman/mason.nvim" -->
<!--     -- :MasonInstall lsp_name : 快速安装LSP -->
<!-- - "onsails/lspkind.nvim" : 提供LSP 图标 -->
<!-- - "neovim/nvim-lspconfig" : LSP 设置(配置) -->
<!--  -->
<!-- #### lspsaga.lua -->
<!--  -->
<!-- - "nvimdev/lspsaga.nvim" : better experience for lsp -->
<!--  -->
<!-- #### nvim-cmp.lua -->
<!-- - "hrsh7th/nvim-cmp" -->
<!--     -- 补全配置 -->
<!--     -- <Tab>/<C-n> 选择下一个(shift Tab/<C-p> 上一个) -->
<!--     -- <CR> 确认选择并补全 -->
<!--  -->
<!-- ### plugins_md -->
<!--  -->
<!-- #### md.lua  -->
<!--      -->
<!-- - "dhruvasagar/vim-table-mode" -->
<!--     -- 快速表格操作 -->
<!--     -- <leader>tic : 插入一列  -->
<!--     -- <leader>tdc : 删除一列  -->
<!--     -- <leader>tdd : 删除一行 -->
<!-- - "preservim/vim-markdown" -->
<!--     -- 提供 markdown 功能 -->
<!--     -- || : 生成表格 -->
<!-- - "img-paste-devs/img-paste.vim" -->
<!--  -->
<!-- #### markdown-preview.lua -->
<!--  -->
<!-- - "brianhuster/live-preview.nvim" : :livePreview 预览markdown, html文件 -->
<!--  -->
<!-- #### maga-nvim.lua -->
<!--  -->
<!-- - "dccsillag/magma-nvim"  -->
<!--     -- Jupyter执行代码块 -->
<!--  -->
<!-- ### plugins_tex  -->
<!--  -->
<!-- #### VimTex.lua  -->
<!--  -->
<!-- - "lervag/vimtex" -->
<!--     -- latex 编译,预览 -->
<!--  -->
<!-- #### neotex.lua -->
<!-- - "donRaphaco/neotex" -->
<!--     -- 实时预览（需要zathura等支持实时预览的latex阅读器, windows不支持） -->
~~~
  __  __         _   _                 _           
 |  \/  |_   _  | \ | | ___  _____   _(_)_ __ ___  
 | |\/| | | | | |  \| |/ _ \/ _ \ \ / / | '_ ` _ \ 
 | |  | | |_| | | |\  |  __/ (_) \ V /| | | | | | |
 |_|  |_|\__, | |_| \_|\___|\___/ \_/ |_|_| |_| |_|
         |___/                                     
~~~
> To read the Chinese version, see [README_ch.md](./README_ch.md)

## Basic Configuration

### `./lua/configs/`
- Keymaps: See `./lua/configs/Keymaps.lua`
- Some plugins use default keymaps (check their GitHub repos)

## Plugins

### Core Plugins (`./lua/plugins`)

#### Essentials
- **`Keys.lua`**
  - `folke/which-key.nvim`: Shows keymap hints when pressing `<leader>` or other combo keys

#### Code Execution
- **`coderunner.lua`**
  - `CRAG666/code_runner.nvim`: Runs code (C, C++, Java, Python in my config)

#### Navigation
- **`leap-folder.lua`**
  - `chrisgrieser/nvim-origami`: Advanced folding
  - `folke/flash.nvim`: 
    - Jump: Press `s` + target word
    - Select: Press `S`

#### Syntax
- **`rainbow.lua`**
  - `HiPhish/rainbow-delimiters.nvim`: Colored bracket pairs

#### Search
- **`telescope.lua`**
  - `nvim-telescope/telescope.nvim`: 
    - `<leader>lf`: Find files
    - `<leader>lg`: Find text

#### Text Objects
- **`vim-surround.lua`**
  - `tpope/vim-surround`: Quick text wrapping
    - `ysiw"`: Wrap word with `""`
    - `ds"`: Remove `""`
    - `yss"`: Wrap line with `""`
    - `cs'"`: Change `""` to `''`

#### File Explorer
- **`yazi.lua`**
  - `mikavilpas/yazi.nvim`: Yazi file manager in Neovim (requires Yazi installation)

### AI Plugins (`lua/plugins_AI`)
- `olimorris/codecompanion.nvim`: LLM support (mainly Copilot)
- `github/copilot.vim`: Copilot integration

### UI Plugins (`lua/plugins_UI`)
- `folke/noice.nvim`: Enhanced command UI and error display
- `folke/tokyonight.nvim`: Color scheme
- `akinsho/toggleterm.nvim`: Built-in terminal

#### **`trouble.lua`**
- `rachartier/tiny-inline-diagnostic.nvim`: Inline diagnostics
- `j-hui/fidget.nvim`: Progress indicators
- `folke/todo-comments.nvim`: Highlights `TODO`, `FIXME` comments
- `folke/trouble.nvim`: 
  - `<leader>xX`: Current buffer errors
  - `<leader>xx`: Workspace errors
  - `<leader>cs`: File outline

#### **`vim-illuminate.lua`**
- `numToStr/Comment.nvim`: 
  - `<leader>cc`: Comment
  - `<leader>cu`: Uncomment
  - `<leader>ci`: Toggle comment
- `RRethy/vim-illuminate`: Highlights word under cursor

### Common Utilities (`lua/plugins_common`)

#### **`autopair.lua`**
- `windwp/nvim-autopairs`: Auto-close brackets
- `nvim-lualine/lualine.nvim`: Status line
- `godlygeek/tabular`: Text alignment
  - Visual select + `<leader>al` + alignment char (e.g., `&`, `\`)
- `nvim-tree/nvim-web-devicons`: File icons

#### **`buffer.lua`**
- `j-morano/buffer_manager.nvim`: 
  - `<leader><Tab>`: Show buffers
  - `dd`: Delete buffer
- `romgrk/barbar.nvim`: 
  - `<Alt>+j/k`: Previous/next buffer
  - `<Alt>+c`: Close buffer
  - `<Alt>+[num]`: Switch to buffer [num]
  - `<Alt>+p`: Toggle buffer name (icon-only mode)

#### **`nvimTree.lua`**
- `nvim-tree/nvim-tree.lua`: 
  - `<C-b>`: Toggle file tree
  - `o`: Open file
  - `<C-t>`: Move to parent directory

#### **`treesitter.lua`**
- `nvim-treesitter/nvim-treesitter`: Syntax highlighting
  - `:TSInstall`: Install language support

### Git Plugins (`plugins_git`)

#### **`conflict.lua`**
- `akinsho/git-conflict.nvim`: Merge conflict resolution
  - `co`: Choose our changes
  - `ct`: Choose their changes
  - `cb`: Keep both changes
  - `]x`/`[x`: Next/previous conflict

#### **`gitsigns.lua`**
- `lewis6991/gitsigns.nvim`: Git indicators
  - Shows changes/blame
  - `:Gitsigns` for more commands

#### **`lazyGit.lua`**
- `kdheepak/lazygit.nvim`: 
  - `<leader>LG`: Launch lazygit (requires installation)

### LSP & Completion (`plugins_lsp_cmp`)

#### **`LuaSnip.lua`**
- `L3MON4D3/LuaSnip`: Snippet engine

#### **`cmps.lua`**
Completion sources:
- `hrsh7th/cmp-path`: File paths
- `hrsh7th/cmp-nvim-lua`: Lua API
- `hrsh7th/cmp-nvim-lsp`: LSP
- `hrsh7th/cmp-cmdline`: Commands
- `hrsh7th/cmp-buffer`: Buffer text
- `rafamadriz/friendly-snippets`: Common snippets

#### **`conformat.lua`**
- Formatting tools:
  - `MunifTanjim/eslint.nvim`
  - `lukas-reineke/lsp-format.nvim`
  - `MunifTanjim/prettier.nvim`
  - `stevearc/conform.nvim`

#### **`lspconfig.lua`**
- `williamboman/mason.nvim`: LSP manager (`:MasonInstall`)
- `onsails/lspkind.nvim`: LSP icons
- `neovim/nvim-lspconfig`: LSP configuration

#### **`lspsaga.lua`**
- `nvimdev/lspsaga.nvim`: Enhanced LSP UI

#### **`nvim-cmp.lua`**
- `hrsh7th/nvim-cmp`: Completion core
  - `<Tab>`/`<C-n>`: Next item
  - `<S-Tab>`/`<C-p>`: Previous item
  - `<CR>`: Confirm selection

### Markdown (`plugins_md`)

#### **`md.lua`**
- `dhruvasagar/vim-table-mode`: 
  - `<leader>tic`: Insert column
  - `<leader>tdc`: Delete column
  - `<leader>tdd`: Delete row
- `preservim/vim-markdown`: 
  - `||`: Create table
- `img-paste-devs/img-paste.vim`: Image paste

#### **`markdown-preview.lua`**
- `brianhuster/live-preview.nvim`: `:livePreview` for Markdown/HTML

#### **`maga-nvim.lua`**
- `dccsillag/magma-nvim`: Jupyter code execution

### LaTeX (`plugins_tex`)

#### **`VimTex.lua`**
- `lervag/vimtex`: LaTeX compilation/preview

#### **`neotex.lua`**
- `donRaphaco/neotex`: Live preview (requires Zathura)
