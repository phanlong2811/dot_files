-- uncomment this if you want to open nvim with a dir
-- vim.cmd [[ autocmd BufEnter * if &buftype != "terminal" | lcd %:p:h | endif ]]

-- Use relative & absolute line numbers in 'n' & 'i' modes respectively
-- vim.cmd[[ au InsertEnter * set norelativenumber ]]
-- vim.cmd[[ au InsertLeave * set relativenumber ]]

vim.cmd[[
    autocmd BufEnter,BufReadPost,FileReadPost,BufNewFile * call system("tmux rename-window " . expand('%:t'))
    autocmd VimLeave * call system("tmux rename-window zsh")
    autocmd FileType cpp nnoremap <buffer> <Enter> :w<cr>:!g++ -O2 -std=c++20 % -o %< -Wall -Dphanlong2811 && ./%< < in <cr>
    autocmd FileType cpp nnoremap <buffer> <F5> :w<cr>:!g++ -O2 -std=c++20 % -o %< -Wall -Wextra <cr>
    autocmd FileType c nnoremap <buffer> <Enter> :w<cr>:!gcc % -o %< -Wall -Wextra -lm && ./%< < in <cr>
    autocmd FileType c nnoremap <buffer> <F5> :w<cr>:!gcc % -o %< -Wall -Wextra -lm <cr>
    autocmd FileType python nnoremap <buffer> <C-]> :w<cr>:!python3 % < in <cr>
    set nowrap
]]
-- Don't show any numbers inside terminals
vim.cmd [[ au TermOpen term://* setlocal nonumber norelativenumber | setfiletype terminal ]]

-- Don't show status line on certain windows
vim.cmd [[ autocmd BufEnter,BufWinEnter,FileType,WinEnter * lua require("core.utils").hide_statusline() ]]

-- Open a file from its last left off position
-- vim.cmd [[ au BufReadPost * if expand('%:p') !~# '\m/\.git/' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif ]]
-- File extension specific tabbing
-- vim.cmd [[ autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 ]]
