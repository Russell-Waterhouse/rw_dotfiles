syntax on 
filetype plugin indent on

set nu
set rnu
set smartindent
set ts=2
set shiftwidth=2
set expandtab
set background=dark

" jk to exit insert mode
imap jk <esc>
imap JK <esc>

" shift + tab to backtab
nnoremap <S-Tab> <<
inoremap <S-Tab> <C-d>

" ctrl + s to save
nnoremap <c-s> :w<CR> 
inoremap <c-s> <Esc>:w<CR>l 
vnoremap <c-s> <Esc>:w<CR>

:command WQ wq
:command Wq wq
:command W w
:command Q q

" plugins (just for haskell right now)

nnoremap <C-l> :%!stylish-haskell<CR>


execute pathogen#infect()
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

