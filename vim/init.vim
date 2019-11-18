""" General Stuff
" Change the leader key.
nnoremap <Space> <Nop>
let mapleader = "\<Space>"

" Draw vertical lines at 80 and 100.
set colorcolumn=80,100

" Highlight the whole line when in insert mode.
autocmd InsertEnter,InsertLeave * set cul!

" Use "fd" to exit insert, eX, and command modes.
inoremap fd <Esc>
xnoremap fd <Esc>
cnoremap fd <c-c>

" Enable syntax highlighting.
syntax enable

" Lower update time to 100ms.
set updatetime=100

" Set default tab size to 2.
set tabstop=2
" Set default shift size set to 2.
set shiftwidth=2
" Use spaces over tabs by default.
set expandtab

" Enable line numbers.
set number

" Highlight all search matches.
set hlsearch
" Clear search highlights quickly.
nnoremap <Leader><Space> :noh<CR>


"" Keybindings
" Replace the word under cursor.
nnoremap <Leader>R :%s/\<<c-r><c-w>\>//g<left><left>
nnoremap <Leader>r :%s/\<<c-r><c-w>\>//gc<left><left><left>


"" Windows
" Better keybindings for window switching.
nnoremap <Leader>j <C-W><C-J>
nnoremap <Leader>k <C-W><C-K>
nnoremap <Leader>l <C-W><C-L>
nnoremap <Leader>h <C-W><C-H>

" More natural window split openings.
set splitbelow
set splitright


"" Buffers
" Better keybindings for buffer switching.
nnoremap <Leader>bb :ls<CR>:b<Space>

" Switch to next open buffer with "<Tab>".
nnoremap <Tab> :bnext<CR>

" Switch to previous open buffer with "<Shift> + <Tab>".
nnoremap <S-Tab> :bprevious<CR>

" Create a new buffer (save it with :w ./path/to/FILENAME).
nnoremap <Leader>B :enew<CR>

" Close all open buffers.
nnoremap <Leader>ba :bufdo bd<CR>bd<CR>



""" Plugins
" Specify a directory for plugins.
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nlknguyen/papercolor-theme'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-syntastic/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'mhinz/vim-signify'
Plug 'vim-scripts/ShowTrailingWhitespace'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Initialize the plugin system.
call plug#end()


"" NERDTree
" Close NERDTree after opening a file.
let NERDTreeQuitOnOpen = 1

" Delete buffer when deleting file.
let NERDTreeAutoDeleteBuffer = 1

" Make things prettier.
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Open NERDTree wih "<Leader> + n" with the root set to the current working
" directory
nnoremap <expr> <leader>n g:NERDTree.ExistsForTab() && g:NERDTree.IsOpen() ? ":NERDTreeToggle\<CR>" : ":NERDTreeCWD\<CR>"

" Close vim if the only window open is NERDTree.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Remap NERDTree open split commands.
let NERDTreeMapOpenSplit = '-'
let NERDTreeMapOpenVSplit = '<Bar>'


"" airline
" Show vim buffers as tabs in airline.
let g:airline#extensions#tabline#enabled = 1
" Use powerline fonts in airline.
let g:airline_powerline_fonts = 1
" Set the color scheme of airline.
let g:airline_theme='papercolor'


"" FZF
nnoremap <Leader>ff :Files<CR>
nnoremap <Leader>bb :Buffers<CR>
nnoremap <Leader>bl :Lines<CR>fd



""" Color Scheme
" Set Vim-specific sequences for RGB colors.
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

" Allow italics and bold text.
let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default': {
  \       'allow_italic': 1,
  \       'allow_bold': 1
  \     }
  \   }
  \ }

" Set the color scheme.
set background=light
colorscheme PaperColor
