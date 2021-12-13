local Plug = vim.fn['plug#']
local install_path = '~/.local/share/nvim/site/autoload/plug.vim'

-- if not install vim-plug
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.cmd [[
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
  ]]
end

vim.call('plug#begin', '~/.config/nvim/plugged')
-- Make sure you use single quotes

Plug 'glepnir/dashboard-nvim' --  Dashboard
Plug 'kyazdani42/nvim-web-devicons' --  Recommended (for coloured icons)
--Plug('yardnsm/vim-import-cost', { ['do'] = 'npm install --production' }) --  Import Cost

Plug('folke/tokyonight.nvim', { branch = 'main' }) --  Theme TokyoNight
Plug 'easymotion/vim-easymotion' --  EasyMotion
Plug 'preservim/nerdcommenter' --  Comments

-- Tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator' --  Navigation like Tmux - Ctrl + (h,j,k,l)

--  typing
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'AndrewRadev/tagalong.vim'
Plug 'editorconfig/editorconfig-vim'

--  Git
if vim.fn.has('nvim') or vim.fn.has('patch-8.0.902') then
    Plug 'mhinz/vim-signify'
else
    Plug('mhinz/vim-signify', { branch = 'legacy' })
end
Plug 'tpope/vim-fugitive'
--Plug 'airblade/vim-gitgutter'
Plug 'lewis6991/gitsigns.nvim'

--  Lua
Plug 'glepnir/lspsaga.nvim'
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})  --  We recommend updating the parsers on update
Plug 'neovim/nvim-lspconfig'
--Plug 'glepnir/lspsaga.nvim'
Plug 'tami5/lspsaga.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'akinsho/nvim-bufferline.lua' --  Buffer Line with Lua
Plug 'lukas-reineke/indent-blankline.nvim' --  Ident Line
Plug 'kyazdani42/nvim-tree.lua' --  File Explorer
Plug 'nvim-lualine/lualine.nvim'
Plug 'folke/trouble.nvim'
Plug 'folke/lsp-colors.nvim'
Plug 'onsails/lspkind-nvim'
Plug 'ray-x/lsp_signature.nvim'
--Plug 'folke/which-key.nvim'
Plug 'famiu/nvim-reload'

-- Completion
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
--Plug('tzachar/cmp-tabnine', { [ 'do' ] = './install.sh' })

-- For ultisnips users.
Plug 'sirver/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'

-- Multiples select
Plug 'terryma/vim-multiple-cursors'

-- PHP Blade
Plug 'jwalton512/vim-blade'

--  Initialize plugin system
vim.call('plug#end')
