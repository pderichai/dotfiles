""" Install Plugins
" Specify a directory for plugins.
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-signify'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/ShowTrailingWhitespace'
Plug 'vim-syntastic/syntastic'

" Initialize the plugin system.
call plug#end()

""" Plugins
"" NERDTree
" Close NERDTree after opening a file.
let NERDTreeQuitOnOpen = 1

" Delete buffer when deleting file.
let NERDTreeAutoDeleteBuffer = 1

" Make things prettier.
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Open NERDTree wih "<Leader> + n" with the root set to the current working
" directory.
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
let g:airline_theme='gruvbox'

"" FZF
nnoremap <Leader>ff :Files<CR>
nnoremap <Leader>bb :Buffers<CR>
nnoremap <Leader>bl :Lines<CR>
