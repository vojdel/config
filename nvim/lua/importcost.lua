vim.cmd [[augroup import_cost_auto_run]]
vim.cmd [[autocmd!]]
vim.cmd [[autocmd InsertLeave *.js,*.jsx,*.ts,*.tsx ImportCost]]
vim.cmd [[autocmd BufEnter *.js,*.jsx,*.ts,*.tsx ImportCost]]
vim.cmd [[autocmd CursorHold *.js,*.jsx,*.ts,*.tsx ImportCost]]
vim.cmd [[augroup END]]