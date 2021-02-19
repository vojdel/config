  " TODO: Pick a leader key

let mapleader = " "
noremap <leader>gs :CocSearch
noremap <leader>fs :Files<cr>

" Control Tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/

" testing
nnoremap <Leader>t :TestNearest<CR>
nnoremap <Leader>T :TestFile<CR>
nnoremap <Leader>TT :TestSuite<CR>
" NERDTree
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>
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

"Format sql
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

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
