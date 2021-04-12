  " TODO: Pick a leader key

let mapleader = " "
noremap <leader>gs :CocSearch
noremap <leader>fs :Files<cr>
" Buffer List
noremap <Leader>fb :Buffer<cr>
" Search Line
noremap <leader>fl :BLines<cr>
" Search between commits
noremap <leader>fc :Commits<cr>
" Change file tipe
noremap <leader>ft :Filetypes<cr>
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

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
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
nnoremap <leader>rl :source ~/.config/nvim/init.vim<CR><CR>

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
