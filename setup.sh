git clone --bare https://github.com/jgllanos/configs.git $HOME/.dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles checkout
config config status.showUntrackedFiles no
