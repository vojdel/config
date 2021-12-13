require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = { 'javascriptreact' },
  },
  ensure_installed = {
    "tsx",
    "php",
    "json",
    "html",
    "css",
    "lua",
    "bash",
    "c",
    "jsdoc",
    "dockerfile",
    "vim",
    "cpp",
    "yaml",
    "comment"
  },
}
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.used_by = { "javascript", "typescript.tsx" }
