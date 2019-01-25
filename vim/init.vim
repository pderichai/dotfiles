" python interpreter paths
let g:python_host_prog = expand($HOME) . '/anaconda3/envs/neovim2/bin/python'
let g:python3_host_prog = expand($HOME) . '/anaconda3/envs/neovim3/bin/python'

" change the leader key
nnoremap <SPACE> <Nop>
let mapleader = "\<Space>"

" enable mouse
set mouse=a

" draw vertical lines at 80 and 100
set colorcolumn=80,100

" use jk to escape
inoremap jk <Esc>

" enable syntax highlighting
syntax enable

" default tab size set to 4
set tabstop=4
" default shift size set to 4
set shiftwidth=4
" use spaces in tabs by default
set expandtab

" file type specific tab widths
autocmd FileType tex setlocal tabstop=2 shiftwidth=2

" enable line numbers
set number

" better keybindings for pane switching
nnoremap <Leader>j <C-W><C-J>
nnoremap <Leader>k <C-W><C-K>
nnoremap <Leader>l <C-W><C-L>
nnoremap <Leader>h <C-W><C-H>

" clear search highlights quickly
nnoremap <Leader><space> :noh<cr>

" plugins
" specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'valloric/youcompleteme'
Plug 'w0rp/ale'
Plug 'morhetz/gruvbox'

" initialize plugin system
call plug#end()

" open NERDTree wih ctrl-n
map <Leader>n :NERDTreeToggle<CR>

" color scheme
set termguicolors
set background=dark
let g:gruvbox_italic = 1
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
