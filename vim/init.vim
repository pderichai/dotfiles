" python interpreter paths for YCM
"let g:python_host_prog = expand($HOME) . '/anaconda3/envs/neovim2/bin/python'
"let g:python3_host_prog = expand($HOME) . '/anaconda3/envs/neovim3/bin/python'

" change the leader key
nnoremap <Space> <Nop>
let mapleader = "\<Space>"

" draw vertical lines at 80 and 100
set colorcolumn=80,100

" highlight line when in insert mode
autocmd InsertEnter,InsertLeave * set cul!

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

" replace the word under cursor
nnoremap <Leader>R :%s/\<<c-r><c-w>\>//g<left><left>
nnoremap <Leader>r :%s/\<<c-r><c-w>\>//gc<left><left><left>

" Tab to switch to next open buffer
nnoremap <Tab> :bnext<CR>
" Shift + Tab to switch to previous open buffer
nnoremap <S-Tab> :bprevious<CR>
" create a new buffer (save it with :w ./path/to/FILENAME)
nnoremap <Leader>B :enew<CR>
" close current buffer
nnoremap <Leader>bq :bp <bar> bd! #<CR>
" close all open buffers
nnoremap <Leader>ba :bufdo bd!<CR>

" plugins
" specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'valloric/youcompleteme'
Plug 'nlknguyen/papercolor-theme'
Plug 'w0rp/ale'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'jreybert/vimagit'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

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
" remap NERDTree open split commands
let NERDTreeMapOpenSplit = '-'
let NERDTreeMapOpenVSplit = '<Bar>'

" show vim buffers as tabs in airline
let g:airline#extensions#tabline#enabled = 1
" use powerline fonts in airline
let g:airline_powerline_fonts = 1
" use the airline theme to match the vim color scheme
let g:airline_theme='papercolor'

" close YCM preview window after completing
"let g:ycm_autoclose_preview_window_after_completion = 1
" do not confirm loading extra YCM configuration
"let g:ycm_confirm_extra_conf = 0

" ALE highlighting throws a ton of errors, so let's disable it
let g:ale_set_highlights = 0

" turn off gitgutter mappings
let g:gitgutter_map_keys = 0

" color scheme
set termguicolors
set background=light
" allow italic and bold text
let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default': {
  \       'allow_italic': 1,
  \       'allow_bold': 1
  \     }
  \   }
  \ }
colorscheme PaperColor
