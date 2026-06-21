1. Clone the repo as a bare repo

```
git clone --bare rteabeault/dotfiles $HOME/.dot
```

2. Setup the alias locally

```
alias dot='/usr/bin/git --git-dir=$HOME/.dot --work-tree=$HOME'
```

3. Checkout the files

```
dot checkout 
```
