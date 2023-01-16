# My ArchLinux Config

![my_arch](https://user-images.githubusercontent.com/82287873/212720822-3ac7936c-b9b1-4f21-b90b-856ac18b28f2.jpg)

Here's [explanation of how it works](https://www.atlassian.com/git/tutorials/dotfiles)

The base apps installation:

```
sudo pacman -S i3 polybar kitty light feh neovim ttf-jetbrains-mono ranger dunst
```

This script does the following: install the repo, back up existing  config and checkout to the newer config.

```bash
curl https://raw.githubusercontent.com/CondensedMilk7/dots/master/.local/bin/clone_config.sh | bash
```
