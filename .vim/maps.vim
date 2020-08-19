" TODO: Pick a leader key

let mapleader = ","
noremap <leader>gs :CocSearch
noremap <leader>fs :Files<cr>
noremap <leader>n :tabnew 
noremap <leader>nn :tabnew<cr>
noremap n. <leader>cc NERDCommenterComment<cr>
" NERDTree
noremap <leader><tab> :NERDTreeToggle<CR>
noremap <S-tab> :NERDTreeToggle<CR>
" S (Shift)
" Clear Search
map <leader><space> :let @/=''<cr>
" Save files
nnoremap <c-s> :w<CR>
inoremap <c-s> <c-o>:w<CR>
" tabs navigation
map <Leader>h :tabprevious<cr>
map <Leader>l :tabnext<cr>
" Exit files
nnoremap <leader>q :q<cr>
inoremap <leader>q :q<CR>

" Show autocomplete when Tab is pressed
inoremap <silent><expr> <Tab> coc#refresh()

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
:imap ii <Esc>

" diagnostics
nnoremap <Leader>dia  :<C-u>CocList diagnostics<cr>
nnoremap <leader>kp :let @*=expand("%")<CR>

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" EasyMotion Maps
let mapleader=" "
nmap <leader>s <Plug>(easymotion-s2)

" Seach
nnoremap / /\v
vnoremap / /\v

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Formatting
map <leader>q gqip
