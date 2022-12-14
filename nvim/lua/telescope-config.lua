local actions = require('telescope.actions')
require('telescope').load_extension('media_files')
require('telescope').load_extension('lazygit')
require('telescope').setup {
  media_files = {
    -- filetypes whitelist
    -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
    filetypes = { "png", "webp", "jpg", "jpeg", "mp4", "webm", "pdf" },
    find_cmd = "rg" -- find command (defaults to `fd`)
  },
  preview = true,
  defaults = {
    prompt_prefix = "🔍 ",
    --prompt_prefix = " ",
    selection_caret = "  ",
    path_display = { "smart" },
    mappings = {
      i = {
        ["<C-c>"] = actions.close,
        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,
        ["<C-_>"] = actions.which_key, -- keys from pressing <C-/>
      },
      n = {
        ["<esc>"] = actions.close,
        ["gg"] = actions.move_to_top,
        ["G"] = actions.move_to_bottom,

        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,

        ["<PageUp>"] = actions.results_scrolling_up,
        ["<PageDown>"] = actions.results_scrolling_down,
        ["?"] = actions.which_key,
      }
    },
    file_ignore_patterns = {
      'node_modules',
      '.git',
      'plugged',
      'pack',
      'lib',
      'vendor'
    }
  },
}
