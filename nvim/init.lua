-- load all plugins
require "plugins"
require "misc-utils"

require "top-bufferline"
require "statusline2"

require("neoscroll").setup() -- smooth scroll

-- lsp stuff
require "nvim-lspconfig"
-- require "compe-completion"

local cmd = vim.cmd
local g = vim.g

g.mapleader = " "
g.auto_save = 0

-- colorscheme related stuff
cmd "syntax on"

local base16 = require "base16"
-- material
-- base16(base16.themes["nvchad-softgruv"], true)
base16(base16.themes["material"], true)

require "highlights"

require "treesitter-nvim"
require "mappings"

require "nvimTree" -- file tree stuff
require "file-icons"


-- git signs , lsp symbols etc
require("colorizer").setup()
require("nvim-autopairs").setup()

-- hide line numbers , statusline in specific buffers!
vim.api.nvim_exec(
[[
   au BufEnter term://* setlocal nonumber
   au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "NvimTree" | set laststatus=0 | else | set laststatus=2 | endif
   au BufEnter term://* set laststatus=0 
]],
    false
)

require("nvim_comment").setup()
require("dashboard")
