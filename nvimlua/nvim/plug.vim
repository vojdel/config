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

Plug 'glepnir/dashboard-nvim' " Dashboard
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
Plug 'yardnsm/vim-import-cost', { 'do': 'npm install' } " Import Cost

" JsDocs
Plug 'heavenshell/vim-jsdoc', { 
  \ 'for': ['javascript', 'javascriptreact', 'javascript.jsx', 'typescript'], 
  \ 'do': 'make install'
\}

Plug 'folke/tokyonight.nvim' " Theme TokyoNight
Plug 'easymotion/vim-easymotion' " EasyMotion
Plug 'preservim/nerdcommenter' " Comments
Plug 'sirver/ultisnips' " Snippers
Plug 'christoomey/vim-tmux-navigator' " Navigation like Tmux - Ctrl + (h,j,k,l)

" typing
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

" Git
if has('nvim') || has('patch-8.0.902')
    Plug 'mhinz/vim-signify'
else
    Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Lua
Plug 'glepnir/lspsaga.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'glepnir/lspsaga.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'akinsho/nvim-bufferline.lua' " Buffer Line with Lua
Plug 'lukas-reineke/indent-blankline.nvim' " Ident Line

" Initialize plugin system
call plug#end()
