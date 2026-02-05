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
  {'neovim/nvim-lspconfig'}, -- lsp
}

-- ALE
vim.g.ale_virtualtext_cursor = 'disabled'
vim.g.ale_sign_column_always = 1
vim.g.ale_completion_enabled = 1
vim.g.ale_sign_error = '⨉'
vim.g.ale_sign_warning = '⚠'
vim.g.ale_echo_msg_format = '[%linter%] %s [%severity%]'
vim.g.ale_statusline_format = {'⨉ %d', '⚠ %d', '⬥ ok'}
vim.g.ale_cpp_cc_options = "-Wall -std=c++20"
vim.g.ale_linters = {
   c = {'gcc', 'cppcheck', 'clangtidy'},
   cpp = {'gcc', 'cppcheck', 'clangtidy'},
   markdown = {'markdownlint', 'textlint'},
   python = {'ruff', 'mypy'},
}
vim.g.ale_fixers = { 
 c = {'clang-format'},
 cpp = {'clang-format'},
 markdown = {'prettier'},
 javascript = {'prettier'},
 astro = {'prettier'},
 css = {'prettier'},
 sh = {'shfmt'},
}
vim.g.ale_fix_on_save = 1

-- vim-astro
vim.g.astro_typescript = 'enable'
vim.g.astro_stylus = 'enable'

vim.lsp.enable('clangd')

vim.cmd("colorscheme tender")
vim.g.lightline = { colorscheme = 'tender' }
