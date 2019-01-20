" Change the leader key.
nnoremap <SPACE> <Nop>
let mapleader = "\<Space>"

" Use jk to escape.
:inoremap jk <Esc>

" Enable syntax highlighting.
syntax enable

" Default tab size set to 4.
set tabstop=4
" Default shift size set to 4.
set shiftwidth=4
" Use spaces in tabs by default.
set expandtab

" File type specific tab widths.
autocmd FileType tex setlocal tabstop=2 shiftwidth=2

" Enable line numbers.
set number

" Better keybindings for pane switching.
nnoremap <Leader>j <C-W><C-J>
nnoremap <Leader>k <C-W><C-K>
nnoremap <Leader>l <C-W><C-L>
nnoremap <Leader>h <C-W><C-H>

" Clear search highlights quickly.
nnoremap <Leader><space> :noh<cr>

" Plugins
" Specify a directory for plugins.
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
Plug 'lervag/vimtex'
Plug 'morhetz/gruvbox'

" Initialize plugin system.
call plug#end()

" Open NERDTree wih ctrl-n.
map <Leader>n :NERDTreeToggle<CR>
" Open NERDTree when opening a directory.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Color scheme.
set background=dark
let g:gruvbox_italic = 1
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
