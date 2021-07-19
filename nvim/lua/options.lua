local opt = vim.opt
local g = vim.g

opt.ruler = false
opt.hidden = true
opt.ignorecase = true
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.cul = true
opt.mouse = "a"
opt.signcolumn = "yes"
opt.cmdheight = 1
opt.updatetime = 250 -- update interval for gitsigns
opt.timeoutlen = 400
opt.clipboard = "unnamedplus"
vim.o.guicursor="a:block"

-- disable nvim intro
opt.shortmess:append("sI")

-- disable tilde on end of buffer: https://github.com/  neovim/neovim/pull/8546#issuecomment-643643758
vim.cmd[[let &fcs='eob: ']]

-- Numbers
opt.number = true
opt.numberwidth = 2
-- opt.relativenumber = true

-- Indenline
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append("<>hl")

g.mapleader = " "
g.auto_save = false

-- disable builtin vim plugins
g.loaded_gzip = 0
g.loaded_tar = 0
g.loaded_tarPlugin = 0
g.loaded_zipPlugin = 0
g.loaded_2html_plugin = 0
g.loaded_netrw = 0
g.loaded_netrwPlugin = 0
g.loaded_matchit = 0
g.loaded_matchparen = 0
g.loaded_spec = 0

vim.cmd[[
    autocmd BufEnter,BufReadPost,FileReadPost,BufNewFile * call system("tmux rename-window " . expand('%:t'))
    autocmd VimLeave * call system("tmux rename-window zsh")
    autocmd FileType cpp nnoremap <buffer> <F9> :w<cr>:!g++ -O2 -std=c++17 % -o %< -Wall -Wextra && ./%< < in <cr>
    autocmd FileType cpp nnoremap <buffer> <F5> :w<cr>:!g++ -O2 -std=c++17 % -o %< -Wall -Wextra <cr>
    autocmd FileType c nnoremap <buffer> <F9> :w<cr>:!gcc % -o %< -Wall -Wextra -lm && ./%< < in <cr>
    autocmd FileType c nnoremap <buffer> <F5> :w<cr>:!gcc % -o %< -Wall -Wextra -lm <cr>
    autocmd FileType python nnoremap <buffer> <F9> :w<cr>:!python3 % < in <cr>
]]
vim.cmd('set noswapfile')


local M = {}

function M.is_buffer_empty()
    -- Check whether the current buffer is empty
    return vim.fn.empty(vim.fn.expand("%:t")) == 1
end

function M.has_width_gt(cols)
    -- Check if the windows width is greater than a given number of columns
    return vim.fn.winwidth(0) / 2 > cols
end

-- file extension specific tabbing
-- vim.cmd([[autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4]])

return M
