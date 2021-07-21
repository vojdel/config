" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

let g:airline_theme='dark'

let g:airline#extensions#tabline#enabled = 0

let g:used_javascript_libs = 'vue,react,angularjs'
let b:javascript_lib_react = 1

augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"

let g:airline_powerline_fonts = 1

let g:coc_global_extensions = [ 'coc-tsserver' ]

let g:javascript_plugin_jsdoc = 1
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_formatter = "jsdoc"

let g:bettercomments_language_aliases = { 'javascript': 'js', 'javascriptreact': 'jsx' }

" Emmet Configure
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.

" NERDCommenter
let g:NERDCreateDefaultMappings = 1

" Need Tree Configure
let NERDTreeQuitOnOpen=1
"let NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapOpenInTab='\t'
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Dirty"     : "✗",
    \ "Ignored"   : "☒",
    \ }

let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
let g:NERDTreeSyntaxEnabledExactMatches = ['dropbox', 'node_modules', 'favicon.ico'] " enable highlight for dropbox and node_modules folders, and favicon.ico files with default colors


let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:NERDTreeGitStatusLogLevel = 3

let g:DevIconsEnableFoldersOpenClose = 1

let g:javascript_plugin_flow = 1

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

let g:gitgutter_max_signs = -1 " default value (Vim < 8.1.0614, Neovim < 0.4.0)
let g:gitgutter_set_sign_backgrounds = 1

lua require("bufferline").setup{}

" indentLine
let g:indent_blankline_filetype = ['vim', 'javascript', 'javascriptreact', 'php']
let g:indent_blankline_context_patterns = ['class', 'function', 'method', '^if', '^while', '^for', '^object', '^table', 'block', 'arguments']
"let g:indent_blankline_show_current_context = v:true
hi IndentOne guifg=#DF3537 gui=nocombine
hi IndentTwo guifg=#F7DC6F gui=nocombine
hi IndentThree guifg=#82E0AA gui=nocombine
hi IndentFour guifg=#85C1E9 gui=nocombine
hi IndentFive guifg=#5DADE2 gui=nocombine
hi IndentSix guifg=#D7BDE2 gui=nocombine
let g:indent_blankline_char_highlight_list = [ "IndentOne", "IndentTwo", "IndentThree", "IndentFour", "IndentFive", "IndentSix"  ]
let g:indent_blankline_space_char = " "
let g:indent_blankline_show_trailing_blankline_indent = v:false

" Default value is clap
let g:dashboard_default_executive ='fzf'
"let g:fzf_layout = { 'down': '~40' }

" Customize fzf colors to match your color scheme
let $FZF_DEFAULT_OPTS="--color=dark --layout=reverse --margin=1,1 --color=fg:15,bg:-1,hl:1,fg+:#ffffff,bg+:0,hl+:1 --color=info:0,pointer:12,marker:4,spinner:11,header:-1"

let $FZF_DEFAULT_COMMAND="git ls-files --cached --others --exclude-standard || fd --type f --type l --hidden --follow"

command! -bang -nargs=? -complete=dir Files
        \ call fzf#vim#files(<q-args>, { 'options': "--prompt '💲 ' $FZF_DEFAULT_OPTS"}, <bang>0)

" Import cost
augroup import_cost_auto_run
  autocmd!
  autocmd InsertLeave *.js,*.jsx,*.ts,*.tsx ImportCost
  autocmd BufEnter *.js,*.jsx,*.ts,*.tsx ImportCost
  autocmd CursorHold *.js,*.jsx,*.ts,*.tsx ImportCost
augroup END
