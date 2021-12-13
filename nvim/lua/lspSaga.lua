local lspsaga = require 'lspsaga'

lspsaga.init_lsp_saga {
  code_action_icon = '💡',
  debug = true,
  code_action_prompt = {
    enable        = true,
    sign          = true,
    sign_priority = 1,
    virtual_text  = false,
  },
  code_action_keys = { quit = {'q', '<ESC>'}, exec = '<CR>' },
  diagnostic_header_icon = "   ",
  border_style     = "round",
  error_sign = "",
  warn_sign = "",
  hint_sign = "",
  infor_sign = "",
}
