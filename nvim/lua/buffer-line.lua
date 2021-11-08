vim.opt.termguicolors = true
require("bufferline").setup{
    close_command = "bdelete! %d",       -- can be a string | function, see "Mouse actions"
    right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
    left_mouse_command = "buffer %d",    -- can be a string | function, see "Mouse actions"
    middle_mouse_command = nil,          -- can be a string | function, see "Mouse actions",
    indicator_icon = '▎',
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    diagnostics =  "nvim_lsp",
    diagnostics_update_in_insert = false,
    diagnostics_indicator = function(count)
      return"("..count..")"
    end
    --function(count, level, diagnostics_dict, context)
      --local icon = level:match("error") and " " or " "
      --return " " .. icon .. count
    --end

}
