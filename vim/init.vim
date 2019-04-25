" python interpreter paths
let g:python_host_prog = expand($HOME) . '/anaconda3/envs/neovim2/bin/python'
let g:python3_host_prog = expand($HOME) . '/anaconda3/envs/neovim3/bin/python'

" change the leader key
nnoremap <Space> <Nop>
let mapleader = "\<Space>"

" draw vertical lines at 80 and 100
set colorcolumn=80,100

" use jk to escape
inoremap jk <Esc>

" enable syntax highlighting
syntax enable

" lower update time to 100ms
set updatetime=100

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

" better keybindings for buffer switching
nnoremap <Leader>b :ls<CR>:b<Space>

" clear search highlights quickly
nnoremap <Leader><Space> :noh<CR>

" plugins
" specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'valloric/youcompleteme'
Plug 'morhetz/gruvbox'
Plug 'vim-syntastic/syntastic'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'ludovicchabant/vim-gutentags'

" initialize plugin system
call plug#end()

" close NERDTree after opening a file
let NERDTreeQuitOnOpen = 1
" delete buffer when deleteing file
let NERDTreeAutoDeleteBuffer = 1
" make things prettier
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" open NERDTree wih ctrl-n
map <Leader>n :NERDTreeToggle<CR>
" close vim if the only window open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" open NERDTree when starting vim with no arguments
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" open NERDTree when opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" remap NERDTree open split commands
let NERDTreeMapOpenSplit = '-'
let NERDTreeMapOpenVSplit = '<Bar>'

" show vim buffers as tabs in airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" set Gutentags cache dir
let g:gutentags_cache_dir = '~/.gutentags'

" close YCM preview window after completing
let g:ycm_autoclose_preview_window_after_completion = 1

" color scheme
set termguicolors
set background=dark
let g:gruvbox_italic = 1
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
