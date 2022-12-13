require 'nvim-treesitter.configs'.setup {
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
    "comment",
    "glimmer", -- hbs
    "python"
  },
}
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
