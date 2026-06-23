# Dotfiles

Moving my dotfiles from chezmoi to a bare git repo. This repo also contains setup scripts to setup a new machine, such as installing packages and setting defaults.

Using a bare git repo for dotfiles was found in the Atlassian blog 
[Dotfiles: Best way to store in a bare git repository](https://www.atlassian.com/git/tutorials/dotfiles)

## New Mac Prerequisites

1. Install command line tools

```
xcode-select --install
```

2. Update hostname.
    1. Set the primary hostname (used for remote connections and networking):

    ```
    sudo scutil --set HostName YourNewName
    ```

    2. Set the local hostname (Bonjour name visible on the local network):
   
   ```
    sudo scutil --set LocalHostName YourNewName
    ```
   
    3. Set the user-friendly computer name (the name displayed in Finder and System Settings):

    ```
     sudo scutil --set ComputerName YourNewName
    ```
   
    4. Flush your DNS cache to ensure smooth routing under the new name:

    ```
     dscacheutil -flushcache
    ```

    5. Restart



## Installing dotfiles

1. Clone the repo as a bare repo

```
git clone --bare https://github.com/rteabeault/dotfiles.git $HOME/.dot
```

2. Setup the alias locally

```
alias dot='/usr/bin/git --git-dir=$HOME/.dot --work-tree=$HOME'
```

3. Checkout the files

```
dot checkout 
```

## Setup

To run the setup script
```
./.local/bin/setup/setup.sh
```

This script determines what operating system is in use. It then executes each script in a 
subdirectory `./local/bin/setup/macos` or `.local/bin/setup/linux`.


## Betterleaks

To enable a Betterleaks pre-commit hook run 

```
dot config --local core.hooksPath ~/.dot-hooks
```

This has to be done once after pulling the repo.
