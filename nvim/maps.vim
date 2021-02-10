  " TODO: Pick a leader key

let mapleader = " "
noremap <leader>gs :CocSearch
noremap <leader>fs :Files<cr>
noremap <leader>n :tabnew 
noremap <leader>nn :tabnew<cr>
" testing
nnoremap <Leader>t :TestNearest<CR>
nnoremap <Leader>T :TestFile<CR>
nnoremap <Leader>TT :TestSuite<CR>
" NERDTree
map <Leader>nt :NERDTreeFind<CR>
noremap <leader><tab> :NERDTreeToggle<CR>
noremap <S-tab> :NERDTreeToggle<CR>
" S (Shift)
" Clear Search
map <leader><space> :let @/=''<cr>
" Save files
nnoremap <leader>sa :w<CR>
inoremap <c-s> <c-o>:w<CR>
" tabs navigation
map <Leader>h :tabprevious<cr>
map <Leader>l :tabnext<cr>
" Exit files
nnoremap <leader>w :q<cr>

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

" faster scrolling
nnoremap <silent> <C-e> 10<C-e>
nnoremap <silent> <C-y> 10<C-y>

" EasyMotion Maps
nmap <leader>s <Plug>(easymotion-s2)

" Seach
nnoremap / /\v
vnoremap / /\v

" Source File .vimrc
nnoremap <leader>v :source /home/vojdel/.vimrc<CR><CR>
