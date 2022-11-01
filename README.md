

```
git init --bare $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
dotfiles status
dotfiles add .vimrc
dotfiles commit -m "new vimrc"
```
If you want to setup your environment on a new computer, you can do the following:
```
git clone --bare https://github.com/staleSoftware/sd-dotfiles.git $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dot='GIT_DIR=~/.dotfiles GIT_WORK_TREE=~'
dotfiles config --local status.showUntrackedFiles no
dotfiles checkout
dotfiles pull --recurse-submodules
dotfiles submodule update --init --recursive
```
