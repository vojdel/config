local key = require('tools')

-- Leader Key
vim.g.mapleader = ' '

-- BufferLine
key.nmap('<leader>tn', ':tabnew<cr>')
key.nmap('<leader>tm', ':BufferLinePick<cr>')
key.nmap('<leader>tc', ':BufferLinePickClose<cr>')
key.nmap('<leader>tr', ':BufferLineMoveNext<cr>')
key.nmap('<leader>tp', ':BufferLineMoveNext<cr>')
key.nmap('<leader>h', ':BufferLineCyclePrev<cr>')
key.nmap('<leader>l', ':BufferLineCycleNext<cr>')
key.nmap('<leader>th', ':BufferLineCloseLeft<cr>')
key.nmap('<leader>tl', ':BufferLineCloseRight<cr>')
key.nmap("<A-1>", "<Cmd>BufferLineGoToBuffer 1<CR>")
key.nmap("<A-2>", ":BufferLineGoToBuffer 2<CR>")
key.nmap("<A-3>", ":BufferLineGoToBuffer 3<CR>")
key.nmap("<A-4>", ":BufferLineGoToBuffer 4<CR>")
key.nmap("<A-5>", ":BufferLineGoToBuffer 5<CR>")
key.nmap("<A-6>", ":BufferLineGoToBuffer 6<CR>")
key.nmap("<A-7>", ":BufferLineGoToBuffer 7<CR>")
key.nmap("<A-8>", ":BufferLineGoToBuffer 8<CR>")
key.nmap("<A-9>", ":BufferLineGoToBuffer 9<CR>")
-- Save, Quit, Esc & Esc terminal
key.nmap('<leader>a', ':w<cr>')
key.nmap('<leader>A', ':wall<cr>')
key.nmap('<C-s>', ':w!<cr>')
key.nmap('<C-q>', ':q!<cr>')
key.imap('jj', '<Esc>')

-- Copy line & copy end line
key.nmap('tt', ':t.<cr>')
key.nmap('Y', 'y$>')

-- move lines
key.nmap('<A-k>', ':m .-2<CR>')
key.nmap('<A-j>', ':m .+1<CR>')

-- Clean Searche
key.nmap("//", ":nohl<CR>")

-- open terminal
key.vmap("<leader>tt", "<cmd>split<CR><cmd>ter<CR><cmd>resize 15<CR>i")
key.nmap("<leader>tt", "<cmd>split<CR><cmd>ter<CR><cmd>resize 15<CR>i")
key.tmap("<ESC>", "<C-\\><C-n>")

-- Add ; in end line
key.nmap("<leader>;", "$a;<ESC>")

-- EasyMotion
key.nmap("<Leader>es", "<Plug>(easymotion-s2)")

-- Diagnostic
--key.nmap('<leader>kp', ":lua print(vim.fn.expand('%:p')) g< :!xclip -i<CR>" )
--key.nmap('<leader>kp', "<Cmd>lua require'tools'.get_relative_fname()<CR>" )
key.nmap('<leader>kp', key.get_relative_fname())
--key.nmap('<leader>kp', ':!xclip -i "/home/vojdel/Workspace/personalConfigs/nvim/lua/tools.lua"')

-- Resize Windows
key.nmap('<leader>>', '10<c-w>>')
key.nmap('<leader><', '10<c-w><')
key.nmap('<C-w><left>', '<C-w><')
key.nmap('<C-w><right>', '<C-w>>')
key.nmap('<C-w><up>', '<C-w>+')
key.nmap('<C-w><down>', '<C-w>-')

-- Faster Scrolling
key.nmap("<C-e>", "15<C-e>")
key.nmap("<C-y>", "15<C-y>")
--key.nmap('<silent> <C-y>', '15<C-y>')

-- Nvim Tree
key.nmap('<S-Tab>', ':NvimTreeToggle<CR>')
key.nmap('<leader>r', ':NvimTreeRefresh<CR>')
key.nmap('<leader>n', ':NvimTreeFindFile<CR>')

-- Go init.lua, source init.lua
key.nmap('<leader>ev', ':tabnew $MYVIMRC<CR>')
key.nmap('<leader>sv', ':Reload<CR>:nohl<CR>')
key.nmap('<leader>sr', ':Restart<CR>:nohl<CR>')

-- Git
key.nmap('<leader>G', ':G<CR>')
key.nmap('<leader>gp', ':Gpush<CR>')
key.nmap('<leader>gl', ':Gpull<CR>')
key.nmap('<leader>ht', ':Gitsigns toggle_current_line_blame<CR>')

-- telescope's Config
key.nmap('ff', '<cmd>Telescope find_files<cr>')
key.nmap('fm', '<cmd>Telescope media_files<cr>')
key.nmap('fr', '<cmd>Telescope registers<cr>')
key.nmap('fl', '<cmd>Telescope current_buffer_fuzzy_find<cr>')
key.nmap('fg', '<cmd>Telescope live_grep<cr>')
key.nmap('fb', '<cmd>Telescope buffers<cr>')
key.nmap('fn', '<cmd>Telescope help_tags<cr>')
key.nmap('fc', '<cmd>Telescope keymaps<cr>')
key.nmap('<leader>ff',
  "<cmd>lua require'telescope.builtin'.find_files({find_command={'fd', vim.fn.expand('<cword>')}})<CR>")
key.nmap('<leader>fm', "<cmd>lua require'telescope'.extensions.media_files.media_files()<cr>")
key.nmap('<leader>fg', "<cmd>lua require'telescope.builtin'.grep_string()<CR>")
key.nmap('<leader>gc', "<cmd>lua require'telescope.builtin'.git_branches()<cr>")
key.nmap('<leader>gl', "<cmd>lua require'telescope.builtin'.git_commits()<cr>")
key.nmap('<leader>gs', "<cmd>lua require'telescope.builtin'.git_status()<cr>")

-- LSPSaga
key.nmap('K', ':Lspsaga hover_doc<CR>')
key.nmap('gs', ':Lspsaga signature_help<CR>')
key.nmap('gh', ':Lspsaga lsp_finder<CR>')
key.nmap('gr', ':Lspsaga rename<CR>')
key.nmap('gd', ':Lspsaga preview_definition<CR>')
key.nmap('<A-d>', ':Lspsaga open_floaterm<CR>')
key.tmap('<A-d>', '<C-\\><C-n>:Lspsaga close_floaterm<CR>')
--key.nmap("<leader>ca", "<cmd>lua require('lspsaga.codeaction').code_action()<CR>")
--key.vmap("<leader>ca", "<cmd>'<,'>lua require('lspsaga.codeaction').range_code_action()<CR>")

-- Completion
-- Use <Tab> and <S-Tab> to navigate through popup menu
key.imap('<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', { noremap = true, silent = false, expr = true })
key.imap('<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<S-Tab>"', { noremap = true, silent = false, expr = true })

-- Trouble
key.nmap("<leader>xx", "<cmd>Trouble<cr>")
key.nmap("<leader>xw", "<cmd>Trouble lsp_workspace_diagnostics<cr>")
key.nmap("<leader>xd", "<cmd>Trouble lsp_document_diagnostics<cr>")
key.nmap("<leader>xl", "<cmd>Trouble loclist<cr>")
key.nmap("<leader>xq", "<cmd>Trouble quickfix<cr>")
key.nmap("gR", "<cmd>Trouble lsp_references<cr>")

-- Merge Tools
key.nmap('<leader>h', ':diffget LOCAL<CR>')
key.nmap('<leader>j', ':diffget BASE<CR>')
key.nmap('<leader>k', ':diffget REMOTE<CR>')

-- LazyGit
key.nmap('<leader>lg', ':LazyGit<CR>')
key.nmap('<leader>lgf', ':LazyGitFilter<CR>')
key.nmap('<leader>lgc', ':LazyGitFilterCurrentFile<CR>')

-- Terminals
key.nmap('tv', ':botright vnew <Bar> :terminal<CR>')
key.nmap('th', ':botright new <Bar> :terminal<CR>')

-- new tab
key.nmap('ss', ':split<Return><C-w>w')
key.nmap('sv', ':vsplit<Return><C-w>w')

-- Select all
key.nmap('<C-a>', 'gg<S-v>G')

-- Increment/Decrement
key.nmap('+', '<C-a>')
key.nmap('-', '<C-x>')

-- Format
key.nmap('<leader>f', ':Neoformat prettier<CR>')
