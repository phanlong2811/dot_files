-- load all plugins
require "plugins"
require "file-icons"

require "misc-utils"
require "top-bufferline"
require "statusline"

require "settings"
require "mappings"
require "telescope-nvim"

require("colorizer").setup()

require "nvim-lspconfig"
require "compe-completion"
-- lsp

local cmd = vim.cmd
local g = vim.g

g.mapleader = " "
g.auto_save = 0

-- colorscheme related stuff

cmd "syntax enable"
cmd "syntax on"

local base16 = require "base16"
base16(base16.themes["material-darker"], true)

require "treesitter-nvim"
require "mappings"

-- highlights --
cmd "hi LineNr guifg=#42464e"
cmd "hi Comment guifg=#42464e"

cmd "hi VertSplit guifg=#2a2e36"
cmd "hi EndOfBuffer guifg=#1e222a"
cmd "hi PmenuSel guibg=#98c379"
cmd "hi Pmenu  guibg=#282c34"

require "telescope-nvim"
require "nvimTree"

-- hide line numbers in terminal windows
vim.api.nvim_exec([[
   au BufEnter term://* setlocal nonumber
]], false)

require "gitsigns-nvim"
require("nvim-autopairs").setup()
require("lspkind").init()
-- inactive statuslines as thin splitlines
cmd("highlight! StatusLineNC gui=underline guifg=#383c44")

cmd "hi clear CursorLine"
cmd "hi cursorlinenr guifg=#abb2bf"



