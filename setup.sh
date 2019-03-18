git clone --bare https://github.com/jgllanos/configs.git $HOME/.dotfiles

function dotfiles {
   /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}
echo "alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc

dotfiles checkout
dotfiles config status.showUntrackedFiles no

dotfiles update-index --skip-worktree $HOME/README.md $HOME/LICENSE $HOME/setup.sh
rm $HOME/README.md $HOME/LICENSE $HOME/setup.sh
