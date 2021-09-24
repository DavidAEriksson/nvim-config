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
    " NERD Commenter
    Plug 'scrooloose/nerdcommenter'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Airline 
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Devicons
    Plug 'ryanoasis/vim-devicons'    
    " Nord
    Plug 'arcticicestudio/nord-vim'
    " Bracket guidelines
    " Gruvbox theme
    " Plug 'morhetz/gruvbox'
    "Indentation 'dots'
    Plug 'thaerkh/vim-indentguides'
    " Color code highlighting for CSS
   " React snippets
    Plug 'epilande/vim-react-snippets'
    " React-native snippets
    Plug 'tellijo/vim-react-native-snippets'
    " Gitgutter
    Plug 'airblade/vim-gitgutter'
    " NERDTree GIT
    Plug 'xuyuanp/nerdtree-git-plugin'
    " Emmet
    Plug 'mattn/emmet-vim'
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " Omnisharp
    Plug 'omnisharp/omnisharp-vim'
    " Vim Rooter
    Plug 'airblade/vim-rooter'
call plug#end()
