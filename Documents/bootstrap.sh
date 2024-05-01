#!/bin/bash

#⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
#⠀⠀⠀⠀⢰⣦⡀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⢀⣴⣦⠀⠀⠀⠀
#⠀⠀⠀⠀⣿⣿⣿⣦⡀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣆⠀⠀⢀⣴⣿⣿⣿⠀⠀⠀⠀,ggggggggggg,                               ,gggg,
#⠀⠀⠀⠀⣿⣿⣿⣿⣷⡄⠘⣿⣿⣿⣿⣿⣿⣿⡿⠀⣴⣿⣿⣿⣿⣿⠀⠀⠀⠀dP"""88""""""Y8,      ,dPYb,                d8" "8I               I8
#⠀⢸⣦⡀⠙⢿⣿⣿⣿⣿⠆⠈⠛⣋⣉⣉⡛⠛⠀⢾⣿⣿⣿⣿⡿⠟⢀⣤⡆⠀Yb,  88      \`8b      IP'\`Yb                88  ,dP               I8
#⠀⢸⣿⣿⣷⣄⠙⢿⠟⢁⣴⣾⣿⠿⠛⠻⣿⣿⣦⣄⠙⢿⡿⠋⣀⣴⣿⣿⡇⠀ \`"  88      ,8P      I8  8I             8888888P\"             88888888
#⠀⢸⣿⣿⣿⣿⣷⣄⠐⢿⣿⠟⢁⣴⣾⣦⡀⠙⢿⣿⡷⠀⣠⣾⣿⣿⣿⣿⡇⠀     88aaaad8P\"       I8  8\'                88                    I8
#⠀⢸⣿⣿⣿⣿⣿⣿⣦⡀⠁⣴⣿⣿⣿⣿⣿⣦⡈⠋⣠⣾⣿⣿⣿⣿⣿⣿⠃⠀     88""""",gggg,gg  I8 dP   ,ggg,         88          ,ggggg,   I8   gg      gg    ,g,
#⠀⠈⣿⣿⣿⣿⣿⣿⡟⢀⣾⣿⣿⣿⣿⣿⣿⣿⣷⡀⢻⣿⣿⣿⣿⣿⣿⡏⠀⠀     88    dP"  "Y8I  I8dP   i8" "8i   ,aa,_88         dP"  "Y8gggI8   I8      8I   ,8'8,
#⠀⠀⠸⣿⣿⣿⣿⣿⠁⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠈⣿⣿⣿⣿⣿⡟⠀⠀⠀     88   i8'    ,8I  I8P    I8, ,8I  dP" "88P        i8'    ,8I ,I8,  I8,    ,8I  ,8'  Yb
#⠀⠀⠀⠹⣿⣿⣿⣿⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⣿⣿⣿⡟⠁⠀⠀⠀     88  ,d8,   ,d8b,,d8b,_  \`YbadP'  Yb,_,d88b,,_   ,d8,   ,d8',d88b,,d8b,  ,d8b,,8'_   8)
#⠀⠀⠀⠀⠈⠻⣿⣿⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣿⣿⡿⠋⠀⠀⠀⠀⠀     88  P"Y8888P"\`Y88P'"Y88888P"Y888  "Y8P"  "Y88888P"Y8888P"  8P""Y88P'"Y88P"\`Y8P' "YY8P8P
#⠀⠀⠀⠀⠀⠀⠈⠛⠧⠘⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠼⠋⠁⠀⠀⠀⠀⠀⠀⠀
#⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠛⠛⠛⠛⠛⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
#
#hello, world
#
# The execution of this script stops if a command or pipeline has an error.
# For example, failure to install a dependent package will cause the script
# to stop execution.

#set -e

#--------------------------------variables----------------------------------- 

#define some colors

#foreground
red="\033[38:5:1m"
yellow="\033[1;93m "
blue="\033[38:5:45m"
white="\033[38:5:255m"
orange='\033[0;33m'
purple='\033[1;95m'

#background
red_b="\033[48:5:1m"
yellow_b="\033[48:5:226m"
blue_b="\033[48:5:45m"
white_b="\033[48:5:255m"
reset="\033[0m"

#list of packages to install

pkgs=(linux-headers bottom zathura zathura-djvu zathura-pdf-mupdf bluez bluez-utils musicbee wl-clipboard typora-free github-cli wine fish neovim visual-studio-code-bin paru nekoray-bin clash-for-windows-bin eza dust duf fd ripgrep hyperfine gping procs httpie httpie-desktop-bin curlie xh zoxide bat cava sd jq choose broot fzf discord skypeforlinux-bin calibre xsv clipboard nodejs npm age lazygit python-pip kitty cargo ripgrep scc bat-extras navi hexyl postman-bin github-desktop-bin bash-completion bash-language-server dolphin-plugins dunst grub-hook update-grub tty-clock unimatrix-git vscode-json-languageserver git neofetch)

#todo add dnSpyEx (hard to get it working on linux)
dotnet_packages=(dotnet-host-bin dotnet-runtime-bin dotnet-sdk-bin dotnet-targeting-pack-bin)

#anaconda is wierd lets forget it for now
scientific_packages=(maxima geogebra kalzium kbibtex kstars labplot mathematica python-pandas python-matplotlib python-tensorflow cython)

steam_packages=(steam lutris steam-native-runtime dxvk-bin vkd3d-proton winetricks pipewire-pulse)

#--------------------------------functions-----------------------------------

#todo: im not using this 9 functions but they looked nice to have.
#	must refactory and use them instead of using hard escape code strings

# its very strange behavieour for bash or mayble sh in general
# when using in line bracket like "func_name() { commands }"
# it will fail and ; must be inserted like bellow form
# "func_name() {commands;}"

echo2() { echo -e "$@" >&2; }

# following 30 lines is from endeavourOs scripts im sure this error is not a big deal and will work
Red() { echo2 "$red""$*""$reset"; }
Yellow() { echo2 "$yellow""$*""$reset"; }
Blue() { echo2 "$blue""$*""$reset"; }
Orange() { echo2 "$orange""$*""$reset"; }

WARN() {
  local msg="$1"
  Yellow "==> : warning: $msg"
}
INFO() {
  local msg="$1"
  local prefix="$2"
  case "$prefix" in
  "") Blue "==> info: $msg" ;;
  *) Blue "$prefix$msg" ;;
  esac
}
ERROR() {
  local metadata="$1"
  local realdata="$2"
  Red "==> error: $metadata"
  [ "$realdata" ] && Red "    $realdata"
}

ShowArray() {
  local item
  for item in "$@"; do
    echo "$item"
  done
}

usage() {

  cat <<EOF
Usage: bootstrap

Options:
--help,	-h
this help.

this script will configure and install basic apps (and settings) for fresh
EndeavourOs system. around 120 programs will be installed and configured;
this is also an interactive script and will ask and do things step by step,
and no arguments is needed.
EOF

}

# Function to backup a file or directory
backup() {
  local item="$1"
  local operation=${2:-mv}
  local backup_dir="$item.back"

  # If .back already exists, find the next available numeric suffix
  suffix=1
  while [ -e "$backup_dir$suffix" ]; do
    ((suffix++))
  done

    if [ -f "$item" ]; then
        sudo "$operation" "$item" "$backup_dir$suffix"
    fi
}

#ask user yes no questions
ask_prompt() {

  local message=$1

  while true; do

    echo -en "$blue$message$reset" >&2
    read -r yn

    case $yn in
    [Yy]*) return 0 ;;
    [Nn]*) return 1 ;;
    *) ERROR "Please answer yes or no." ;;
    esac
  done
}

#ask user if they want to install optional packages

#for some unknown reasons I encuntered odd behavieours bash's logical not ("!") is not doing its job with " ! func_name args"
#and gives  "unary operator expected" exception so the best way to do this is to do the hard way of writeing all of the statements
#in if statement and add an unwanted tab instaed of writeing it like " 	[ ! function_name args ] && return"
#it's not a big deal as long as no body is involved to help
#or maybe seprate function call and if statement and then use if

#3/16/24 update:
#	it turns out wrapping function and its arguments with $() will solve the problem :)
#	4/4/24 update:
#	again it gets "Remove surrounding $() to avoid executing output (or use eval if intentional)." warning
#	using eval will get the mentioned error so maybe add it like eval "$()" and ask for help maybe?
#	I will move on for now.

install_optional_package() {
  local package_name=$1
  local -n package_options=$2
  local description=$3

  ask_prompt "install $package_name? y/n:  " || return

  WARN "apps to install options are:	"

  for option in "${package_options[@]}"; do
    Blue "$option"
  done

  Blue "$description"

  selected=()

  PS3='You can select multiple space separated options: '
  select options in "${package_options[@]}"; do
    for reply in $REPLY; do
      selected+=(${package_options[reply - 1]})
    done
    [[ $selected ]] && break
  done

  yay -S --needed --noconfirm "${selected[@]}"
}

configure_plain_dns(){
      backup /etc/resolv.conf
      if ! grep -e "nameserver 178.22.122.100" -e "nameserver 185.51.200.2" /etc/resolv.conf; then
        echo -e "nameserver 178.22.122.100\nnameserver 185.51.200.2" | sudo tee /etc/resolv.conf
      fi

}

configure_DoH(){
    is_package_install "dns-over-https" || sudo pacman -S --noconfirm --needed "dns-over-https"

    backup /etc/resolv.conf

    grep "nameserver 127.0.0.1" /etc/resolv.conf || echo "nameserver 127.0.0.1" | sudo tee /etc/resolv.conf

    grep 'url = "https://free.shecan.ir/dns-query"' /etc/dns-over-https/doh-client.conf && WARN "it is already configured; returning" && return

    INFO "Configuring DNS over HTTPS..."
    cat <<EOF | sudo tee /etc/dns-over-https/doh-client.conf
    listen_addresses = ['127.0.0.1:53', '[::1]:53']
    url = "https://free.shecan.ir/dns-query"
EOF

    INFO "Disable systemd-resolved to avoid conflicts"
    sudo systemctl stop systemd-resolved
    sudo systemctl disable systemd-resolved

    INFO "Enable and start DNS-over-HTTPS client"
    sudo systemctl enable doh-client
    sudo systemctl start doh-client

    INFO "done."
}

configure_DoT() {
    is_package_install "stubby" || sudo pacman -S --noconfirm --needed "stubby"

    backup /etc/resolv.conf
    grep "nameserver 127.0.0.1" /etc/resolv.conf || echo "nameserver 127.0.0.1" | sudo tee /etc/resolv.conf

    grep "address_data: 178.22.122.100" /etc/stubby/stubby.yml && WARN "it is already configured; returning" && return

    INFO "Configuring DNS over TLS..."

cat <<EOF | sudo tee /etc/stubby/stubby.yml
resolution_type: GETDNS_RESOLUTION_STUB
dns_transport_list:
  - GETDNS_TRANSPORT_TLS
tls_authentication: GETDNS_AUTHENTICATION_REQUIRED
tls_query_padding_blocksize: 128
edns_client_subnet_private: 1
round_robin_upstreams: 1
idle_timeout: 10000
listen_addresses:
  - 127.0.0.1@53
  - 0::1@53
  - 127.0.0.1@853
  - 0::1@853
upstream_recursive_servers:
  - address_data: 178.22.122.100
    tls_auth_name: "free.shecan.ir"
  - address_data: 185.51.200.2
    tls_auth_name: "free.shecan.ir"
EOF

    sudo systemctl enable stubby
    sudo systemctl start stubby


    INFO "done."
}


change_dns() {

  ask_prompt "use Shkan DNS servers to bypass restriction?$reset ($yellow this will disable NetworkManager auto DNS assignment$reset) y/n:	" || return

  INFO "Disabling NetworkManager..."
  
  backup /etc/NetworkManager/NetworkManager.conf

  if ! grep "dns=none" /etc/NetworkManager/conf.d/90-dns-none.conf &>/dev/null; then

    sudo tee -a /etc/NetworkManager/conf.d/90-dns-none.conf << 'EOF'
[main]
dns=none
rc-manager=unmanaged
#plugins=ifcfg-rh,ibft
EOF
  fi

  sudo systemctl reload NetworkManager
  sudo systemctl restart NetworkManager.service

  echo -e "$yellow_b $red waiting 10 seconds for restarting NetworkManager.service$reset\n"
  sleep 10
  INFO "Done"


  echo2 "$purple" "there are 3 major mehods to set up DNS 'DNS over TLS' 'DNS over HTTPS' 'Plain DNS'" "$reset"
  cat <<EOF
Plain DNS:
    regular dns that is unencrypted and any one between you and your IPS can see it.
    which do not provide encrypted communication for DNS queries

DNS over HTTPS (DoH):
    provide encrypted communication for DNS queries
    and uses the HTTPS protocol
    it is firewall friendly, have browser integration (like firefox natively support it)
    and hides DNS queries within regular HTTPS traffic.
    but it may bypass local DNS policies

DNS over TLS
    provide encrypted communication for DNS queries
    and uses the TLS protocol
    it is a standard, widely supported and has strong Authentication
    but it may have some issues with firewall.
EOF
    

  echo2 "$purple" "which one to choose?" "$reset"
  cat <<EOF
Privacy: If privacy is your primary concern, both DoT and DoH offer encryption, but DoH may be more convenient due to its use of port 443.
Compatibility: Consider what your DNS resolver supports. Some providers offer both options.
Network Environment: If port 853 is blocked, DoH might be a better choice.
Ease of Setup: DoH might be easier to set up due to its use of HTTPS.
EOF

echo2 "$purple" "choose the method to use" "$reset"

  while true; do

    echo -e "${blue}DNS(1) DoH(2) DoT(3)$reset" >&2
    echo -en "${blue}enter: $reset" >&2

    read -r yn

    case $yn in
    [1]*) configure_plain_dns && break;;
    [2]*) configure_DoH  && break;;
    [3]*) configure_DoT && break ;;
    *) ERROR "Please answer yes or no." ;;
    esac
  done


  INFO "Dns changed successfully."

}

fisher_installer() {
  local -n packages=$1

  for package in "${packages[@]}"; do
    INFO "$package"
    fish --command "fisher install $package"
    INFO "done."
    echo
  done
}

install_fish_plugins() {

  local plugins=("PatrickF1/fzf.fish" "franciscolourenco/done" "jorgebucaran/spark.fish" "jorgebucaran/autopair.fish" "nickeb96/puffer-fish" "meaningful-ooo/sponge")

  #i know its better to not it but fuck it i dont want to mess with bash
  if ask_prompt "install fish plugins? (y/n):  "; then
    INFO "installing fish plugins..."
    echo
    fisher_installer plugins
  fi
}

configure_zoxide() {

  local bash_config
  bash_config="eval \"\$(zoxide init bash)\""
  local fish_config='zoxide init fish | source'

  ask_prompt "do you want to backup config.fish? (y/n):  " && backup ~/.config/fish/config.fish
  ask_prompt "do you want to backup .bashrc? (y/n):  " && backup ~/.bashrc

  INFO "configuring zoxide..."

  if ! grep "$bash_config" ~/.bashrc &>/dev/null; then
    echo "$bash_config" >>~/.bashrc
  fi

  if ! grep "$fish_config" ~/.config/fish/config.fish &>/dev/null; then
    echo "$fish_config" >>~/.config/fish/config.fish
  fi

  if ask_prompt "set an alias for cd to zoxide? (fish shell only) (y/n):  "; then

    #it is very important to alias this in config.fish after source"ing" zoxide
    #becuase if aliasing accure before zoxide initialis z and cd will call each other recursively
    #and the main reason for putting this in this file instead of ~/.config/fish/conf.d/alias.fish
    #is that by defualt all .fish files in ~/.config/fish/conf.d/ will be run before ~/.config/fish/config.fish
    #and abow situation might occur when accidently sourcing multiple files or config.fish more
    #than once

    if ! eval "$(grep 'alias cd="z"' ~/.config/fish/config.fish)" &>/dev/null; then
      echo -e 'alias cd="z"\n' >>~/.config/fish/config.fish
    fi

    INFO "done"
  fi
}

is_package_installed() {
  package="$1"
  check="$(sudo yay -Qs --color always "${package}" | grep "local" | grep "${package} ")"
  test -n "${check}"
}

install_packages() {

  local -n packages_to_install=$1
  local terminate_app_str=$2
  local pacman_confirm=${3:--noconfirm}

  INFO "following packages will be installed:"
  #readarray -d " " -t array <<< "$packages_to_install"

  #for (( n=0; n < ${#array[*]}; n++)) do
  #echo -e "\t${array[n]}"
  #done

  for pkg in "${packages_to_install[@]}"; do
    echo -e "\t$pkg"
  done

  if ! (ask_prompt "press y to continue:  "); then
    if [ "$terminate_app_str" = "yes" ]; then
      WARN "this packages are important to for furthur installation and are 50% of what this script is about
if you accidently passed no its time control+c now and start over."
      return
    fi

    echo "moving on..."
    return
  fi

  INFO "installing packages"

  for pkg in "${packages_to_install[@]}"; do
    if is_package_installed "${pkg}"; then
      echo "${pkg} is already installed."
      continue
    fi

    to_install+=("${pkg}")
  done

  #"All pacman packages are already installed."
  test -z "${to_install[*]}" && return

  printf "Package not installed:\n%s\n" "${to_install[@]}"
  yay -S "$pacman_confirm" --needed "${to_install[@]}"
}

install_yay() {
  pacman -Qs yay >/dev/null && INFO "yay is already installed!" && return

  pacman --noconfirm --needed -S "base-devel"

  SCRIPT=$(realpath "$0")
  temp_path=$(dirname "$SCRIPT")

  echo2 "$temp_path"

  git clone https://aur.archlinux.org/yay-git.git ~/yay-git
  cd "$HOME/yay-git" || (ERROR "could not cd to $HOME/yay-git" && exit 1)
  makepkg -si

  cd "$temp_path" || (ERROR "could not cd to $HOME/yay-git" && exit 1)
  INFO "yay has been installed successfully."
}

optional_packages() {

  #descriptions

  local pycharm_description="pycharm eap is professinal version where pycharm community is not.
using pycharm eap does not need any licencing as eap stands for early access program
its license trial is 30 days and you have to update to next eap.

by installing pycharm professinal you need to have license (or get it in other ways ;) )"

  local edge_description="stable verstion as it says is stable one, dev edition is bleeding edge..."

  local office_description="libreoffice is more mature where onlyoffice gives best compability with
microsoft office. but have some issues with rtl languages like persian, arablic, hebrew,..."

  local download_manager_description="KGet is a feature rich download manager from kde family and has strong
inerbound with kde eco-system it means using it outside kde plasma may have odd behavieour (sorry for bad english)
other optoin is also a great app if you plan to use Hyprland why not install both?$yellow/nif installation is failed with manual intervention needed error
clear yay cach with yay -Scc and install package manually$reset"

  local torrent_client_description="KTorrent is a feature rich torrent/mega downloader from kde family and has strong bound with kde echo-system. qBitTorrent is more independent both are great choices qBitTorrent is more recommended"

  local ffmpeg_despription="FFmpeg is a complete, cross-platform solution to record, convert and stream audio and video.
ffmpeg-full is built with as many optional features enabled as possible so it will take a lot of resources to compile; where
ffmpeg is binary precompiled from arch repository not arch user repository"

  #***pycharm***
  pycharm_editrions=(pycharm-community-edition pycharm-eap pycharm-professional)
  install_optional_package "pycharm" pycharm_editrions "$pycharm_description"

  #***edge***
  edge_editsion=(microsoft-edge-dev-bin microsoft-edge-stable-bin)
  install_optional_package "microsoft-edge" edge_editsion "$edge_description"

  #***office***
  office_editsion=(libreoffice-fresh onlyoffice-bin)
  install_optional_package "office bunble" office_editsion "$office_description"

  #***ffmpeg***
  ffmpeg_editsion=(ffmpeg-full ffmpeg)
  install_optional_package "ffmpeg" ffmpeg_editsion "$ffmpeg_despription"

  #install lunar vim
  if ask_prompt "install lunarvim(IDE tier neovim bundle)? y/n:  "; then

    [ -f /usr/lib/python3.11/EXTERNALLY-MANAGED ] && sudo rm /usr/lib/python3.11/EXTERNALLY-MANAGED

    LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)
  fi

  #installing joplin need a vpn as its dependencies are from cloudflare that will block my ip address so no joplin
  #till nekoray is configured to bypass 443 error code

  #install joplin
  #if ask_prompt "install joplin? (note taking app) (y/n):  "; then

  #wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash
  #NPM_CONFIG_PREFIX=~/.joplin-bin npm install -g joplin
  #sudo ln -s ~/.joplin-bin/bin/joplin /usr/bin/joplin
  #fi

  #install download manager
  download_manager_editions=("kget" "motrix-bin")
  install_optional_package "download manager" download_manager_editions "$download_manager_description"

  #install torrent client
  torrent_client_edditsion=("qbittorrent" "ktorrent")
  install_optional_package "torrent client" torrent_client_edditsion "$torrent_client_description"

  #install latex
  if ask_prompt "install latex?$yellow_b$red(you may not need it,in short its a tool to write books)?$reset y/n:  "; then
    sudo pacman -S texlive-most
    sudo pacman -S "lyx texmaker"
  fi

  if ask_prompt "install steam? (y/n):	"; then
    local message="for this operation you need to specify your cpu/gpu press return to countinue."
    echo -en "$blue$message$reset" >&2
    read -r

    install_packages steam_packages "--confirm"
  fi

  if ask_prompt "install musicbee?(best windows music player working with wine)"; then
    yay --needed --noconfirm -S musicbee

    WARN "running app for the first time 
it is recommended to run the application in terminal for the first time to see logs. (and potential errors)"

    INFO "creating wine prefix."
    WARN "this operation may take a long time for downloading missing wine components like .net 4.8 .net 4.0 and windows dlls... (be patient)"
    head -n-1 /usr/bin/musicbee | bash

    local theme_dir="$HOME/.musicbee/wine/drive_c/users/$USER/AppData/Roaming/MusicBee"
    local theme_path="$theme_dir/Skins/One-Dark.xmlc"

    if ! [ -f "$theme_path" ]; then
      INFO "downloading one-dark theme."
      mkdir -p "$theme_path/Skins"
      http -d -o "$theme_path" "https://github.com/ThatEpicBanana/mb-onedark/releases/download/release/One-Dark.xmlc"
      echo2
    fi

    echo2 "$yellow""the defualt app's theme is a bit weird on linux One-Dark theme have been downloaded in skin folder all you have to do is change to it by:
press ALT to open toolbar select view then select Skin then select One-Dark theme."

  fi

}

configure_bare_git() {
  if ask_prompt "create a git for your configurations? you can add your dotfiles in it and sync with bare git. (y/n)"; then

    git "init --bare $HOME/.cfg"

    /usr/bin/git "--git-dir=$HOME/.cfg/ --work-tree=$HOME config --local status.showUntrackedFiles no"

    echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >>"$HOME/.config/fish/conf.d/alias.fish"

    INFO "login to github."

    gh auth login

    local usrname
    usrname=$(gh api /user | jq -r '.login')

    Yellow "Please create a repository in git hub. do not add readme, license or .gitignore the name can be '(dotfiles configs myConfigs .configs .cfg ...)'"
    Blue "press Enter the name of repository you created"
    read -r -p "name of repository: " repo_name

    local current_dir
    current_dir=$(pwd)

    local repo_url
    repo_url=$("https://github.com/$usrname/$repo_name.git")

    cd "$HOME/.cfg"

    touch test

    config add test
    config commit -m "this is a test"
    config push

    git remote add origin "$repo_url"
    git push origin
    cd "$OLDPWD"

  fi
}

# ------------------------------------------------------
# Check filesystem type
# ------------------------------------------------------
configure_btrfs() {

  local btrfs_packages=("snapper" "snapper-tools" "snapper-suport" "snap-pac-git" "snapper-rollback" "btrfs-assistant" "btrfsmaintenance" "grub-btrfs" )
  filesystem_type=$(findmnt -n -o FSTYPE /)

  if [ "$filesystem_type" != "btrfs" ]; then
    INFO "Filesystem is not Btrfs. Skipping installation of Btrfs-specific packages."
    return
  fi

  # -------------------------------
  # Install Btrfs-specific packages
  # -------------------------------

  for package in "${btrfs_packages[@]}"; do
    if pacman -Qi "$package" &>/dev/null; then
      WARN "$package is already installed. Skipping."
    else
      # -------------------
      # Install the package
      # -------------------
      if yay -S --noconfirm "$package"; then
        echo "$package installed."
      else
        ERROR "Failed to install $package. Manual intervention may be required."
        exit 1
      fi
    fi
  done

  INFO "configuring btrfs..."

  if is_package_installed "timeshift" ; then
    INFO "timeshift detected, removing timeshift."
    sudo systemctl disable --now grub-btrfsd.service
    sudo rm /etc/systemd/system/grub-btrfsd.service
    sudo rm /etc/systemd/system/multi-user.target.wants/grub-btrfsd.service
    sudo pacman -Rns --noconfirm timeshift
    INFO "removed."
  fi


  if [ ! -f /etc/snapper/configs/root ]; then
      INFO "creating configs."
      sudo snapper -c root create-config /
      sudo chmod u=rwx,g=rx,o= /.snapshots # equal to 750
      sudo chown :wheel /.snapshots

      INFO "testing manual snapshots..."
      sudo snapper -c root create -d "initial snapshot"
      INFO "done..."

      INFO "adding user."
      sudo sed -i "s/ALLOW_USERS=\"\"/ALLOW_USERS=\"$(whoami)\"/" /etc/snapper/configs/root

      INFO "changeing number of snapshots to be kept."

      sudo sed -i 's/TIMELINE_LIMIT_HOURLY="[^"]*"/TIMELINE_LIMIT_HOURLY="3"/' /etc/snapper/configs/root
      sudo sed -i 's/TIMELINE_LIMIT_DAILY="[^"]*"/TIMELINE_LIMIT_DAILY="5"/' /etc/snapper/configs/root
      sudo sed -i 's/TIMELINE_LIMIT_WEEKLY="[^"]*"/TIMELINE_LIMIT_WEEKLY="7"/' /etc/snapper/configs/root
      sudo sed -i 's/TIMELINE_LIMIT_MONTHLY="[^"]*"/TIMELINE_LIMIT_MONTHLY="1"/' /etc/snapper/configs/root
      sudo sed -i 's/TIMELINE_LIMIT_QUARTERLY="[^"]*"/TIMELINE_LIMIT_QUARTERLY="0"/' /etc/snapper/configs/root
      sudo sed -i 's/TIMELINE_LIMIT_YEARLY="[^"]*"/TIMELINE_LIMIT_YEARLY="0"/' /etc/snapper/configs/root

      INFO "enabling snapshot services"
      sudo systemctl enable --now snapper-timeline.timer
      sudo systemctl enable --now snapper-cleanup.timer

      if is_package_installed "locate"; then
        INFO "locate is installed updating /etc/updatedb.conf"
        sudo sed -i 's/\(PRUNENAMES = "\)[^"]*/& .snapshots/' /etc/updatedb.conf
      fi
  fi

  if ! sudo btrfs subvolume get-default  / | grep -q FS_TREE; then
      INFO "setting default subvolume to @"

      local id
      id=$(sudo btrfs subvolume list / | awk '$NF == "@" {print $2}')

      sudo btrfs subvolume set-default "$id" / 

      INFO "done"
  fi

  INFO "makeing snapshots readonly."
  if ! grep -q rd.live.overlay.overlayfs=1; then
    sudo sed -i '/^GRUB_CMDLINE_LINUX=""/a GRUB_BTRFS_SNAPSHOT_KERNEL_PARAMETERS="rd.live.overlay.overlayfs=1"' /etc/default/grub
    sudo grub-mkconfig -o /boot/grub/grub.cfg
  fi

  if [[ $(stat -c "%d:%i" /) != $(stat -c "%d:%i" /home) ]]; then
    INFO "done."
    return
  fi

  INFO "/home is on the seprate partition as /"
  ask_prompt "set up configuration for /home too?" || (INFO "done." && return)

  if [ ! -f /etc/snapper/configs/home ]; then
      INFO "creating configs for /home"
      sudo snapper -c home create-config /home

      INFO "testing manual snapshots for /home..."
      sudo snapper -c home create -d "initial snapshot"
      INFO "done..."

      INFO "adding user to /home."
      sudo sed -i "s/ALLOW_USERS=\"\"/ALLOW_USERS=\"$(whoami)\"/" /etc/snapper/configs/home
      INFO "done"

      INFO "changeing number of snapshots to be kept."

      sudo sed -i 's/TIMELINE_LIMIT_HOURLY="[^"]*"/TIMELINE_LIMIT_HOURLY="3"/' /etc/snapper/configs/home
      sudo sed -i 's/TIMELINE_LIMIT_DAILY="[^"]*"/TIMELINE_LIMIT_DAILY="5"/' /etc/snapper/configs/home
      sudo sed -i 's/TIMELINE_LIMIT_WEEKLY="[^"]*"/TIMELINE_LIMIT_WEEKLY="7"/' /etc/snapper/configs/home
      sudo sed -i 's/TIMELINE_LIMIT_MONTHLY="[^"]*"/TIMELINE_LIMIT_MONTHLY="1"/' /etc/snapper/configs/home
      sudo sed -i 's/TIMELINE_LIMIT_QUARTERLY="[^"]*"/TIMELINE_LIMIT_QUARTERLY="0"/' /etc/snapper/configs/home
      sudo sed -i 's/TIMELINE_LIMIT_YEARLY="[^"]*"/TIMELINE_LIMIT_YEARLY="0"/' /etc/snapper/configs/home
  fi
}

configure_cpu() {
  # Trim whitespaces from the CPU vendor
  cpu_info=$(lscpu)

  # Debug print to check CPU info
  #echo "CPU Info: $cpu_info"

  # ---------------------------------------------------------------------
  # Check CPU vendor and execute AMD-specific code if AMD CPU is detected
  # ---------------------------------------------------------------------

  cpu_vendor=$(lscpu | grep "Vendor ID" | awk '{print $3}')

  if [ "$cpu_vendor" == "AuthenticAMD" ]; then
    INFO "AMD CPU detected.$reset Running AMD-specific code..."

    # Check if amd-ucode is installed
    if echo "$cpu_info" | grep -qi "AuthenticAMD"; then
      INFO "amd-ucode is installed."
    # Add your AMD-specific code here
    else
      WARN "amd-ucode is not installed. Please install it for optimal performance."
    # Add code to install amd-ucode if desired
    fi
  fi

  # -------------------------------------------------------------------
  # Check CPU vendor and execute INTEL-specific code if CPU is detected
  # -------------------------------------------------------------------

  if [ "$cpu_vendor" == "GenuineIntel" ]; then
    INFO "INTEL CPU detected.${reset} Running INTEL-specific code..."

    # Check if intel-ucode is installed
    if pacman -Qi intel-ucode &>/dev/null; then
      INFO "intel-ucode is installed."
    # Add your INTEL-specific code here
    else
      WARN "intel-ucode is not installed. Please install it for optimal performance."
    # Add code to install intel-ucode if desired
    fi
  fi
}

configure_grub() {
  INFO "Please be patient; we are doing a last check to see if GRUB is correctly configured for your hyprland installation with an NVIDIA GPU."
  INFO "For safety reasons, we are now making a backup of the GRUB configuration. See /etc/default/grub.bak"

  backup /etc/default/grub cp

  # Check if the nvidia-drm.modeset=1 option is present in GRUB_CMDLINE_LINUX
  if grep -q "nvidia-drm.modeset=1" /etc/default/grub; then
    INFO "GRUB_CMDLINE_LINUX already contains nvidia-drm.modeset=1. No changes needed."
    return
  fi
  # Append the option if it's not present
  sudo sed -i 's/GRUB_CMDLINE_LINUX="\(.*\)"/GRUB_CMDLINE_LINUX="\1 nvidia-drm.modeset=1"/' /etc/default/grub

  # Regenerate GRUB configuration
  sudo grub-mkconfig -o /boot/grub/grub.cfg

  INFO "Added nvidia-drm.modeset=1 to GRUB_CMDLINE_LINUX."

  # Update GRUB only if changes are made
  sudo update-grub
}

configure_nvidia() {
  # ------------------------------------------------------
  # Check if Nvidia GPU is present
  # ------------------------------------------------------
  if ! eval "$(lspci | grep -i "NVIDIA" >/dev/null)"; then
    INFO "No Nvidia GPU detected. Skipping installation of Nvidia-specific packages."
    return
  fi
  INFO "Nvidia GPU detected. Installing Nvidia packages..."

  # Install Nvidia-specific packages
  nvidia_packages=("libva" "libva-nvidia-driver-git" "nvidia-dkms" "nvidia-utils" "lib32-nvidia-utils" "nvidia-settings")

  for package in "${nvidia_packages[@]}"; do
    if pacman -Qi "$package" &>/dev/null; then
      INFO "$package is already installed. Skipping."
    else
      # Install the package
      if yay -S --noconfirm "$package"; then
        INFO "$package installed."
      else
        ERROR "Failed to install $package. Manual intervention may be required."
        exit 1
      fi
    fi
  done

  configure_grub
}

change_shell() {
  local user=$1
  ask_prompt "change shell to fish user: ${orange}${user}? y/n:  " || { echo "user shell remained unchanged";  return; }

  if sudo chsh "-s $(which fish) ${user}"; then
    Warn "shell changed. restart terminal or source profile."
    return
  fi

  ERROR "changeing shell to fish failed for the user \"$(whoami)\"
change it yourself after installation"
}

add_windows_persian_keybord_layout() {
  if ask_prompt "add windows keybord layout for persian?$yellow kde now have persian windows layout (y/n):  "; then
    git clone https://github.com/sinadarvi/windows-persian-keyboard-for-linux.git
    cd windows-persian-keyboard-for-linux
    sudo chmod +x ./install
    sudo ./install
    cd "$OLDPWD"
    sudo rm -r windows-persian-keyboard-for-linux
    INFO "moving on..."
  fi
}

set_fish_aliases() {
  ask_prompt "set aliases for ls to eza? (fish sell only) (y/n):  " || return

  local alias_path=~/.config/fish/conf.d/alias.fish

  if [ -f "$alias_path" ] && [ "$(ask_prompt "do you want to backup $alias_path?")" ]; then
    backup "$alias_path" cp
  fi

  touch "$alias_path"

  if ! grep "alias ls='eza --color=always --sort=size'" ~/.config/fish/conf.d/alias.fish &>/dev/null; then
    tee -a $alias_path >/dev/null <<EOT
alias ls='eza --color=always --sort=size'

#list only directories
alias ld='eza -lD'

#list only files
alias lf='eza -lF --color=always | grep -v/'

#list only hidden files
alias lh='eza -dl .* --group-directories-first'

#list everything
alias ll='eza -al'

#list everything sorted by time updated
alias lt='eza -al --sort=modified'

EOT
  fi
}

install_starship() {
  ! eval "$(pacman -Qi starship &>/dev/null)" || return

  INFO "installing startship"
  sudo pacman --needed --noconfirm -S starship

  if ! grep 'starship init fish | source' ~/.config/fish/config.fish &>/dev/null; then
    echo 'starship init fish | source' >>~/.config/fish/config.fish
  fi

  if ! grep 'starship init bash' ~/.bashrc &>/dev/null; then
    echo -e "eval \"$(starship init bash)\"" >>~/.bashrc
  fi

}

configure_system() {

  configure_btrfs
  configure_cpu
  configure_nvidia

  #chnge shell for user
  change_shell "$(whoami)"

  #change shell for root
  change_shell "root"

  #add persian keyboard
  add_windows_persian_keybord_layout

  #set eza alias
  set_fish_aliases

  if ! eval "$(fish -c "fisher" &>/dev/null)"; then
    INFO "installing fisher..."

    fish --command "curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher"
    echo "done"
  fi

  configure_zoxide

  sudo rm -rf /usr/share/sddm/themes/{elarun, maldives, maya} || { ERROR "Removal of unwanted folders failed (sddm)."; }

  #configuring procs
  cd "$HOME/.config/fish/conf.d/"

  if ! [ -f ./procs.fish ]; then
    procs --gen-completion fish
  fi
  cd "$OLDPWD"

  install_starship

  configure_bare_git

  #enable bluetooth support
  sudo systemctl enable bluetooth.service
  sudo systemctl enable --now bluetooth
}

install_scintific() {

  ask_prompt "install scientific apps? $yellow you may not need them.$reset (y/n):  " || return

  install_packages scientific_packages "no"

  [ -f /usr/lib/python3.11/EXTERNALLY-MANAGED ] && sudo rm /usr/lib/python3.11/EXTERNALLY-MANAGED

  python -m pip install scipy

  pip install numpy
  pip install jupyterlab
  pip install notebook
  pip install voila
  pip install sympy
  pip install ipyparallel
}

change_mirrors() {

  ask_prompt "change mirrors? (rate-mirrors program will be installed) y/n:	" || return

  INFO "installing rate-mirrors"

  ##it will get when its allreaddy installed and why break pipe here we can break it when calling it
  ##lets not delete this block to remind us we have problems to solve.

  #if ! $( yay -S --needed --noconfirm rate-mirrors) ; then
  #ERROR "installation of \"rate-mirrors\" failed. try solve the problem manually and try again."
  #exit
  #fi

  yay -S --needed --noconfirm rate-mirrors

  #updating arch mirrorlist

  if ask_prompt "do want to backup mirrorlist?(recommended) y/n:	"; then
    backup /etc/pacman.d/mirrorlist cp
  fi

  local http="--protocol http"
  local https="--protocol https"
  local protocol="$http $https"

  if ! eval "$(ask_prompt "do you want to include http? y/n:	")"; then
    protocol="$https"
  fi

  INFO "updating arch mirrorlist"
  eval "rate-mirrors --allow-root $protocol arch" | sudo tee /etc/pacman.d/mirrorlist

  #updating	endeavourOs mirrorlist
  ask_prompt "do you want to update EndeavourOs mirrorlist as well?" || return

  ask_prompt "do want to backup endeavouros-mirrorlist?(recommended) y/n:	" && backup /etc/pacman.d/endeavouros-mirrorlist cp

  if ask_prompt "do you want to include http? y/n:	"; then
      protocol="$http $https"
  else
      protocol=$https
  fi

  INFO "updating endeavourOs mirrorlist"

  eval "rate-mirrors --allow-root $protocol endeavouros" | sudo tee /etc/pacman.d/endeavouros-mirrorlist
}

yay_clean_up() {

  local number_of_lines=$1

  ask_prompt "do you want to clear package installation cache? (y/n):	" || return

  Blue "usally it's good to have 3 last installed package cache for rollback system,
but in my openion it's ok to remove them as they are fresh install and I hope furthur
updates wont force to rollback also having btrs timeshift will reduce the stress."

  WARN "showing max of 50 lines."

  INFO "printing yay cache directory"
  sudo dust -srRP -d 1 -n "$number_of_lines" ~/.cache/yay
  Yellow "--------------------------------------------"
  echo2

  INFO "printing pacman lib cache directory"
  sudo dust -srRP -d 1 -n "$number_of_lines" /var/lib/pacman
  Yellow "--------------------------------------------"
  echo2

  INFO "printing pacman cache directory"
  sudo dust -srRP -d 1 -n "$number_of_lines" /var/cache/pacman/pkg
  Yellow "--------------------------------------------"
  echo2

  ask_prompt "prossed with operation?(y/n):	" || return

  yay -Scc
}

install_zen_kernel() {

  WARN "zen kernel(or any over kernels over than vanila linux) may have some problems like for example pc may not shutdown properly sometimes. use at your own risk"
  ask_prompt "do you want to install and change kernel to zen-kernel? (y/n):	" || return

  INFO "current kernel: $(uname -r)"

  sudo pacman --needed --noconfirm -S linux-zen linux-zen-headers
  sudo grub-mkconfig -o /boot/grub/grub.cfg

  INFO "install complited, check kernel after reboot with 'uname -r' command"
}

install_fonts() {
  local font_packages=(ttf-fira-code ttc-iosevka ttf-ms-win11-auto ttf-ms-win10-auto ttf-jetbrains-mono-nerd cantarell-fonts ttf-noto-nerd ttf-nerd-fonts-symbols-mono ttf-font-awesome awesome-terminal-fonts ttf-bitstream-vera ttf-dejavu ttf-liberation noto-fonts-extra ttf-opensans adobe-source-sans-pro-fonts terminus-font ttf-droid ttf-hack ttf-ms-fonts steam-fonts)

  ask_prompt "install fonts? (y/n):	" || return

  install_packages font_packages "no" "--noconfirm"
}

dotnet_installer() {
  local -n packages=$1

  for package in "${packages[@]}"; do
    INFO "$package"
    dotnet tool install -g "$package"
    INFO "done."
    echo2
  done
}

install_dotnet_tools() {
  ask_prompt "install dotnet cli tools? (y/n):  " || return

  sudo dotnet workload update

  local plugins=("dotnet-script" "Nuke.GlobalTool" "csharprepl" "dotnet-depends" "ilspycmd" "dotnet-grpc" "Microsoft.dotnet-httprepl" "GitVersion.Tool" "dotnet-ef")

  WARN "dotnet is very slow to download and install tools so dont panic if it looks stuck. just be patient each package may take 5 to 10 mins to install dont cancell operation."
  INFO "installing dotnet cli tools..."
  dotnet_installer plugins
}

install_linq_pad() {
  ask_prompt "install linq pad? (dotnet play ground good for sql; wine must been installed) (y/n):	" || return

  local current_dir
  current_dir=$(pwd)

  local temp_dir="$current_dir/bootstrap.d"

  mkdir "$temp_dir" && cd "$temp_dir"

  http -d -o LINQPad_7.7.15.rar https://dl3.downloadly.ir/Files/Software/LINQPad_7.7.15_Premium_Downloadly.ir.rar

  unrar x LINQPad_7.7.15.rar .

  cd "./LINQPad 7.7.15 Premium/"

  WARN "this is a windows app installer you must install it with it's GUI it's recommended to not change defualt path. "

  local message="press return to countinue."
  echo -en "$blue$message$reset" >&2
  read -r

  wine LINQPad7Setup_Downloadly.ir.exe &>/dev/null

  cp -rf Crack/* "$HOME/.wine/drive_c/Program Files/LINQPad7/" &>/dev/null

  cd "$temp_dir"

  http -d https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/runtime-desktop-7.0.17-windows-x64-installer

  WARN "this is a windows app installer you must install it with it's GUI it's recommended to not change defualt path. "

  local message="press return to countinue."
  echo -en "$blue$message$reset" >&2
  read -r

  wine ./windowsdesktop-runtime-7.0.17-win-x64.exe &>/dev/null

  INFO "writeing wine registery."
  INFO "setting DOTNET_ROOT=C:\PROGRAM FILES\dotnet"

  wine REG ADD 'HKEY_CURRENT_USER\Environment' /v DOTNET_ROOT /t REG_SZ /d 'C:\Program Files\dotnet'

  rm -rf "$temp_dir"

  cd "$current_dir"
}

install_dotnet() {

  local rider_description="rider eap is professinal version where rider is not.
using rider eap does not need any licencing as eap stands for early access program
its license trial is 30 days and you have to update to next eap.
by installing rider you need to have license (or get it in other ways ;) )"

  ask_prompt "install dotnet group? (sdk $(pacman -Qi dotnet-sdk | rg Version)) (y/n)?:	" || return

  install_packages dotnet_packages "no"

  #***rider***
  rider_editsions=(rider rider-eap)
  install_optional_package "rider(dotnet IDE)" rider_editsions "$rider_description"

  #shell auto completion
  if ! grep 'complete -f -c dotnet -a "(dotnet complete (commandline -cp))"' ~/.config/fish/config.fish &>/dev/null; then
    INFO "configuring fish shell auto completrion."
    echo 'complete -f -c dotnet -a "(dotnet complete (commandline -cp))"' >>"$HOME/.config/fish/config.fish"
  fi

  if ! grep '_dotnet_bash_complete' ~/.bashrc &>/dev/null; then

    INFO "configuring fish shell auto completrion."

tee -a ~/.bashrc > /dev/null << 'EOF'
    # bash parameter completion for the dotnet CLI

    function _dotnet_bash_complete()
    {
        local cur="${COMP_WORDS[COMP_CWORD]}" IFS=$'\n' # On Windows you may need to use use IFS=$'\r\n'
        local candidates

        read -d '' -ra candidates < <(dotnet complete --position "${COMP_POINT}" "${COMP_LINE}" 2>/dev/null)

        read -d '' -ra COMPREPLY < <(compgen -W "${candidates[*]:-}" -- "$cur")
    }

    complete -f -F _dotnet_bash_complete dotnet
EOF
  fi

  if ask_prompt "do you want to instal ILSpy? it's dotnet decompiler (decompiling windows apps on linux is partial) (y/n):	"; then
    yay --noconfirm --needed -S avaloniailspy
  fi

  install_dotnet_tools

  install_linq_pad
}

#--------------------------------main-----------------------------------

main() {

  #use a simple help about script

  opts=$(getopt --options h --longoptions 'help' -n bootstrap -- "$@")

  eval set -- "$opts"

  #this wont work and need debuging

  while [ -n "$*" ]; do
    case "$1" in
    -h | --help)
      usage
      shift
      exit
      ;;
    --) break ;;
    *)
      ERROR "Unrecognized option '$1'"
      usage
      ;;
    esac
  done

  if [[ $EUID == 0 ]]; then
    ERROR "do not run this script as root, the program will ask you for sudo privilege if needed."
    exit 1
  fi

  #check for internet connection
  /usr/bin/eos-connection-checker || {
    ERROR "Internet connection is not available. exiting"
    exit
  }

  Blue "Hello, World! ;)"

  echo -e "$blue"
  cat <<EOF
---------------------------------------------------------------------------------------------------------------------------
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢰⣦⡀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⢀⣴⣦⠀⠀⠀⠀
⠀⠀⠀⠀⣿⣿⣿⣦⡀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣆⠀⠀⢀⣴⣿⣿⣿⠀⠀⠀⠀,ggggggggggg,                               ,gggg,
⠀⠀⠀⠀⣿⣿⣿⣿⣷⡄⠘⣿⣿⣿⣿⣿⣿⣿⡿⠀⣴⣿⣿⣿⣿⣿⠀⠀⠀⠀dP"""88""""""Y8,      ,dPYb,                d8" "8I               I8
⠀⢸⣦⡀⠙⢿⣿⣿⣿⣿⠆⠈⠛⣋⣉⣉⡛⠛⠀⢾⣿⣿⣿⣿⡿⠟⢀⣤⡆⠀Yb,  88      \`8b      IP'\`Yb                88  ,dP               I8
⠀⢸⣿⣿⣷⣄⠙⢿⠟⢁⣴⣾⣿⠿⠛⠻⣿⣿⣦⣄⠙⢿⡿⠋⣀⣴⣿⣿⡇⠀ \`"  88      ,8P      I8  8I             8888888P\"             88888888
⠀⢸⣿⣿⣿⣿⣷⣄⠐⢿⣿⠟⢁⣴⣾⣦⡀⠙⢿⣿⡷⠀⣠⣾⣿⣿⣿⣿⡇⠀     88aaaad8P\"       I8  8\'                88                    I8
⠀⢸⣿⣿⣿⣿⣿⣿⣦⡀⠁⣴⣿⣿⣿⣿⣿⣦⡈⠋⣠⣾⣿⣿⣿⣿⣿⣿⠃⠀     88""""",gggg,gg  I8 dP   ,ggg,         88          ,ggggg,   I8   gg      gg    ,g,
⠀⠈⣿⣿⣿⣿⣿⣿⡟⢀⣾⣿⣿⣿⣿⣿⣿⣿⣷⡀⢻⣿⣿⣿⣿⣿⣿⡏⠀⠀     88    dP"  "Y8I  I8dP   i8" "8i   ,aa,_88         dP"  "Y8gggI8   I8      8I   ,8'8,
⠀⠀⠸⣿⣿⣿⣿⣿⠁⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠈⣿⣿⣿⣿⣿⡟⠀⠀⠀     88   i8'    ,8I  I8P    I8, ,8I  dP" "88P        i8'    ,8I ,I8,  I8,    ,8I  ,8'  Yb
⠀⠀⠀⠹⣿⣿⣿⣿⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⣿⣿⣿⡟⠁⠀⠀⠀     88  ,d8,   ,d8b,,d8b,_  \`YbadP'  Yb,_,d88b,,_   ,d8,   ,d8',d88b,,d8b,  ,d8b,,8'_   8)
⠀⠀⠀⠀⠈⠻⣿⣿⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣿⣿⡿⠋⠀⠀⠀⠀⠀     88  P"Y8888P"\`Y88P'"Y88888P"Y888  "Y8P"  "Y88888P"Y8888P"  8P""Y88P'"Y88P"\`Y8P' "YY8P8P
⠀⠀⠀⠀⠀⠀⠈⠛⠧⠘⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠼⠋⠁⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠛⠛⠛⠛⠛⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
---------------------------------------------------------------------------------------------------------------------------
EOF
  echo -e "$reset"

  INFO "updating system first"
  yay --noconfirm -Syu

  Yellow "---------------------------------------------install yay----------------------------------------------"
  install_yay
  echo2

  Yellow "--------------------------------------------Change Mirrors--------------------------------------------"
  change_mirrors
  echo2

  Yellow "---------------------------------------------Chacnge DNS----------------------------------------------"
  change_dns
  echo2

  Yellow "-------------------------------------------Installing fonts-------------------------------------------"
  install_fonts
  echo2

  Yellow "--------------------------------------------Emptying cache--------------------------------------------"
  yay_clean_up 10
  echo2

  Yellow "---------------------------------------Installing Basic packages--------------------------------------"
  install_packages pkgs "yes"
  echo2

  Yellow "------------------------------------------configuring system------------------------------------------"
  configure_system
  echo2

  Yellow "----------------------------------------Installing Plugins--------------------------------------------"
  install_fish_plugins
  echo2

  Yellow "-----------------------------------------Installing Dotnet--------------------------------------------"
  install_dotnet
  echo2

  Yellow "------------------------------------Installing optional packages--------------------------------------"
  optional_packages
  echo2

  Yellow "-----------------------------------Installing scientific packages-------------------------------------"
  install_scintific
  echo2

  Yellow "--------------------------------------------Removing cache--------------------------------------------"
  yay_clean_up 50
  echo2

  Yellow "-------------------------------------Installing zen kernel--------------------------------------------"
  install_zen_kernel
  echo2

  Yellow "-----------------------------------------------finished-----------------------------------------------"
  INFO "\n\ninstallation finished.
things to do now:
    1) reboot pc
    2) configure vpn (nekoray or clash)
    3) install telegram
    4) install docker and lazydocker
    5) install hyprland if you want form
    5.1)	https://github.com/JaKooLit/Arch-Hyprland
    5.2)	https://github.com/RedBlizard/hyprland-installation (work in progress)
    6) install cheat and delta (due to gitlab restrictions)
    7) configure timeshift for system snapshots (if not using btrfs)

    good luck!"

  filesystem_type=$(findmnt -n -o FSTYPE /)

  if [ "$filesystem_type" == "btrfs" ]; then
      INFO "btrfs is configured for the system you can use it's goodies."
      INFO "for manual snapshots use the blow template."
      INFO "\$ sudo snapper -c root create -d \"**Base system install**\""
  fi


  if ask_prompt "do you want to restart now?"; then
    WARN "rebooting in 10 seconds."
    sleep 10
    reboot
  fi

}

main "$@"
