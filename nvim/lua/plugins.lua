local packer = require("packer")
local use = packer.use

return packer.startup(
    function()
        -- 1. Manager package
        use "wbthomason/packer.nvim"
        use {"tweekmonster/startuptime.vim", cmd = "StartupTime"}
        -- color related stuff
        use "siduck76/nvim-base16.lua"
        use "norcalli/nvim-colorizer.lua"
        use "mg979/vim-visual-multi"
        -- lsp stuff
        use "nvim-treesitter/nvim-treesitter"
        -- use "kabouzeid/nvim-lspinstall"
        use "neovim/nvim-lspconfig"
        use {
            "hrsh7th/nvim-compe",
            event = "InsertEnter",
            config = function()
                require("compe-completion").config()
            end,
            wants = "LuaSnip",
            requires = {
                {
                    "L3MON4D3/LuaSnip",
                    wants = {"friendly-snippets", "custom-snippets"},
                    event = "InsertCharPre",
                    config = function()
                        require("compe-completion").snippets()
                    end
                },
                "rafamadriz/friendly-snippets",
                "phanlong2811/custom-snippets",
            }
        }
        use "windwp/nvim-autopairs"
        use "alvan/vim-closetag"
        use "akinsho/nvim-bufferline.lua"
        use "glepnir/galaxyline.nvim"
        -- git stuff
        use {
            "lewis6991/gitsigns.nvim",
            event = "BufRead",
            config = function()
                require("gitsigns-nvim").config()
            end
        }
        -- file managing , picker etc
        use "kyazdani42/nvim-tree.lua"
        use "kyazdani42/nvim-web-devicons"
        use "ryanoasis/vim-devicons"
        use {
            "nvim-telescope/telescope.nvim",
            requires = {
                {"nvim-lua/popup.nvim"},
                {"nvim-lua/plenary.nvim"},
                {"nvim-telescope/telescope-fzf-native.nvim", run = "make"},
                {"nvim-telescope/telescope-media-files.nvim"}
            },
            cmd = "Telescope",
            config = function()
                require("telescope-nvim").config()
            end
        }
        use "glepnir/dashboard-nvim"
        use "907th/vim-auto-save"
        -- use "folke/which-key.nvim"
        -- use "neoclide/coc.nvim"

        use "wakatime/vim-wakatime"
        use "iamcco/markdown-preview.nvim"
        use "folke/todo-comments.nvim"
        use "terrortylor/nvim-comment"
        use "karb94/neoscroll.nvim"
        use "sbdchd/neoformat"
        use "kovetskiy/sxhkd-vim"
        use {
            "vhyrro/neorg",
            requires = {"nvim-lua/plenary.nvim"},
            config = function()
                require("neorg").setup {
                    load = {
                        ["core.defaults"] = {}, -- Load all the default modules
                        ["core.norg.concealer"] = {} -- Enhances the text editing experience by using icons
                    },
                    -- Tells neorg where to load community provided modules. If unspecified, this is the default
                    community_module_path = vim.fn.stdpath("cache") .. "/neorg_community_modules"
                }
            end
        }
        -- use {"lukas-reineke/indent-blankline.nvim", branch = "lua"}
    end,
    {
        display = {
            border = {"┌", "─", "┐", "│", "┘", "─", "└", "│"}
        }
    }
)
