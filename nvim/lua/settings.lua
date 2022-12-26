-- settings -- this is all of the basic vim settings
local o = vim.o -- global
local wo = vim.wo -- window local
--local bo = vim.bo -- buffer local
local set = vim.opt

-- global options -- I could explain all of these but then again :h VAR exists...
-- vim.cmd('syntax on')

vim.cmd('filetype plugin indent on')

o.smartcase = true -- ... unless they contain at least one capital letter
o.laststatus = 2 -- Always status bar
o.hlsearch = true -- Highlight matches
o.incsearch = true -- Incremental searching
o.ignorecase = true -- Searches are case insensitive
o.showcmd = true -- Show Message of Mode terminal
o.mouse = 'a' -- Enable mouse
o.ruler = true -- Show position of cursor
o.clipboard = 'unnamedplus' -- Enable clipboard
o.showmode = true -- Show Message of Mode (Insert, Normal, Visual, Replace)
o.encoding = 'UTF-8' -- Encoding
o.sw = 2 -- Ident with two spaces
o.scrolloff = 3
o.shiftwidth = 2
o.softtabstop = 2
o.tabstop = 4
o.expandtab = true
o.formatoptions = 'tcqrn1'
o.si = true
o.ai = true

set.mmp = 5000
set.lazyredraw = true -- Not Redary again on save
set.splitright = true -- Split Windows always right
set.splitbelow = true -- Split Windows always below
set.hidden = true -- Allow hidden buffer
set.termguicolors = true
--set.foldmethod = "syntax"
--set.foldlevelstart = 1
set.cc = '120' -- Color column
set.breakindent = true -- Set virtual lines (only visible when wrap is enable)
--set.guifont = { "FiraCode", "h12" }
--set.statusline:append("< %L ") -- Total lines
--window-local option
wo.number = true -- Number Lines
wo.relativenumber = true -- Relative Number
wo.wrap = true -- Whitespace
wo.cursorline = true -- Highlight cursors line underneath the cursor horizontally.
-- wo.foldenable = true

vim.cmd('set guifont=FiraCode\\ r:h13')
--vim.cmd [[augroup Format]]
--vim.cmd [[autocmd! * <buffer>]]
--vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format({ async = true })]]
--vim.cmd [[augroup END]]

-- You will likely want to reduce updatetime which affects CursorHold
-- note: this setting is global and should be set only once
vim.o.updatetime = 250
vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

vim.cmd [[ autocmd FileType typescript let g:jsdoc_formatter='tsdoc' ]]
--vim.cmd [[autocmd let g:jsdoc_formatter='tsdoc')]]
