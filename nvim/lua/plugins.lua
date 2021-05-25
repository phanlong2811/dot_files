local packer = require("packer")
local use = packer.use

-- using { } for using different branch , loading plugin with certain commands etc
return require("packer").startup(
    function()
        -- 1. Manager package
        use "wbthomason/packer.nvim"

        -- color related stuff
        use "siduck76/nvim-base16.lua"
        use "norcalli/nvim-colorizer.lua"

        -- lsp stuff
        use "onsails/lspkind-nvim"
        use "nvim-treesitter/nvim-treesitter"
        use "neovim/nvim-lspconfig"
        use "nvim-lua/plenary.nvim"
        use "hrsh7th/nvim-compe"
        use "windwp/nvim-autopairs"
        use "alvan/vim-closetag"
        use "akinsho/nvim-bufferline.lua"
        use "glepnir/galaxyline.nvim"
        use "lewis6991/gitsigns.nvim"
        
        -- snippet support
        use "hrsh7th/vim-vsnip"

        use "rafamadriz/friendly-snippets"

        -- file managing , picker etc
        use "kyazdani42/nvim-tree.lua"
        use "kyazdani42/nvim-web-devicons"
        use "ryanoasis/vim-devicons"
        use "nvim-telescope/telescope.nvim"
        use "nvim-telescope/telescope-media-files.nvim"
        use "nvim-lua/popup.nvim"
        -- use "folke/which-key.nvim"
        -- use "neoclide/coc.nvim"
        use "folke/todo-comments.nvim"
        use "tpope/vim-commentary"
        use "karb94/neoscroll.nvim"
        use "kovetskiy/sxhkd-vim"
        use "sbdchd/neoformat"
    end,
    {
        display = {
            border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" }
        }
    }
)


