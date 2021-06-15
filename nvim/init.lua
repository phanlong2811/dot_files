-- load all plugins require "plugins"
require "plugins"
require "file-icons"

require "misc-utils"
require "top-bufferline"
-- require "statusline"
require "statusline2"

require "settings"
require "mappings"
require "telescope-nvim"
require "nvimTree"

require "treesitter-nvim"
-- require "whichkey"
require "dashboard"
require('neoscroll').setup()
require("colorizer").setup()
require("todo-comments").setup()
require('nvim_comment').setup()

require "gitsigns-nvim"
require("lspkind").init()
require("nvim-autopairs").setup()

require "nvim-lspconfig"
require "compe-completion"

local cmd = vim.cmd
local g = vim.g

g.indentLine_enabled = 1
g.indent_blankline_char = "▏"

g.indent_blankline_filetype_exclude = {"help", "terminal", "dashboard"}
g.indent_blankline_buftype_exclude = {"terminal"}

g.indent_blankline_show_trailing_blankline_indent = false
g.indent_blankline_show_first_indent_level = false

g.mapleader = " "
g.auto_save = 0

-- colorscheme related stuff

cmd "syntax on"

local base16 = require "base16"
base16(base16.themes["material"], true)


vim.cmd[[
    let g:neoformat_run_all_formatters = 1
    set bs=2
]]

-- hide line numbers in terminal windows
vim.api.nvim_exec([[
   au BufEnter term://* setlocal nonumber
]], false)



require "highlights"
