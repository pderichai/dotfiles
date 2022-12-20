""" Install Plugins
" Specify a directory for plugins.
call plug#begin('~/.vim/plugged')

Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mhinz/vim-signify'
Plug 'gruvbox-community/gruvbox'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/ShowTrailingWhitespace'
Plug 'vim-syntastic/syntastic'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'yuezk/vim-js'

" Initialize the plugin system.
call plug#end()

" Initialize glaive.
call glaive#Install()

""" Plugins
"" NERDTree
" Close NERDTree after opening a file.
let NERDTreeQuitOnOpen = 1

" Delete buffer when deleting file.
let NERDTreeAutoDeleteBuffer = 1

" Make things prettier.
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Open NERDTree wih "<Leader> + n + n" with the root set to the current working
" directory. "<Leader> + n + f" opens NERDTree with the current file
" highlighted.
nnoremap <expr> <leader>nn g:NERDTree.ExistsForTab() && g:NERDTree.IsOpen() ? ":NERDTreeToggle\<CR>" : ":NERDTreeCWD\<CR>"
nnoremap <expr> <leader>nf g:NERDTree.ExistsForTab() && g:NERDTree.IsOpen() ? ":NERDTreeToggle\<CR>" : ":NERDTreeFind\<CR>"

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

" Fix the colnr symbol.
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.colnr = "\u33c7"

"" FZF
let g:fzf_layout = { 'window': {'width': 0.8, 'height': 0.8 }}
nnoremap <Leader>ff :Files<CR>
nnoremap <Leader>bb :Buffers<CR>
nnoremap <Leader>bl :Lines<CR>
let $FZF_DEFAULT_OPTS = '--reverse'
let $FZF_DEFAULT_COMMAND = 'ag -l --nocolor --nogroup --hidden'

"" vim-lsp

nnoremap gd   :LspDefinition<CR>  " gd in Normal mode triggers gotodefinition

" Send async completion requests.
" WARNING: Might interfere with other completion plugins.
let g:lsp_async_completion = 1

" Enable UI for diagnostics
let g:lsp_signs_enabled = 1           " enable diagnostics signs in the gutter
let g:lsp_diagnostics_echo_cursor = 1 " enable echo under cursor when in normal mode

" Automatically show completion options
let g:asyncomplete_auto_popup = 1
