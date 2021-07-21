  " TODO: Pick a leader key

let mapleader = " "

" Control Tabs
map <leader>tn :tabnew .<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 

" buftabline
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/

noremap <leader>jd :JsDoc<cr>

nnoremap <Leader>t :t.<CR>

" S (Shift)
" Clear Search
map <leader><space> :let @/=''<cr>
" Save files
nnoremap <leader>sa :w<CR>
nnoremap <leader>ss :wall<CR>
inoremap <c-s> <c-o>:w<CR>
" tabs navigation
map <Leader>h :tabprevious<cr>
map <Leader>l :tabnext<cr>
" Exit files
nnoremap <leader>w :q<cr>
nnoremap <leader>ww :qall<cr>

:imap jj <Esc>
:tnoremap <Esc> <C-\><C-n>

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" faster scrolling
nnoremap <silent> <C-e> 10<C-e>
nnoremap <silent> <C-y> 10<C-y>

" EasyMotion Maps
nmap <leader>s <Plug>(easymotion-s2)

" Seach
nnoremap / /\v
vnoremap / /\v

" To go file init.vim
noremap <leader>ev :tabnew $MYVIMRC<cr>
" Source File .vimrc
nnoremap <leader>sv :source $MYVIMRC<CR>

" Put doble " or ' in worlds
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
vnoremap <leader>" x<esc>a"<esc>pa" <esc>
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
vnoremap <leader>' x<esc>a'<esc>pa' <esc>
