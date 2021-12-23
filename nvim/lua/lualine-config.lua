require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'tokyonight',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {
      { 'diagnostics',
        sources = { 'nvim_diagnostic' },
        symbols = { error = ' ', warn = ' ', info = ' ' },
        diagnostics_color = {
          color_error = { fg = '#ec5f67' },
          color_warn = { fg = '#ECBE7B' },
          color_info = { fg = '#008080' },
        }
      }
      , 'filename',
      {
        'diff',
        -- Is it me or the symbol for modified us really weird
        symbols = { added = ' ', modified = '柳', removed = ' ' },
        diff_color = {
          added = { fg = '#98be65' },
          modified = { fg = '#FF8800' },
          removed = { fg = '#ec5f67' },
        },
        cond = function()
          return vim.fn.winwidth(0) > 80
        end,
      },
      {
        -- Lsp server name .
        function()
          local msg = 'No Active Lsp'
          local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
          local clients = vim.lsp.get_active_clients()
          if next(clients) == nil then
            return msg
          end
          for _, client in ipairs(clients) do
            local filetypes = client.config.filetypes
            if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
              return client.name
            end
          end
          return msg
        end,
        icon = '  LSP:',
        color = { fg = '#ffffff', gui = 'bold' },
      }
    },
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location', '%L'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {
    },
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
