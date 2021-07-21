" -- EXTERNAL CONFIGS --
so ~/.config/nvim/plugins.vim
so ~/.config/nvim/maps.vim
so ~/.config/nvim/plugin-config.vim
" Color scheme (terminal)
set t_Co=256
set termguicolors
set background=dark
let g:tokyonight_style = "night"
let g:tokyonight_italic_functions = 1
colorscheme tokyonight
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
"set textwidth=74
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
" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
" Highlight cursor line underneath the cursor horizontally.
set cursorline
set mmp=5000
