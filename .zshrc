export PATH="/home/pt/.deno/bin:$PATH"
export PATH="/home/pt/.local/bin:$PATH"
export PATH="/home/pt/go/bin:$PATH"
export NODE_OPTIONS="--max-old-space-size=8192"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/pt/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source /home/pt/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/pt/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias vim="nvim"
alias zshconfig="lvim ~/.zshrc"
alias ls="exa --icons"
alias npmfresh="rm -rf node_modules && npm cache clean --force && npm install"
alias i3config="lvim ~/.config/i3/config"
alias fixinput="setxkbmap -layout us,ge && setxkbmap -option 'grp:alt_shift_toggle'"
alias nrs="npm run start"
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

# Startup scripts

# A little greeter
colorscript -e crunchbang-mini
