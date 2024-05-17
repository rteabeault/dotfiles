# dotfiles

## Install

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/rteabeault/dotfiles/main/install.sh)"
```

## Chezmoi Stuff
* [User Guide](https://www.chezmoi.io/user-guide/commanh-overview/)
* [Reference Guide](https://www.chezmoi.io/reference/)

https://www.chezmoi.io/user-guide/daily-operations/

### Pull the latest changes from your repo and apply them

```bash
chezmoi update
```

### Pull the latest changes from your repo and see what would change, without actually applying the changes

```bash
chezmoi git pull -- --autostash --rebase && chezmoi diff
```

If you're happy with the changes, then you can run

```bash
chezmoi apply
```
