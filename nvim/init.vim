" -- EXTERNAL CONFIGS --
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/maps.vim
source ~/.config/nvim/plugin-config.vim
" Color scheme (terminal)
set t_Co=256
set background=dark
let g:dracula_italic = 0
let g:dracula_colorterm = 0
colorscheme dracula
" Clean Search Init
" autocmd vimenter * :let @/=''
" Security
set modelines=0
" Show line numbers
set number
" Mouse
set mouse=a
" Copy in Clipboard
set clipboard+=unnamed
" Identar con 2 espacios
set sw=2
" Show line numbers relative
set rnu
" Show file stats
set ruler
" Blink cursor on error instead of beeping (grr)
set visualbell
" Encoding
set encoding=utf-8
" Whitespace
set wrap
set textwidth=74
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim
" Allow hidden buffers
set hidden
" Rendering
set ttyfast
" Status bar
set laststatus=2
" Last line
set showmode
set showcmd
"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
