vim.cmd [[
  let neoformat_try_node_exe = 1
]]
vim.cmd [[
  autocmd BufWritePre *.js,*.ts Neoformat
]]
