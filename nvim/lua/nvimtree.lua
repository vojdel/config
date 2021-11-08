local nvimtree = require('nvim-tree')
local g = vim.g

nvimtree.setup {
  -- closes neovim automatically when the tree is the last **WINDOW** in the view
  auto_close  = false,
  -- hijacks new directory buffers when they are opened.
  update_to_buf_dir   = {
    -- enable the feature
    enable = true,
    -- allow to open the tree if it was previously closed
    auto_open = true,
  },
  -- show lsp diagnostics in the signcolumn
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  view = {
    -- width of the window, can be either a number (columns) or a string in `%`, for left or right side placement
    width = 40,
    -- height of the window, can be either a number (columns) or a string in `%`, for top or bottom side placement
    height = 30,
    -- Hide the root path of the current folder on top of the tree 
    hide_root_folder = false,
    -- side of the tree, can be one of 'left' | 'right' | 'top' | 'bottom'
    side = 'left',
    -- if true the tree will resize itself after opening a file
    auto_resize = false  
  }
}

g.nvim_tree_icons = {
     ['default']= '',
     ['symlink']= '',
     ['git']= {
       ['unstaged']= "✗",
       ['staged']= "✓",
       ['unmerged']= "",
       ['renamed']= "➜",
       ['untracked']= "★",
       ['deleted']= "",
       ['ignored']= "◌"
       },
     ['folder']= {
       ['arrow_open']= "",
       ['arrow_closed']= "",
       ['default']= "",
       ['open']= "",
       ['empty']= "",
       ['empty_open']= "",
       ['symlink']= "",
       ['symlink_open']= "",
       },
    ["lsp"] = {
        ["hint"] = "",
        ["info"] = "",
        ["warning"] = "",
        ["error"] = ""
    }
     }
