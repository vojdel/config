" TODO: Load plugins here (pathogen or vundle)

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -flo ~.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes

" Dashboard
Plug 'glepnir/dashboard-nvim'

" Buufer Line
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
" Plug 'ryanoasis/vim-devicons' Icons without colours
Plug 'akinsho/nvim-bufferline.lua'
" Import Cost
Plug 'yardnsm/vim-import-cost', { 'do': 'npm install' }
"
"" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Use Search Files
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Modifica la Barra
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Javascript Support
Plug 'pangloss/vim-javascript'
" Typescript Support
Plug 'leafgarland/typescript-vim'
" Libs Javascript Support
Plug 'othree/javascript-libraries-syntax.vim'
" JsDocs
Plug 'heavenshell/vim-jsdoc', { 
  \ 'for': ['javascript', 'javascriptreact.jsx', 'typescript'], 
  \ 'do': 'make install'
\}

" PHP and Laravel Support
Plug 'tpope/vim-dispatch'             "| Optional
Plug 'tpope/vim-projectionist'        "|
Plug 'noahfrederick/vim-composer'     "|
Plug 'noahfrederick/vim-laravel'

" Emmet
Plug 'mattn/emmet-vim', { 'for': 'html' }

" Icons
Plug 'ryanoasis/vim-devicons'

" Nerd Tree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin' " NERDTree Git
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" hexcolor
Plug 'etdev/vim-hexcolor'

" Css-Color
Plug 'ap/vim-css-color'

" Tabular
Plug 'godlygeek/tabular'

" Themes
Plug 'folke/tokyonight.nvim'

" EasyMotion
Plug 'easymotion/vim-easymotion'

" Multi-Cursor
Plug 'terryma/vim-multiple-cursors'

" Comments
Plug 'preservim/nerdcommenter'
Plug 'jbgutierrez/vim-better-comments'

" Snippers
Plug 'sirver/ultisnips'

" Ident Line
Plug 'lukas-reineke/indent-blankline.nvim'

" Navigation like Tmux - Ctrl + (h,j,k,l)
Plug 'christoomey/vim-tmux-navigator'

" typing
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

" test
"Plug 'tyewang/vimux-jest-test'
"Plug 'janko-m/vim-test'

" Git
if has('nvim') || has('patch-8.0.902')
    Plug 'mhinz/vim-signify'
else
    Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Initialize plugin system
call plug#end()
