return require('packer').startup(function()
	-- Packer
	use 'wbthomason/packer.nvim'
	
	-- Themes
	use 'kvrohit/substrata.nvim'

	-- LSP
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'
	use 'folke/lsp-colors.nvim'
	use 'onsails/lspkind-nvim'
	use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim' 
	
	-- Trouble
	use 'folke/trouble.nvim'
	
	-- Indentation lines and auto pairs
	use 'thaerkh/vim-indentguides'
	use 'jiangmiao/auto-pairs'

	-- Omnisharp
	use 'omnisharp/omnisharp-vim'

	-- Telescope
	use 'nvim-telescope/telescope.nvim'

	-- GIT
	use 'tpope/vim-fugitive'
	use 'airblade/vim-gitgutter'
	use 'APZelos/blamer.nvim'

	-- NerdTree
	use 'preservim/nerdtree'

	-- Airline
	use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes' 

	-- Refactoring
	use {
		"ThePrimeagen/refactoring.nvim",
	    	requires = {
        		{"nvim-lua/plenary.nvim"},
        		{"nvim-treesitter/nvim-treesitter"}
    		}
	}
	
	-- Devicons
	use 'kyazdani42/nvim-web-devicons'
end)