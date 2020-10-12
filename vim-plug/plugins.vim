"auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Onedark Theme
    Plug 'joshdick/onedark.vim'
    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Airline 
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Ranger
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    " Devicons
    Plug 'ryanoasis/vim-devicons'    
    " Nord
    Plug 'arcticicestudio/nord-vim'
    " Bracket guidelines
    Plug 'thaerkh/vim-indentguides'
    " Color code highlighting for CSS
    Plug 'ap/vim-css-color'
    " CSS syntac
    Plug 'JulesWang/css.vim'
    " Sass syntax
    Plug 'cakebaker/scss-syntax.vim'
    " Sass linter
    Plug 'gcorne/vim-sass-lint'
    " React snippets
    Plug 'epilande/vim-react-snippets'
    " React-native snippets
    Plug 'tellijo/vim-react-native-snippets'
call plug#end()
