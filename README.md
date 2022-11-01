

```
git init --bare $HOME/.dotfiles
alias dot='GIT_DIR=~/.dotfiles GIT_WORK_TREE=~'
```
If you want to setup your environment on a new computer, you can do the following:
```
git clone --bare https://github.com/staleSoftware/sd-dotfiles.git $HOME/.dotfiles
alias dot='GIT_DIR=~/.dotfiles GIT_WORK_TREE=~'
dot git config --local status.showUntrackedFiles no
dot git config --local remote.origin.fetch "+refs/heads/*:refs/remotes/origin/*" 
dot git checkout -b main origin/main
dot git submodule update --init --recursive
dot git pull --recurse-submodules
```
