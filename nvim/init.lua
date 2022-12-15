-- Plugins
require('plug')

-- Notify
local notify = require('notification')

-- Mappings
require('map')

-- Theme - Tokyo Night
require('tokyo-night')

-- Configurations Plugins
notify.msg("Hello, Welcome to Space Work!!", "info")
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
--require('holagram-conf')
require('wilder-conf')
require('impatient')

-- NeoVim's Configuration
require('settings')

-- Prettier
--require('format')

-- Auto Start's
require('autostarts')
