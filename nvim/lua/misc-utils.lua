local scopes = {o = vim.o, b = vim.bo, w = vim.wo}

local function opt(scope, key, value)
    scopes[scope][key] = value
    if scope ~= "o" then
        scopes["o"][key] = value
    end
end

opt("o", "ruler", false)
opt("o", "showmode", false)
opt("o", "hidden", true)
opt("o", "ignorecase", true)
opt("o", "splitbelow", true)
opt("o", "splitright", true)
opt("o", "termguicolors", true)
opt("w", "cul", true)

opt("o", "mouse", "a")

opt("w", "signcolumn", "yes")
opt("o", "cmdheight", 1)

opt("o", "updatetime", 250) -- update interval for gitsigns
opt("o", "clipboard", "unnamedplus")
opt("o", "timeoutlen", 500)

-- Numbers
opt("w", "number", true)
opt("o", "numberwidth", 4)
-- opt("w", "relativenumber", true)

-- for indenline
-- opt("b", "expandtab", true)
-- opt("b", "tabstop", 4)
-- opt("b", "shiftwidth", 4)
-- opt("b", "smartindent", true)

vim.o.guicursor="a:block"
vim.cmd('set ts=4') -- Insert 2 spaces for a tab
vim.cmd('set sw=4') -- Change the number of space characters inserted for indentation

vim.cmd[[
    autocmd BufEnter,BufReadPost,FileReadPost,BufNewFile * call system("tmux rename-window " . expand('%'))
    autocmd VimLeave * call system("tmux rename-window bash")
    autocmd FileType cpp nnoremap <buffer> <F9> :w<cr>:!g++ -O2 -std=c++17 % -o %< -Wall -Wextra && ./%< < in <cr>
    autocmd FileType cpp nnoremap <buffer> <F5> :w<cr>:!g++ -O2 -std=c++17 % -o %< -Wall -Wextra <cr>
    autocmd FileType c nnoremap <buffer> <F9> :w<cr>:!gcc % -o %< -Wall -Wextra -lm && ./%< < in <cr>
    autocmd FileType c nnoremap <buffer> <F5> :w<cr>:!gcc % -o %< -Wall -Wextra -lm <cr>
    autocmd FileType python nnoremap <buffer> <F9> :w<cr>:!python3 % < in <cr>
]]


-- autocmd BufWritePre,BufRead *.html,*.js,*.vue,*.css,*.cpp,*.json,*.php,*.c exe ':Neoformat'
vim.o.completeopt="menu,preview,noinsert"
vim.cmd('set noswapfile')
vim.cmd('set nowrap')
vim.cmd('syntax on')
vim.o.titlestring="%<%F%=%l/%L - nvim"
vim.cmd('set whichwrap+=<,>,[,],h,l') -- move to next line with theses keys

vim.o.pumheight = 10 -- Makes popup menu smaller
vim.o.fileencoding = "utf-8" -- The encoding written to file
vim.o.cmdheight = 2 -- More space for displaying messages
vim.cmd('set colorcolumn=99999') -- fix indentline for now
vim.o.mouse = "a" -- Enable your mouse
vim.o.splitbelow = true -- Horizontal splits will automatically be below
vim.o.termguicolors = true -- set term gui colors most terminals support this
vim.o.splitright = true -- Vertical splits will automatically be to the right

vim.o.conceallevel = 0 -- So that I can see `` in markdown files

vim.wo.cursorline = true -- Enable highlighting of the current line
vim.o.showtabline = 2 -- Always show tabs
vim.o.showmode = false -- We don't need to see things like -- INSERT -- anymore
vim.o.backup = false -- This is recommended by coc
vim.o.writebackup = false -- This is recommended by coc
vim.wo.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
vim.o.updatetime = 300 -- Faster completion
vim.o.timeoutlen = 500 -- By default timeoutlen is 1000 ms
vim.o.clipboard = "unnamedplus" -- Copy paste between vim and everything else
vim.o.guifont = "JetBrains\\ Mono\\ Regular\\ Nerd\\ Font\\ Complete"
