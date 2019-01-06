" Enable syntax highlighting.
syntax enable

" Default tab size set to 4.
set tabstop=4
" Default shift size set to 4.
set shiftwidth=4
" Use spaces in tabs by default.
set expandtab

" Enable line numbers.
set number

" Plugins
" Specify a directory for plugins.
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'ajh17/spacegray.vim'

" Initialize plugin system.
call plug#end()

" Open NERDTree wih ctrl-n.
map <C-n> :NERDTreeToggle<CR>
" Open NERDTree when opening a directory.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Color scheme.
colorscheme spacegray
