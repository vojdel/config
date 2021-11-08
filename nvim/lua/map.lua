local key = require('tools')

local map = function(key)
  local opts = { noremap = true }
  for i, v in pairs(key) do
    if type(i) == 'string' then opts[i] = v end
  end
  vim.api.nvim_set_keymap(key[1], key[2], key[3], opts)
end

-- Leader Key
vim.g.mapleader = ' '

-- Control Tabs
--map { 'n', '<leader>tn', ':tabnew .<cr>' }
--map { 'n', '<leader>to', ':tabonly<cr>' }
--map { 'n', '<leader>tc', ':tabclose<cr>' }
--map { 'n', '<leader>tm', ':tabmove' }
--map { 'n', '<leader>h', ':tabprevious<cr>' }
--map { 'n', '<leader>l', ':tabnext<cr>' }
-- News maps table
map { 'n', '<leader>tn', ':tabnew<cr>' }
map { 'n', '<leader>tm', ':BufferLinePick<cr>' }
map { 'n', '<leader>tc', ':BufferLinePickClose<cr>' }
map { 'n', '<leader>tr', ':BufferLineMoveNext<cr>' }
map { 'n', '<leader>tp', ':BufferLineMoveNext<cr>' }
map { 'n', '<leader>h', ':BufferLineCyclePrev<cr>' }
map { 'n', '<leader>l', ':BufferLineCycleNext<cr>' }
map { 'n', '<leader>th', ':BufferLineCloseLeft<cr>' }
map { 'n', '<leader>tl', ':BufferLineCloseRight<cr>' }

-- Save, Quit, Esc & Esc terminal
map { 'n', '<leader>a', ':w<cr>' }
map { 'n', '<leader>A', ':wall<cr>' }
map { 'n', 'q', ':q<cr>' }
map { 'n', 'qq', ':qall<cr>' }
map { 'n', '<leader>Q', ':q!<cr>' }
map { 'i', 'jj', '<Esc>' }
map { 'n', 'tt', ':t.<cr>' }

-- EasyMotion
key.nmap("<Leader>es", "<Plug>(easymotion-s2)")

-- Faster Scrolling
key.nmap("<C-e>", "15<C-e>")
key.nmap("<C-y>", "15<C-y>")
--map { 'n', '<silent> <C-y>', '15<C-y>' }

-- Nvim Tree
map { 'n', '<S-Tab>', ':NvimTreeToggle<CR>' }
map { 'n', '<leader>r', ':NvimTreeRefresh<CR>' }
map { 'n', '<leader>n', ':NvimTreeFindFile<CR>' }

-- Go init.lua, source init.lua
map { 'n', '<leader>ev', ':tabnew $MYVIMRC<CR>' }
map { 'n', '<leader>sv', ':source $MYVIMRC<CR>' }

-- telescope's Config
key.nmap('ff', '<cmd>Telescope find_files prompt_prefix=🔍<cr>')
key.nmap('fl', '<cmd>Telescope current_buffer_fuzzy_find<cr>')
key.nmap('fg', '<cmd>Telescope live_grep<cr>')
key.nmap('fb', '<cmd>Telescope buffers<cr>')
key.nmap('fn', '<cmd>Telescope help_tags<cr>')
key.nmap('fc', '<cmd>Telescope keymaps<cr>')

-- LSPSaga
key.nmap('K', ':Lspsaga hover_doc<CR>')
key.nmap('gs', ':Lspsaga signature_help<CR>')
key.nmap('gh', ':Lspsaga lsp_finder<CR>')
key.nmap('gr', ':Lspsaga rename<CR>')
key.nmap('gd', ':Lspsaga preview_definition<CR>')
key.nmap('<A-d>', ':Lspsaga open_floaterm<CR>')
key.tmap('<A-d>', '<C-\\><C-n>:Lspsaga close_floaterm<CR>')

-- LSPConfig

-- Completion
-- Use <Tab> and <S-Tab> to navigate through popup menu
key.imap('<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', { noremap = true, silent = false, expr = true })
key.imap('<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<S-Tab>"', { noremap = true, silent = false, expr = true })

-- Trouble
vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>Trouble<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>xw", "<cmd>Trouble lsp_workspace_diagnostics<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>xd", "<cmd>Trouble lsp_document_diagnostics<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "gR", "<cmd>Trouble lsp_references<cr>", {silent = true, noremap = true})
