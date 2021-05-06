vim.cmd[[
    set completeopt=menu,preview,noinsert
    autocmd BufEnter,BufReadPost,FileReadPost,BufNewFile * call system("tmux rename-window " . expand('%'))
    autocmd VimLeave * call system("tmux rename-window bash")
    autocmd FileType cpp nnoremap <buffer> <F9> :w<cr>:!g++ -std=c++17 % -o %< && ./%< < in <cr>
    autocmd FileType cpp nnoremap <buffer> <F5> :w<cr>:!g++ -std=c++17 % -o %<  <cr>
    set noswapfile
    autocmd BufWritePre,BufRead *.html,*.js,*.vue,*.c,*.css,*.cpp,*.json exe ':Neoformat'
    set nowrap                              
]]
-- nnoremap <C-f> :Neoformat <cr>
vim.o.titlestring="%<%F%=%l/%L - nvim"
vim.cmd('set whichwrap+=<,>,[,],h,l') -- move to next line with theses keys
vim.cmd('syntax on') -- syntax highlighting
vim.cmd('set guicursor=a:block')
vim.o.pumheight = 10 -- Makes popup menu smaller
vim.o.fileencoding = "utf-8" -- The encoding written to file
vim.o.cmdheight = 2 -- More space for displaying messages
vim.cmd('set colorcolumn=99999') -- fix indentline for now
vim.o.mouse = "a" -- Enable your mouse
vim.o.splitbelow = true -- Horizontal splits will automatically be below
vim.o.termguicolors = true -- set term gui colors most terminals support this
vim.o.splitright = true -- Vertical splits will automatically be to the right
vim.o.t_Co = "256" -- Support 256 colors
vim.o.conceallevel = 0 -- So that I can see `` in markdown files
vim.cmd('set ts=4') -- Insert 2 spaces for a tab
vim.cmd('set sw=4') -- Change the number of space characters inserted for indentation
vim.bo.expandtab = true -- Converts tabs to spaces
vim.bo.smartindent = true -- Makes indenting smart
vim.wo.cursorline = true -- Enable highlighting of the current line
vim.o.showtabline = 2 -- Always show tabs
vim.o.showmode = false -- We don't need to see things like -- INSERT -- anymore
vim.o.backup = false -- This is recommended by coc
vim.o.writebackup = false -- This is recommended by coc
vim.wo.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
vim.o.updatetime = 300 -- Faster completion
vim.o.timeoutlen = 500 -- By default timeoutlen is 1000 ms
vim.o.clipboard = "unnamedplus" -- Copy paste between vim and everything else
vim.o.guifont = "JetBrainsMono\\ Nerd\\ Font\\ Mono:h18"


