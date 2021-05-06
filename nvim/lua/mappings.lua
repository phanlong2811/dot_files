vim.cmd('set ts=4') -- Insert 2 spaces for a tab
vim.cmd('set sw=4') -- Change the number of space characters inserted for indentation
vim.bo.expandtab = true -- Converts tabs to spaces
vim.bo.smartindent = true -- Makes indenting smart
vim.bo.expandtab = true

    -- inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
vim.cmd([[
    inoremap jk <Esc>
    vnoremap < <gv
    vnoremap > >gv
    nnoremap <left> :echoe "Use h"<cr>
    nnoremap <right> :echoe "Use l"<cr>
    nnoremap <up> :echoe "Use k"<cr>
    nnoremap <down> :echoe "Use j"<cr>
    nnoremap <ESC><ESC> :nohlsearch<cr>
    nnoremap L l
    nnoremap H h
    nnoremap l w
    nnoremap h b
    vnoremap l e
    vnoremap h ge
    vnoremap H <left>
    vnoremap L <right>
    inoremap <C-k> <up>
    inoremap <C-j> <down>
    inoremap <C-h> <left>
    inoremap <C-l> <right>
    nnoremap <TAB> :bnext<cr>
    nnoremap <S-TAB> :bprevious<cr>
    nnoremap <C-s> :w <cr>
    nnoremap <C-q> :q!<cr>
    nnoremap <C-w> :bw!<cr>
    nnoremap <C-c> <Esc>
    map <C-k> <C-u>
    map <C-j> <C-d>
    nnoremap <C-l> <C-w>l
    nnoremap <C-h> <C-w>h
    map Q <Nop>
]])

