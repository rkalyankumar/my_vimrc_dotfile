" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
let mapleader = ','

"  You will load your plugin here
"  Make sure you use single quotes
" Initialize plugin system
" absolute width of netrw window
let g:netrw_winsize = -28

" tree-view
let g:netrw_liststyle = 3

" sort is affecting only: directories on the top, files below
let g:netrw_sort_sequence = '[\/]$,*'

" open file in a new tab
let g:netrw_browse_split = 3

Plug 'tomtom/tcomment_vim'
" Leader C is the prefix for code related mappîngs
noremap <silent> <Leader>cc :TComment<CR>

Plug 'ctrlpvim/ctrlp.vim'
" Leader F is for file related mappîngs (open, browse...)
nnoremap <silent> <Leader>f :CtrlP<CR>
nnoremap <silent> <Leader>fm :CtrlPMRU<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctrl B for buffer related mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <Leader>b :CtrlPBuffer<CR> " cycle between buffer
nnoremap <silent> <Leader>bb :bn<CR> "create (N)ew buffer
nnoremap <silent> <Leader>bd :bdelete<CR> "(D)elete the current buffer
nnoremap <silent> <Leader>bu :bunload<CR> "(U)nload the current buffer
nnoremap <silent> <Leader>bl :setnomodifiable<CR> " (L)ock the current buffer"

Plug 'altercation/vim-colors-solarized'
let g:solarized_termcolors=256
let g:solarized_contrast="high"                                 "vim-colors-solarized
set background=dark
colorscheme solarized                                           "vim-colors-solorized

" reloads .vimrc -- making all changes active
map <silent> <Leader>v :source ~/.vimrc<CR>:PlugInstall<CR>:bdelete<CR>:exe ":echo 'vimrc reloaded'"<CR>

Plug 'itchyny/lightline.vim'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Lightline

let g:lightline = { 'colorscheme': 'solarized', }               "vim-lightline
set laststatus=2                                                "vim-lightline
set noshowmode                                                  "vim-lightline


call plug#end()
Plug 'sheerun/vim-polyglot'
Plug 'vim-syntastic/syntastic'

set statusline+=%#warningmsg#                                   "syntastic
set statusline+=%{SyntasticStatuslineFlag()}                    "syntastic
set statusline+=%*                                              "syntastic

let g:syntastic_always_populate_loc_list = 1                    "syntastic
let g:syntastic_auto_loc_list = 1                               "syntastic
let g:syntastic_check_on_open = 1                               "syntastic
let g:syntastic_check_on_wq = 0                                 "syntastic

autocmd FileType python let b:easytags_auto_highlight = 0
let g:easytags_cmd = '/usr/local/bin/ctags'
