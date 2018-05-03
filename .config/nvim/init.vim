"Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'cakebaker/scss-syntax.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf'
call plug#end()

"General settings
filetype on
set number
set hidden
set history=100
filetype indent on
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set autochdir
set ignorecase
set smartcase
set cursorline
cd %:p:h

"Key mapping
nnoremap <esc> :noh<return><esc>

"Sudo write hack
"cmap w!! w !sudo tee > /dev/null %
ca w!! w !sudo tee % >/dev/null

"Keep cursor centered
set so=999

"NERDTree settings
let NERDTreeChDirMode = 2
let g:NERDTreeMouseMode = 3
nnoremap <leader>n :NERDTree .<CR>
autocmd vimenter * if !argc() | NERDTree . | endif
let g:NERDTreeWinSize=40

"FZF
nnoremap <silent> <expr> <C-p> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":FZF -m\<cr>"

"Colours
syntax on
set t_Co=256
color dracula
hi Normal guibg=NONE ctermbg=NONE

"Icons
set encoding=UTF-8
set guifont="OperatorMono_Nerd_Font"
let g:airline_powerline_fonts = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
