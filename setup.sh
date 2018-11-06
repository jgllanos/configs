git clone --bare https://github.com/jgllanos/configs.git $HOME/.dotfiles
function dotfiles {
   /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}
dotfiles checkout
dotfiles config status.showUntrackedFiles no
rm $HOME/README.md $HOME/LICENSE $HOME/setup.sh
