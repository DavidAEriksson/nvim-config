return require('packer').startup({function()
  -- Cheat.sh
  -- use 'DavidAEriksson/cheat.nvim'
	-- Packer
	use 'wbthomason/packer.nvim'
  -- Copilot.vim
  use 'github/copilot.vim'
  -- Lua dev
  use "folke/lua-dev.nvim"

	-- Themes
	use 'kvrohit/substrata.nvim'
	use 'shaunsingh/nord.nvim'
	use "rebelot/kanagawa.nvim"
  use({
    'rose-pine/neovim',
    as = 'rose-pine',
  })
  use "sainnhe/gruvbox-material"
  use "sainnhe/everforest"
  use 'EdenEast/nightfox.nvim'

  use({
    "themercorp/themer.lua",
    config = function()
      require("themer").setup({
        colorscheme = "kanagawa",
        styles = {
          comment = { style = 'italic' },
            ["function"] = { style = 'italic' },
            functionbuiltin = { style = 'italic' },
            variable = { style = 'italic' },
            variableBuiltIn = { style = 'italic' },
            parameter  = { style = 'italic' },
        },
      })
    end
  })

  -- CMP
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'saadparwaiz1/cmp_luasnip'
  use 'hrsh7th/cmp-nvim-lsp'
  use "hrsh7th/cmp-nvim-lua"
  use "hrsh7th/cmp-nvim-lsp-signature-help"

  -- Snippets
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"

  -- LSP
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'

  -- NLUA
	use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'

	-- Trouble
	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup {
			}
		end
	}

	-- Indentation lines and auto pairs
	use 'thaerkh/vim-indentguides'
	use 'jiangmiao/auto-pairs'

	-- Omnisharp
	use 'omnisharp/omnisharp-vim'

	-- Telescope
	use 'nvim-telescope/telescope.nvim'
  use 'ThePrimeagen/git-worktree.nvim'

	-- GIT
	use 'tpope/vim-fugitive'
	use 'airblade/vim-gitgutter'
	use 'APZelos/blamer.nvim'

	-- Rooter
	use 'airblade/vim-rooter'

  -- NvimTree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
  }

	-- Refactoring
	use {
		"ThePrimeagen/refactoring.nvim",
	    	requires = {
        		{"nvim-lua/plenary.nvim"},
        		{"nvim-treesitter/nvim-treesitter"}
    		}
	}
  -- Harpoon
  use 'ThePrimeagen/harpoon'

	-- Devicons
	use 'kyazdani42/nvim-web-devicons'
	use 'ryanoasis/vim-devicons'

	-- Lualine Status Line
	use {
  	'nvim-lualine/lualine.nvim',
  	requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}
	use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

	-- Lua for Neovim completion
	use 'tjdevries/nlua.nvim'

	use {
		'prettier/vim-prettier',
		run = 'yarn install',
	}

	-- Floating termingal
	use 'voldikss/vim-floaterm'

	-- Alpha welcome screen
	use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.opts)
    end
  }
  use {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup {
        plugins = {
          kitty = {
            enabled = true,
            font = "+4",
          },
        },
    }
    end
  }
  -- Todo Comments
  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        -- Custom config can be defined here
      }
    end
  }

  -- Commenting
  use 'numToStr/Comment.nvim'
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- Debugging
  -- use 'puremourning/vimspector'

  -- Blamer
  use 'f-person/git-blame.nvim'

  -- Dim
  use {
    "narutoxy/dim.lua",
    requires = { "nvim-treesitter/nvim-treesitter", "neovim/nvim-lspconfig" },
    config = function()
      require('dim').setup({})
    end
  }

  -- DoGe
  use "kkoomen/vim-doge"
end,
config = {
  display = {
    open_fn = function ()
      return require('packer.util').float({ border = 'single' })
    end
  }
}
})
