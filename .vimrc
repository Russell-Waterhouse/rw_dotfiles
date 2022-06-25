syntax on 
filetype plugin indent on

set nu
set rnu
set smartindent
set ts=2
set shiftwidth=2
set expandtab
set background=dark
set splitbelow
set termwinsize=20x0

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

