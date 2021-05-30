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
    nnoremap <C-c> <Esc>
    map <C-k> {
    map <C-j> }
    nnoremap <C-l> <C-w>l
    nnoremap <C-h> <C-w>h
    map Q <Nop>
]])



