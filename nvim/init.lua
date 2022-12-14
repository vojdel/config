-- Plugins
require('plug')

-- Mappings
require('map')

-- Configurations Plugins
require('tokyo-night')
require('troublerc')
require('lsp-config')
require('nvimtree')
require('lspSaga')
require('lspcolor')
require('treesitterc')
require('buffer-line')
require('ident-line')
require('closetag')
--require('ultisnipper')
--require('lspkindrc')
require('./completion')
--require('tabnine')
require('telescope-config')
require('lualine-config')
require('gitsinsrc')
require('colorizerrc')
require('reload')
--require('importcost')
require('dashboardrc')
require('holagram-conf')
require('wilder-conf')
require("notify")("Hello, Welcome to Space Work!!", "info")

-- NeoVim's Configuration
require('settings')

-- Prettier
--require('format')

-- Auto Start's
require('autostarts')
