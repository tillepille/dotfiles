# dotfiles

inspired by <https://www.atlassian.com/git/tutorials/dotfiles>

```shell
git init --bare $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
```

## Prerequisites

<https://brew.sh>


## Restore

```shell
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME
echo ".dotfiles" >> .gitignore
git clone --bare https://github.com/tillepille/dotfiles $HOME/.dotfiles
dotfiles checkout
```

Also add
```
[include]
	path = ~/.gitconfig-github
```
to this repos config
