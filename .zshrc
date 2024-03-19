# Global variables
export PATH="/home/pt/.deno/bin:$PATH"
export PATH="/home/pt/.local/bin:$PATH"
export PATH="/home/pt/go/bin:$PATH"
export NODE_OPTIONS="--max-old-space-size=8192"
export EDITOR="nvim"
export VISUAL="nvim"
export CAPACITOR_ANDROID_STUDIO_PATH="/usr/bin/android-studio"

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

# Aliases

alias canpress="node ~/Projects/can-press/src/cli.js"
alias codeme="webstorm ~/Projects/codeme"
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias fixinput="setxkbmap -layout us,ge && setxkbmap -option 'grp:alt_shift_toggle'"
alias getclip="xclip -selection c -o"
alias hdmi='xrandr --output HDMI-1 --set "Broadcast RGB" "Full"'
alias i3config="nvim ~/.config/i3/config"
alias lectures="ranger ~/Documents/lectures/"
alias ls="exa --icons"
alias nodeglob="NODE_PATH=$(npm root -g) node"
alias npmfresh="rm -rf node_modules && npm cache clean --force && npm install"
alias nvimconfig="nvim ~/.config/nvim/"
alias nrs="npm run start"
alias pa="ranger ~/Documents/psychoanalysis/"
alias setclip="xclip -selection c"
alias vi="vim"
alias vim="nvim"
alias webstorm="swallow webstorm"
alias zshconfig="nvim ~/.zshrc"
alias notes="nvim ~/Documents/notes/"

# Startup scripts

# A little greeter
colorscript -e crunchbang-mini

# pnpm
export PNPM_HOME="/home/pt/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
