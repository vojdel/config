vim.cmd [[hi IndentOne guifg=#DF3537 gui=nocombine]]
vim.cmd [[hi IndentTwo guifg=#e5c07b gui=nocombine]]
vim.cmd [[hi IndentThree guifg=#98C379 gui=nocombine]]
vim.cmd [[hi IndentFour guifg=#56B6C2 gui=nocombine]]
vim.cmd [[hi IndentFive guifg=#61AFEF gui=nocombine]]
vim.cmd [[hi IndentSix guifg=#C678DD gui=nocombine]]
vim.cmd [[highlight IndentOdd guifg=NONE guibg=NONE gui=nocombine]]

vim.opt.list = true
vim.opt.listchars:append("eol:↴")

--require("indent_blankline").setup {
    --char_highlight_list = {
        --'IndentOne',
        --'IndentTwo',
        --'IndentThree',
        --'IndentFour',
        --'IndentFive',
        --'IndentSix',
    --},
    --space_char_highlight_list = { 'IndentOdd' },
    --char = '|',
    --space_char_blankline = ' ',
    ----show_end_of_line = true,
    --show_current_context = true,
    --show_trailing_blankline_indent = false,
--}

-- define the highlight groups with only background colors (or leave odd empty to just show the normal background)
--vim.g.indent_blankline_filetype = {'vim', 'javascript', 'javascriptreact', 'php', 'lua'}
-- and then use the highlight groups
vim.g.indent_blankline_char_highlight_list = {"IndentOne", 'IndentTwo', 'IdentThree', 'IndentFour', 'IndentFive', 'IndentSix'}
vim.g.indent_blankline_space_char_highlight_list = "IndentOdd"

-- don't show any characters
vim.g.indent_blankline_char = "|"
vim.g.indent_blankline_space_char = " "

-- when using background, the trailing indent is not needed / looks wrong
vim.g.indent_blankline_show_trailing_blankline_indent = false

vim.g.indent_blankline_buftype_exclude = {'terminal'}
vim.g.indent_blankline_filetype_exclude = {'dashboard'}
