-- Delete space in white
vim.cmd [[
  augroup AuBufWritePre
    autocmd!
    autocmd BufWritePre * let current_pos = getpos(".")
    autocmd BufWritePre * silent! undojoin | %s/\s\+$//e
    autocmd BufWritePre * silent! undojoin | %s/\n\+\%$//e
    autocmd BufWritePre * call setpos(".", current_pos)
    autocmd BufWritePre,FileWritePre * silent! call mkdir(expand('<afile>:p:h'), 'p')
  augroup END
]]

-- Color When Yank Line
vim.cmd [[
  augroup AuYank
    autocmd!
    autocmd TextYankPost *
      \ lua vim.highlight.on_yank{ higroup="IncSearch", timeout=400, on_visual=true }
  augroup END
]]

-- Tabs PHP
vim.cmd [[ autocmd FileType php setlocal shiftwidth=4 tabstop=4 expandtab ]]

-- Highlight under cursor
--vim.cmd([[autocmd CursorHold   * lua vim.lsp.buf.document_highlight()]])
--vim.cmd([[autocmd CursorHoldI  * lua vim.lsp.buf.document_highlight()]])
--vim.cmd([[autocmd CursorMoved  * lua vim.lsp.buf.clear_references()]])
--vim.cmd([[autocmd CursorMovedI * lua vim.lsp.buf.clear_references()]])
