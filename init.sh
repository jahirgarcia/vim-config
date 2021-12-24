# install plugins
mkdir -p ~/.vim/pack/plugins/start
cd ~/.vim/pack/plugins/start
# auto pairs plugin
git clone https://github.com/jiangmiao/auto-pairs.git
# emmet
git clone https://github.com/mattn/emmet-vim.git
# surround plugin
git clone https://github.com/tpope/vim-surround.git
# polyglot plugin
git clone https://github.com/sheerun/vim-polyglot.git
# nerdtree
git clone https://github.com/preservim/nerdtree.git
vim -u NONE -c "helptags ~/.vim/pack/plugins/start/nerdtree/doc" -c q
# comment
git clone https://github.com/tomtom/tcomment_vim.git
# foldding
git clone https://github.com/pseewald/vim-anyfold.git

# install theme
mkdir -p ~/.vim/pack/themes/opt
cd ~/.vim/pack/themes/opt
git clone https://github.com/joshdick/onedark.vim.git
