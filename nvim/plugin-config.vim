" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

let g:airline_theme='dark'

let g:airline#extensions#tabline#enabled = 1

let g:used_javascript_libs = 'vue'

let g:airline_powerline_fonts = 1

" let g:coc_global_extensions = [ 'coc-tsserver' ]

let g:jsdoc_allow_input_prompt = 1

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

" Indent Line
let g:indentLine_char_list = ['|']

let g:gitgutter_max_signs = -1 " default value (Vim < 8.1.0614, Neovim < 0.4.0)
let g:gitgutter_set_sign_backgrounds = 1
