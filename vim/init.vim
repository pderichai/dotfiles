""" General Settings
" Turn on filetype detection and filetype indenting.
filetype plugin indent on

" Enable syntax highlighting.
syntax enable

" Indent the next line based on the current line.
set autoindent

" http://stackoverflow.com/questions/2158516/delay-before-o-opens-a-new-line
set timeoutlen=300

" Use utf-8 as the default file encoding.
set encoding=utf-8

" Keep at least two lines above and blow the cursor.
set scrolloff=2

" Turn off showing the mode since this is in vim-airline.
set noshowmode

" Allow unsaved changes in hidden buffers.
set hidden

" Don't wrap long lines.
set nowrap

" Only have one space between lines that are joined.
set nojoinspaces

" Always show the sign column (useful for plugins).
set signcolumn=yes

" Set Python executable.
let g:python3_host_prog='$HOME/anaconda3/envs/neovim3/bin/python'

" Draw vertical lines at 80 and 100.
set colorcolumn=80,100

" Highlight the line that the cursor is currently on.
set cursorline

" Show the current vim command.
set showcmd

" Lower update time to 500ms.
set updatetime=500

" Set default tab size to 2.
set tabstop=2
" Set default shift size set to 2.
set shiftwidth=2
" Use spaces over tabs by default.
set expandtab

" Automatically reload files when they change on disk.
set autoread

" Enable relative line numbers.
set number relativenumber

" Proper search.
set incsearch
set ignorecase
set smartcase
set gdefault
set hlsearch

" Leave paste mode when leaving insert mode.
autocmd InsertLeave * set nopaste

" More natural window split openings.
set splitbelow
set splitright

""" Keybindings
" Change the leader key.
nnoremap <Space> <Nop>
let mapleader = "\<Space>"

" Use "fd" to exit insert, eX, and command modes.
inoremap fd <Esc>
xnoremap fd <Esc>
cnoremap fd <c-c>

" Search results centered please.
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

" Use very magic by default.
nnoremap ? ?\v
nnoremap / /\v
cnoremap %s/ %sm/

" Clear search highlights quickly.
nnoremap <Leader><Space> :noh<CR>

" Replace the word under cursor.
nnoremap <Leader>R :%s/\<<C-r><C-w>\>//g<left><left>
nnoremap <Leader>r :%s/\<<C-r><C-w>\>//gc<left><left><left>
vnoremap <Leader>r "hy:%s/<C-r>h//gc<left><left><left>

" Better keybindings for window switching.
nnoremap <Leader>wj <C-W><C-J>
nnoremap <Leader>wk <C-W><C-K>
nnoremap <Leader>wl <C-W><C-L>
nnoremap <Leader>wh <C-W><C-H>

" Better keybindings for window splits.
nnoremap <Leader>w <C-W>
nnoremap <Leader>w- :split<CR>
nnoremap <Leader>w<Bar> :vsplit<CR>

" Better keybindings for buffer switching.
nnoremap <Leader>bb :ls<CR>:b<Space>

" Switch to next open buffer.
nnoremap <Leader>bn :bnext<CR>
" Switch to previous open buffer.
nnoremap <Leader>bp :bprevious<CR>

" Create a new buffer (save it with :w ./path/to/FILENAME).
nnoremap <Leader>B :enew<CR>

" Close a buffer.
nnoremap <Leader>bd :bd<CR>

" Close all open buffers.
nnoremap <Leader>ba :bufdo bd<CR>bd<CR>

""" Source plugins configs.
runtime plugins.vim

""" Color Scheme
" Use 256 colors.
set t_Co=256

" Allow italics.
let g:gruvbox_italic = 1

" Set the color scheme.
set background=dark
let g:gruvbox_contrast_dark = "hard"
colorscheme gruvbox

""" Source Google vim configs.
runtime google.vim
