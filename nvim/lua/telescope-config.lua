local actions = require('telescope.actions')
require('telescope').setup{
  defaults = {
    prompt_prefix= "🔍 ",
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
    file_ignore_patterns = {
          'node_modules',
          '.git',
          'plugged',
          'pack',
          'lib',
          'vendor'
        }
  }
}
