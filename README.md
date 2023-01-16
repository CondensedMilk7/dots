# ArchLinux Config

Here's [explanation of how it works](https://www.atlassian.com/git/tutorials/dotfiles)

The base apps installation:

```
sudo pacman -S i3 polybar kitty light feh neovim ttf-jetbrains-mono ranger dunst
```

This script does the following: install the repo, back up existing  config and checkout to the newer config.

```bash
curl https://raw.githubusercontent.com/CondensedMilk7/dots/master/.local/bin/clone_config.sh | bash
```
