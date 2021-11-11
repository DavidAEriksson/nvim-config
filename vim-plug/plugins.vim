"auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'github/copilot.vim'                                       " Copilot
    " Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'sheerun/vim-polyglot'                                     " Better Syntax Support
    Plug 'jiangmiao/auto-pairs'                                     " Auto pairs for '(' '[' '{'
    Plug 'vim-airline/vim-airline'                                  " Airline 
    Plug 'vim-airline/vim-airline-themes'                           " Airline themes
    Plug 'ryanoasis/vim-devicons'                                   " Devicons
    Plug 'arcticicestudio/nord-vim'                                 " Nord theme
    " Plug 'morhetz/gruvbox'
    Plug 'thaerkh/vim-indentguides'                                 " Indent Guides
    Plug 'epilande/vim-react-snippets'                              " React snippets
    Plug 'tellijo/vim-react-native-snippets'                        " React Native snippets
    Plug 'airblade/vim-gitgutter'                                   " Gitgutter
    Plug 'xuyuanp/nerdtree-git-plugin'                              " Nerdtree git plugin
    Plug 'mattn/emmet-vim'                                          " Emmet
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }             " FZF
    Plug 'junegunn/fzf.vim'                                         " FZF
    Plug 'omnisharp/omnisharp-vim'                                  " Omnisharp
    Plug 'airblade/vim-rooter'                                      " Rooter
    
    Plug 'neovim/nvim-lspconfig'                                    " LSP Config
    Plug 'kabouzeid/nvim-lspinstall'                                " LSP Install
    Plug 'hrsh7th/cmp-nvim-lsp'                                     " LSP CMP dependency
    Plug 'hrsh7th/cmp-buffer'                                       " LSP CMP dependency
    Plug 'hrsh7th/nvim-cmp'                                         " LSP CMP
    Plug 'hrsh7th/cmp-vsnip'                                        " LSP CMP vsnip
    Plug 'hrsh7th/vim-vsnip'                                        " LSP Vin csnip
    Plug 'folke/lsp-colors.nvim'                                    " LSP Colors
    Plug 'onsails/lspkind-nvim'                                     " LSP Kind
    Plug 'glepnir/lspsaga.nvim'                                     " LspSaga
    Plug 'preservim/nerdtree'                                       " Nerdtree
    Plug 'tpope/vim-surround'                                       " Surround
    Plug 'tpope/vim-fugitive'                                       " Fugitive
    Plug 'APZelos/blamer.nvim'                                      " Git Blamer
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }          " Prettier
    Plug 'nvim-lua/plenary.nvim'                                    " Plenary
    Plug 'nvim-lua/popup.nvim'                                      " Popup
    Plug 'ThePrimeagen/harpoon'                                     " Harpoon 
    Plug 'nvim-telescope/telescope.nvim'                            " Telescope
    Plug 'ThePrimeagen/vim-be-good'
    Plug 'sotte/presenting.vim'                                     " Presenting
call plug#end()
