#!/bin/bash
ln -sf .vim/vimrc ../.vimrc

cd bundle

# binary packages
sudo apt-get install -y exuberant-ctags cscope cmake python-dev python3.6-dev

# FlyGrep means grep on the fly which depends on ag, rg, ack, pt and grep.
# In Linux, flygrep uses grep by default, you can install one of tools
# as following for more fast:
#   ripgrep(rg)
#   the_silver_searcher(ag)
#   the_platinum_searcher(pt)
sudo apt-get install silversearcher-ag

# markdown preview
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs

sudo npm -g install instant-markdown-d

git clone https://github.com/gmarik/vundle.git 
git clone https://github.com/vim-scripts/L9.git

git clone https://github.com/matze/vim-move.git
git clone https://github.com/Lokaltog/vim-easymotion.git
git clone https://github.com/vim-scripts/youdao.dict.git

# window
git clone https://github.com/vim-scripts/bufexplorer.zip.git
git clone https://github.com/vim-scripts/winmanager.git

# codeview
git clone https://github.com/vim-scripts/cscope_plus.vim.git
git clone https://github.com/vim-scripts/cscope.vim.git
git clone https://github.com/vim-scripts/Tagbar.git
git clone https://github.com/majutsushi/tagbar.git

git clone git://git.wincent.com/command-t.git
git clone https://github.com/vim-scripts/The-NERD-tree.git
git clone https://github.com/rstacruz/sparkup.git


# latex
git clone https://github.com/lervag/vimtex.git
git clone https://github.com/SirVer/ultisnips.git
git clone https://github.com/vim-scripts/c.vim.git
git clone https://github.com/vim-latex/vim-latex.git
git clone https://github.com/honza/vim-snippets.git

# color schema
git clone https://github.com/altercation/vim-colors-solarized.git
git clone https://github.com/vim-airline/vim-airline.git
git clone https://github.com/vim-airline/vim-airline-themes.git
git clone https://github.com/tomasr/molokai.git
git clone https://github.com/icymind/NeoSolarized.git

# markdown & wiki
git clone https://github.com/vim-scripts/Markdown.git
git clone https://github.com/PotHix/Vimpress.git
git clone https://github.com/vim-scripts/vimwiki.git

git clone https://github.com/vim-scripts/taglist.vim.git
git clone https://github.com/vim-scripts/YankRing.vim.git

# git
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/vim-scripts/fugitive.vim.git
git clone https://github.com/vim-scripts/gitv.git

# functional testing tool
git clone https://github.com/google/vroom.git

git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
./install.sh --clang-completer
cd -

# text format tool
git clone https://github.com/vim-scripts/Tabular.git

# golang
git clone https://github.com/fatih/vim-go.git
git clone https://github.com/dgryski/vim-godef.git
# rust
git clone https://github.com/rust-lang/rust.vim.git
# kotlin
git clone https://github.com/udalov/kotlin-vim.git
# Ruby on Rails
git clone https://github.com/tpope/vim-rails.git

# search
git clone https://github.com/mileszs/ack.vim.git
git clone https://github.com/dyng/ctrlsf.vim.git
git clone https://github.com/wsdjeg/FlyGrep.vim.git
#git clone https://github.com/vim-scripts/FlyGrep.vim.git
git clone https://github.com/vim-scripts/FuzzyFinder.git

