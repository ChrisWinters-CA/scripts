# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/cwinters/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

## ZSH Themes and Plugins

# Powerlevel10k Theme
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ZSH Plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

## Alias

# List Colors
alias ls="ls --color=auto"

# Fastfetch
alias sysinfo="fastfetch"

# Minecraft Fabric
alias mcstart="sudo systemctl start fabricd"
alias mcstop="sudo systemctl stop fabricd"
alias mcrestart="sudo systemctl restart fabricd"
alias mcwipe="sudo rm -R /srv/icecraft/IceCRAFT"
alias mcconfig="sudo nano /srv/icecraft/server.properties"
alias mcstatus="sudo systemctl status fabricd"
alias mcvars="sudo nano /srv/icecraft/variables.txt"
alias mcattach="doas -u fabric tmux attach"

# Reflector
alias mirup="sudo reflector -c CA,US -l 10 -p https --sort rate --save /etc/pacman.d/mirrorlist"

# Full System Upgrade
alias arch-upgrade="mirup && pacup && yayup && paccache"

# Pacman
alias pacup="sudo pacman -Syyu"
alias paccache="sudo pacman -Scc"

# Yay
alias yayup="yay -Syu"
