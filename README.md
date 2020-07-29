# Neovim Config

This is my *smaller* version of Christian Chiarulli's Neovim configuration which uses a more sane approach to the traditional ```vimrc``` approach using the ```init.vim``` file to source plugins.

Link to Christian:

```
https://github.com/ChristianChiarulli/nvim
```

## Installation

### Prerequisites

#### Install Neovim

- Mac

```
brew install neovim
```

- Ubuntu

```
sudo apt install neovim
```

- Arch

```
sudo apt install neovim
```

- Make sure that the folder ```nvim``` exists within your ```~/.config``` directory before proceeding, if not, create it:

```
mkdir ~/.config/nvim
```

### Clone this repository 

This will clone the repository directly into your ```nvim config``` folder
```
git clone https://github.com/DavidAEriksson/nvim-config.git ~/.config/nvim
```

### Install libraries

- Node

```
npm i -g neovim
```

- Python

```
pip install pynvim
```

- Neovim Remote

```
pip install neovim-remote
```
### Install vim-plug libraries

Firstly, launch Neovim

```
nvim
```

Then install using PlugInstall

```
:PlugInstall
```
