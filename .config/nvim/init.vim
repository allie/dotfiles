"Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'cakebaker/scss-syntax.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'ryanoasis/vim-devicons'
Plug 'kien/ctrlp.vim'
Plug 'Valloric/YouCompleteMe'
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
cd %:p:h

"Key mapping
nnoremap <esc> :noh<return><esc>

"Sudo write hack
cmap w!! w !sudo tee > /dev/null %

"NERDTree settings
let NERDTreeChDirMode = 2
let g:NERDTreeMouseMode = 3
nnoremap <leader>n :NERDTree .<CR>
autocmd vimenter * if !argc() | NERDTree . | endif
let g:NERDTreeWinSize=40

"ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|bower_components'

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
