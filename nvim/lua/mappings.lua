vim.cmd([[
    vnoremap H <left>
    vnoremap L <right>
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
 local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local opt = {}

-- Commenter Keybinding
map("n", "gc", ":CommentToggle<CR>", {noremap = true, silent = true})
map("v", "gc", ":CommentToggle<CR>", {noremap = true, silent = true})

map("i", "jk", "<Esc>", opt)
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
map("n", "<left>", ":echoe \"Use h\"<cr>", opt)
map("n", "<right>", ":echoe \"Use l\"<cr>", opt)
map("n", "<up>", ":echoe \"Use k\"<cr>", opt)
map("n", "<down>", ":echoe \"Use j\"<cr>", opt)
-- map("n", "<Esc><Esc>", ":nohlsearch<cr>", opt)
-- COPY EVERYTHING --
map("n", "<C-a>", "ggVG", opt)
map("n", "L", "l", opt)
map("n", "H", "h", opt)
map("n", "l", "w", opt)
map("n", "h", "b", opt)
map("v", "l", "e", opt)
map("v", "h", "ge", opt)
-- toggle numbers ---
map("n", "<leader>fm", [[ <Cmd> :Neoformat<CR>]], opt)
--
vim.cmd[[inoremap <silent><expr> <Tab> compe#confirm('<Tab>')]]
function _G.completions()
     local npairs = require("nvim-autopairs")
     return npairs.check_break_line_char()
end
map("i", "<CR>", "v:lua.completions()", {expr = true})
 
    -- mappings
-- Telescope
map("n", "<Leader>gt", [[<Cmd> Telescope git_status <CR>]], opt)
map("n", "<Leader>cm", [[<Cmd> Telescope git_commits <CR>]], opt)
map("n", "<Leader>ff", [[<Cmd> Telescope find_files <CR>]], opt)
map("n", "<Leader>fp", [[<Cmd>lua require('telescope').extensions.media_files.media_files()<CR>]], opt)
map("n", "<Leader>fb", [[<Cmd>Telescope Buffers<CR>]], opt)
map("n", "<Leader>fh", [[<Cmd>Telescope help_tags<CR>]], opt)
map("n", "<Leader>fo", [[<Cmd>Telescope oldfiles<CR>]], opt)
