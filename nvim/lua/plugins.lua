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
        use "mg979/vim-visual-multi"

        -- lsp stuff
        use "onsails/lspkind-nvim"
        use "nvim-treesitter/nvim-treesitter"
        -- use "kabouzeid/nvim-lspinstall"
        use "neovim/nvim-lspconfig"
        use "nvim-lua/plenary.nvim"
        use "nvim-lua/popup.nvim"
        use "hrsh7th/nvim-compe"
        use "windwp/nvim-autopairs"
        use "alvan/vim-closetag"
        use "akinsho/nvim-bufferline.lua"
        use "glepnir/galaxyline.nvim"
        use "lewis6991/gitsigns.nvim"
        -- snippet support
        use "hrsh7th/vim-vsnip"

        -- file managing , picker etc
        -- use "rafamadriz/friendly-snippets"
        use "kyazdani42/nvim-tree.lua"
        use "kyazdani42/nvim-web-devicons"
        use "ryanoasis/vim-devicons"
        use "nvim-telescope/telescope.nvim"
        use "nvim-telescope/telescope-media-files.nvim"
        use "glepnir/dashboard-nvim"
        use "tweekmonster/startuptime.vim"
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
		use {'vhyrro/neorg', requires = { 'nvim-lua/plenary.nvim' }, config = function()
			require('neorg').setup {
				load = {
					["core.defaults"] = {}, -- Load all the default modules
					["core.norg.concealer"] = {} -- Enhances the text editing experience by using icons
				},
				-- Tells neorg where to load community provided modules. If unspecified, this is the default
				community_module_path = vim.fn.stdpath("cache") .. "/neorg_community_modules"
			}
		end}
        use {"lukas-reineke/indent-blankline.nvim", branch = "lua"}
    end,
    {
        display = {
            border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" }
        }
    }
)


