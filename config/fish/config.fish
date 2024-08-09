if status is-interactive
    clear
    sh ~/Scripts/fetch.sh
end

# Aliases
alias ls='ls --color=auto'
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."
alias cls='clear;ls'
alias fetch="sh ~/Scripts/fetch.sh"
alias mcserv="ngrok tcp 25565 --region eu"
alias e="micro"
alias hx="helix"
alias s="kitten ssh"
alias nv="nvim"
alias sm="python ~/Documents/Smoothie/src/main.py"
alias cpath="pwd | wl-copy && echo 'Path copied to clipboard!'"
alias ktheme="kitty +kitten themes --reload-in=all"
alias th="sh ~/Scripts/ThemeSwitcher.sh"
alias discord-update="sudo sh ~/Scripts/update-discord.sh"
alias bstr="sh ~/Scripts/bstr.sh"
alias unfuck_wallpaper="swww kill && swww init"
alias upload="sh ~/Scripts/upload.sh"

#starship init fish | source
zoxide init fish | source

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

fish_add_path /home/soph/.spicetify
