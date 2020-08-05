" TODO: Pick a leader key
let mapleader = ","
noremap <leader>gs :CocSearch
noremap <leader>fs :Files<cr>
noremap <leader>n :tabnew 
noremap <leader>nn :tabnew<cr>
" Save files
nnoremap <c-s> :w<CR>
inoremap <c-s> <c-o>:w<CR>
" tabs navigation
map <Leader>h :tabprevious<cr>
map <Leader>l :tabnext<cr>
" Exit files
nnoremap <leader>q :q<cr>
inoremap <leader>q :q<CR>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
:imap ii <Esc>

" diagnostics
nnoremap <Leader>dia  :<C-u>CocList diagnostics<cr>
nnoremap <leader>kp :let @*=expand("%")<CR>

" NERDTree
let mapleader = "<"
noremap <leader>< :NERDTreeToggle<CR>

" Move up/down editor lines
nnoremap j gj
nnoremap k gk
