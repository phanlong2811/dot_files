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
require('neoscroll').setup()
require("colorizer").setup()
require("todo-comments").setup()

require "nvim-lspconfig"
require "compe-completion"
-- lsp
-- require "whichkey"

local cmd = vim.cmd
local g = vim.g

g.mapleader = " "
g.auto_save = 0

-- colorscheme related stuff

cmd "syntax on"

local base16 = require "base16"
base16(base16.themes["material-darker"], true)

require "custom_highlights"


vim.cmd[[
    let g:neoformat_run_all_formatters = 1
    set bs=2
]]

-- hide line numbers in terminal windows
vim.api.nvim_exec([[
   au BufEnter term://* setlocal nonumber
]], false)

require "gitsigns-nvim"
require("nvim-autopairs").setup()
require("lspkind").init()
