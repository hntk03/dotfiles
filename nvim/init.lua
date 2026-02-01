vim.opt.number = true
vim.opt.title = true
vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.backspace = indent,eol,start
vim.opt.encoding = "utf-8"
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.autoindent = true
vim.opt.wildmenu = true
vim.opt.completeopt = menu,menuone,noselect
vim.opt.expandtab = true

-- ステータスラインの表示
vim.opt.laststatus = 2

-- タブ、空白、改行の可視化
vim.opt.listchars = { tab = ">.", trail = "_", eol = "↲", }
vim.opt.list = true

-- 検索
vim.opt.incsearch = true

-- クリップボード
vim.opt.clipboard:append( { "unnamed" } )

-- プラグインマネージャー
vim.cmd('packadd vim-jetpack')
require('jetpack.paq') {
  {'tani/vim-jetpack'}, -- bootstrap
  {'mattn/sonictemplate-vim'}, -- template
  {'numToStr/Comment.nvim' }, -- comment 
  {'wuelnerdotexe/vim-astro'}, -- astro syntax highlight
  {'cohama/lexima.vim'}, -- 自動括弧
  {'dense-analysis/ale'}, -- ALE
  {'junegunn/fzf', run = './install' },
  {'junegunn/fzf.vim'},
  {'nvim-treesitter/nvim-treesitter'}, -- syntax highlight
  {'jacoborus/tender.vim'}, -- colorscheme
  {'itchyny/lightline.vim'}, -- ステータスバー
}

vim.cmd("colorscheme tender")
