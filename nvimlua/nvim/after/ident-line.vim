let g:indent_blankline_filetype = ['vim', 'javascript', 'javascriptreact', 'php']
let g:indent_blankline_context_patterns = ['class', 'function', 'method', '^if', '^while', '^for', '^object', '^table', 'block', 'arguments']

hi IndentOne guifg=#DF3537 gui=nocombine
hi IndentTwo guifg=#F7DC6F gui=nocombine
hi IndentThree guifg=#82E0AA gui=nocombine
hi IndentFour guifg=#85C1E9 gui=nocombine
hi IndentFive guifg=#5DADE2 gui=nocombine
hi IndentSix guifg=#D7BDE2 gui=nocombine

let g:indent_blankline_char_highlight_list = [ "IndentOne", "IndentTwo", "IndentThree", "IndentFour", "IndentFive", "IndentSix"  ]
let g:indent_blankline_space_char = " "
let g:indent_blankline_show_trailing_blankline_indent = v:false
