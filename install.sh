#!/bin/bash
ln -sf .vim/vimrc ../.vimrc

cd bundle

# binary packages
sudo apt-get install -y exuberant-ctags cscope cmake python-dev python3.6-dev

git clone https://github.com/gmarik/vundle.git 

git clone https://github.com/vim-scripts/bufexplorer.zip.git
git clone https://github.com/vim-scripts/cscope_plus.vim.git
git clone https://github.com/lervag/vimtex.git
git clone https://github.com/SirVer/ultisnips.git
git clone https://github.com/vim-scripts/c.vim.git
git clone https://github.com/vim-scripts/bufexplorer.zip.git
git clone https://github.com/altercation/vim-colors-solarized.git
git clone https://github.com/vim-airline/vim-airline.git
git clone https://github.com/PotHix/Vimpress.git
git clone https://github.com/vim-scripts/taglist.vim.git
git clone https://github.com/vim-scripts/YankRing.vim.git
git clone https://github.com/vim-scripts/cscope.vim.git
git clone https://github.com/vim-scripts/L9.git
git clone https://github.com/vim-scripts/winmanager.git
git clone https://github.com/vim-scripts/gitv.git
git clone https://github.com/tpope/vim-rails.git
git clone https://github.com/vim-scripts/vimwiki.git
git clone https://github.com/google/vroom.git
git clone git://git.wincent.com/command-t.git
git clone https://github.com/vim-scripts/The-NERD-tree.git
git clone https://github.com/rstacruz/sparkup.git
git clone https://github.com/majutsushi/tagbar.git

git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
./install.sh --clang-completer
cd -

git clone https://github.com/vim-scripts/Markdown.git
git clone https://github.com/rust-lang/rust.vim.git
git clone https://github.com/vim-airline/vim-airline-themes.git
git clone https://github.com/matze/vim-move.git
git clone https://github.com/fatih/vim-go.git
git clone https://github.com/vim-latex/vim-latex.git
git clone https://github.com/Lokaltog/vim-easymotion.git
git clone https://github.com/honza/vim-snippets.git
git clone https://github.com/vim-scripts/FuzzyFinder.git
git clone https://github.com/vim-scripts/Tagbar.git
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/tomasr/molokai.git
git clone https://github.com/vim-scripts/fugitive.vim.git
git clone https://github.com/vim-scripts/youdao.dict.git
git clone https://github.com/vim-scripts/Tabular.git
git clone https://github.com/dgryski/vim-godef.git
git clone https://github.com/icymind/NeoSolarized.git

