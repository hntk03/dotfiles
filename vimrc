set number
set title
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none
highlight Folded ctermbg=none
highlight EndOfBuffer ctermbg=none
let g:hybrid_use_iTerm_colors = 1
set t_Co=256
syntax on
set cursorline
"set mouse=a
set scrolloff=8
set backspace=indent,eol,start
set encoding=utf-8
set fileencodings=utf-8,sjis,iso-2022-jp
set tabstop=2
set shiftwidth=2
set autoindent "改行時に前の行のインデントを継続する
set wildmenu
set completeopt=menu,menuone,noselect

"for search
set incsearch "インクリメンタルサーチ．一文字入力ごとに検索を行う．

"for clipboard
set clipboard+=unnamed

"Plugin Manager
packadd vim-jetpack
call jetpack#begin()
Jetpack 'tani/vim-jetpack', {'opt': 1} "bootstrap
Jetpack 'mattn/sonictemplate-vim' "template
Jetpack 'tyru/caw.vim.git' "multiline commentout
Jetpack 'wuelnerdotexe/vim-astro' "astro syntax highlight
Jetpack 'cohama/lexima.vim' "auto brackets
Jetpack 'dense-analysis/ale' "ALE
call jetpack#end()

"Plugin sonictemplate
let g:sonictemplate_vim_template_dir = [
      \ '~/.vim/template'
      \]

"Plugin caw.vim.git
nmap <C-K> <Plug>(caw:hatpos:toggle)
vmap <C-K> <Plug>(caw:hatpos:toggle)

"Plugin ale
let g:ale_virtualtext_cursor = 'disabled'
let g:ale_sign_column_always = 1
let g:ale_completion_enabled = 1
let g:ale_sign_error = '⨉'
let g:ale_sign_warning = '⚠'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_cpp_cc_options = "-Wall -std=c++20"
let g:ale_linters = {
		\   'cpp' : ['gcc']
\}

"Plugin vim-astro
let g:astro_typescript = 'enable'
let g:astro_stylus = 'enable'

" Required:
filetype plugin indent on
syntax enable

"色
set termguicolors
" $TERMがxterm以外のときは以下を設定する必要がある。
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum" " 文字色
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum" " 背景色


syntax enable
colorscheme tender
" set lighline theme inside lightline config
let g:lightline = { 'colorscheme': 'tender' }
if (has("termguicolors"))
 set termguicolors
endif
hi Normal ctermbg=NONE guibg=NONE
