HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
zstyle :compinstall filename '/home/soph/.zshrc'
autoload -Uz compinit
compinit

alias ls='ls --color=auto'
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."
alias fetch="sh Scripts/fetch.sh"
alias debounce='sudo ./gitclones/gloriousctl-2ms/gloriousctl --set-debounce-time'
alias mcserv="ngrok tcp 25565 --region eu"
alias e="micro"
alias hx="helix"
alias vi="nvim"
alias vim="nvim"
alias unfuck_mouse="xinput --set-prop 11 'libinput Accel Profile Enabled' 0, 1; xinput --set-prop 10 'libinput Accel Profile Enabled' 0, 1; xinput --set-prop 9 'libinput Accel Profile Enabled' 0, 1; xinput --set-prop 9 'libinput Accel Profile Enabled' 0, 1"
alias refresh-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias gap="bspc config window_gap"

#PROMPT="%B%F{blue}%m %b%~%B> %F{no-color}%b"
#PS1="%F{0}%B%(0?.%K{4} .%K{1} )%(1j.& .)%K{8}%f %~ %k%b "

# Starship Prompt
eval "$(starship init zsh)"
# Syntax Highlighting
source /home/soph/gitclones/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Spicetify
export PATH=$PATH:$HOME/.spicetify

sh Scripts/fetch.sh
