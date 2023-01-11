#!/bin/sh

git clone --bare https://github.com/CondensedMilk7/dots.git $HOME/.cfg
function {
  /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}
mkdir -p .config-backup
config checkout
if [ $? = 0 ]; then
  echo "Checked out config";
else
  echo "Backing up pre-existing dotfiles";
  config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
config checkout
config status.showUntrackedFiles no
