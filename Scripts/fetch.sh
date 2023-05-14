# Colours!!!!
cyn='\e[0;36m' # Cyan
wht='\e[0m' # White

# Define all the variables wooooo
d=$(lsb_release -d -s)
distro=${d//\"/}
hostname=$(hostnamectl hostname)
kernel=$(uname -r)
up=$(uptime -p)
uptime=${up//\up /}
uptime=${uptime//\ute/}
shell=$(basename "$SHELL")
packages=$(pacman -Q | wc -l)
memory=$(free -h | awk '/^Mem:/ {print $3 " / " $2}')

# Print the things!!!!
echo -e "${cyn}      /\         " "${cyn}Hostname${wht}: $hostname"
echo -e "${cyn}     /  \        " "${cyn}OS${wht}: $distro"
echo -e "${cyn}    /\   \       " "${cyn}Kernel${wht}: $kernel"
echo -e "${wht}   /      \      " "${cyn}Uptime${wht}: $uptime"
echo -e "${wht}  /   ,,   \     " "${cyn}Shell${wht}: $shell"
echo -e "${wht} /   |  |  -\    " "${cyn}Packages${wht}: $packages"
echo -e "${wht}/_-''    ''-_\   " "${cyn}Memory${wht}: $memory"
