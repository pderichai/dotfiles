" Enable syntax highlighting.
syntax enable

" Default tab size set to 4.
set tabstop=4
" Default shift size set to 4.
set shiftwidth=4
" Use spaces in tabs by default.
set expandtab

" Plugins
" Specify a directory for plugins.
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'

" Initialize plugin system.
call plug#end()
