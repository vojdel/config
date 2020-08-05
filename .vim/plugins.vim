" TODO: Load plugins here (pathogen or vundle)

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -flo ~.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Use Search Files
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Modifica la Barra
Plug 'vim-airline/vim-airline'
" Modifica lo Visual
Plug 'vim-airline/vim-airline-themes'

" Javascript Support
Plug 'pangloss/vim-javascript'
" Typescript Support
Plug 'leafgarland/typescript-vim'
" Libs Javascript Support
Plug 'othree/javascript-libraries-syntax.vim'

" Emmet
Plug 'mattn/emmet-vim'

" Icons
Plug 'ryanoasis/vim-devicons'

" Nerd Tree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin' " NERDTree Git
Plug 'jistr/vim-nerdtree-tabs'

" hexcolor
Plug 'etdev/vim-hexcolor'

" Tabular
Plug 'godlygeek/tabular'

" syntax
Plug 'scrooloose/syntastic'

" Initialize plugin system
call plug#end()
