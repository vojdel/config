local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')
-- Make sure you use single quotes

Plug 'glepnir/dashboard-nvim' --  Dashboard
Plug 'kyazdani42/nvim-web-devicons' --  Recommended (for coloured icons)
Plug('yardnsm/vim-import-cost', { ['do'] = 'npm install' }) --  Import Cost

-- JsDocs
-- Plug('heavenshell/vim-jsdoc', { ['for'] = ['javascript', 'javascriptreact', 'javascript.jsx', 'typescript'], ['do'] = 'make install'})

Plug('folke/tokyonight.nvim', { branch = 'main' }) --  Theme TokyoNight
Plug 'easymotion/vim-easymotion' --  EasyMotion
Plug 'preservim/nerdcommenter' --  Comments
Plug 'christoomey/vim-tmux-navigator' --  Navigation like Tmux - Ctrl + (h,j,k,l)

--  typing
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

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
Plug 'nvim-lua/completion-nvim'
Plug 'glepnir/lspsaga.nvim'
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

-- Completion
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'

-- For ultisnips users.
Plug 'sirver/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'

--  Initialize plugin system
vim.call('plug#end')
