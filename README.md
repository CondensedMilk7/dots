# ArchLinux Config

Here's [explanation of how it works](https://www.atlassian.com/git/tutorials/dotfiles)

First clone the repo:
```bash
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME" && \
git clone https://github.com/CondensedMilk7/dots.git $HOME/.cfg
```

Make backups of configurations (if necessary) and checkout:
```bash
mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
```

Or just checkout:
```
config checkout
```

One line to do all of the above:

```bash
curl https://github.com/CondensedMilk7/dots/blob/master/.local/bin/clone_config.sh | bash
```
