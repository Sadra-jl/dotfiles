#!/bin/bash

#⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
#⠀⠀⠀⠀⢰⣦⡀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⢀⣴⣦⠀⠀⠀⠀
#⠀⠀⠀⠀⣿⣿⣿⣦⡀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣆⠀⠀⢀⣴⣿⣿⣿⠀⠀⠀⠀,ggggggggggg,                               ,gggg,
#⠀⠀⠀⠀⣿⣿⣿⣿⣷⡄⠘⣿⣿⣿⣿⣿⣿⣿⡿⠀⣴⣿⣿⣿⣿⣿⠀⠀⠀⠀dP"""88""""""Y8,      ,dPYb,                d8" "8I               I8
#⠀⢸⣦⡀⠙⢿⣿⣿⣿⣿⠆⠈⠛⣋⣉⣉⡛⠛⠀⢾⣿⣿⣿⣿⡿⠟⢀⣤⡆⠀Yb,  88      `8b      IP'`Yb                88  ,dP               I8
#⠀⢸⣿⣿⣷⣄⠙⢿⠟⢁⣴⣾⣿⠿⠛⠻⣿⣿⣦⣄⠙⢿⡿⠋⣀⣴⣿⣿⡇⠀ `"  88      ,8P      I8  8I             8888888P"             88888888
#⠀⢸⣿⣿⣿⣿⣷⣄⠐⢿⣿⠟⢁⣴⣾⣦⡀⠙⢿⣿⡷⠀⣠⣾⣿⣿⣿⣿⡇⠀     88aaaad8P"       I8  8'                88                    I8
#⠀⢸⣿⣿⣿⣿⣿⣿⣦⡀⠁⣴⣿⣿⣿⣿⣿⣦⡈⠋⣠⣾⣿⣿⣿⣿⣿⣿⠃⠀     88""""",gggg,gg  I8 dP   ,ggg,         88          ,ggggg,   I8   gg      gg    ,g,
#⠀⠈⣿⣿⣿⣿⣿⣿⡟⢀⣾⣿⣿⣿⣿⣿⣿⣿⣷⡀⢻⣿⣿⣿⣿⣿⣿⡏⠀⠀     88    dP"  "Y8I  I8dP   i8" "8i   ,aa,_88         dP"  "Y8gggI8   I8      8I   ,8'8,
#⠀⠀⠸⣿⣿⣿⣿⣿⠁⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠈⣿⣿⣿⣿⣿⡟⠀⠀⠀     88   i8'    ,8I  I8P    I8, ,8I  dP" "88P        i8'    ,8I ,I8,  I8,    ,8I  ,8'  Yb
#⠀⠀⠀⠹⣿⣿⣿⣿⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⣿⣿⣿⡟⠁⠀⠀⠀     88  ,d8,   ,d8b,,d8b,_  `YbadP'  Yb,_,d88b,,_   ,d8,   ,d8',d88b,,d8b,  ,d8b,,8'_   8)
#⠀⠀⠀⠀⠈⠻⣿⣿⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣿⣿⡿⠋⠀⠀⠀⠀⠀     88  P"Y8888P"`Y88P'"Y88888P"Y888  "Y8P"  "Y88888P"Y8888P"  8P""Y88P'"Y88P"`Y8P' "YY8P8P
#⠀⠀⠀⠀⠀⠀⠈⠛⠧⠘⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠼⠋⠁⠀⠀⠀⠀⠀⠀⠀
#⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠛⠛⠛⠛⠛⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀



#hello, world
#
# The execution of this script stops if a command or pipeline has an error.
# For example, failure to install a dependent package will cause the script
# to stop execution.

set -e

#--------------------------------variables-----------------------------------

#define some colors

#foreground
red="\033[38:5:1m"
yellow="\033[1;93m "
blue="\033[38:5:45m"
white="\033[38:5:255m"

#background
red_b="\033[48:5:1m"
yellow_b="\033[48:5:226m"
blue_b="\033[48:5:45m"
white_b="\033[48:5:255m"
reset="\033[0m"

#list of packages to install

pkgs=(bluez bluez-utils musicbee wl-clipboard typora-free github-cli wine fish neovim visual-studio-code-bin paru nekoray-bin clash-for-windows-bin eza dust duf fd ripgrep hyperfine gping procs httpie httpie-desktop-bin curlie xh zoxide bat cava sd jq choose broot fzf betterdiscordctl-git skypeforlinux-bin timeshift calibre xsv clipboard nodejs npm age lazygit python-pip kitty cargo ripgrep scc bat-extras navi hexyl postman-bin github-desktop-bin bash-completion bash-language-server dolphin-plugins dunst grub-btrfs grub-hook update-grub tty-clock unimatrix-git vscode-json-languageserver git neofetch )

#todo add dnSpyEx (hard to get it working on linux)
dotnet_packages=(dotnet-host-bin dotnet-runtime-bin dotnet-sdk-bin dotnet-targeting-pack-bin)

#anaconda is wierd lets forget it for now
scientific_packages=(maxima geogebra kalzium kbibtex kstars labplot mathematica python-pandas python-matplotlib python-tensorflow cython)

steam_packages=(steam lutris steam-native-runtime dxvk-bin vkd3d-proton winetricks pipewire-pulse)

invidia_packages=(nvidia-dkms nvidia-utils lib32-nvidia-utils nvidia-settings )


#--------------------------------functions-----------------------------------

#todo: im not using this 9 functions but they looked nice to have.
#	must refactory and use them instead of using hard escape code strings

# its very strange behavieour for bash or mayble sh in general
# when using in line bracket like "func_name() { commands }"
# it will fail and ; must be inserted like bellow form
# "func_name() {commands;}"

echo2()   { echo -e  "$@" >&2 ; }

# following 30 lines is from endeavourOs scripts im sure this error is not a big deal and will work
Red(){ echo2 "$red""$@""$reset"; }
Yellow(){ echo2 "$yellow""$@""$reset"; }
Blue(){ echo2 "$blue""$@""$reset"; }

WARN() {
    local msg="$1"
    Yellow "==> : warning: $msg"
}
INFO() {
    local msg="$1"
    local prefix="$2"
    case "$prefix" in
        "") Blue "==> info: $msg" ;;
        *)  Blue "$prefix$msg" ;;
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
    for item in "$@" ; do
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
    local backup_dir="$item.back"

    # If .back already exists, find the next available numeric suffix
    suffix=1
    while [ -e "$backup_dir$suffix" ]; do
        ((suffix++))
    done

    mv "$item" "$backup_dir$suffix"
}

#ask user yes no questions
 ask_prompt() {

  local message=$1

  while true; do

    echo -en "$blue$message$reset" >&2
    read -r  yn

    case $yn in
        [Yy]* ) return 0;;
        [Nn]* ) return 1;;
        * ) ERROR "Please answer yes or no.";;
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

 install_optional_package(){
  local package_name=$1
  local -n package_options=$2
  local description=$3

   ! eval "$( ask_prompt "install $package_name? y/n:  ")"  && return

  WARN "apps to install options are:	"

  for option in "${package_options[@]}"; do
    Blue "$option"
  done

  Blue "$description"

  selected=()

  PS3='You can select multiple space separated options: '
  select options in "${package_options[@]}" ; do
    for reply in $REPLY ; do
    selected+=(${package_options[reply - 1]})
    done
    [[ $selected ]] && break
  done

  yay -S --needed --noconfirm "${selected[@]}"
}


 change_dns(){
   ! eval "$( ask_prompt "use Beshkan DNS servers to bypass restriction?$reset ($yellow this will disable NetworkManager auto DNS assignment$reset) y/n:	")" && return

  backup /etc/NetworkManager/NetworkManager.conf
  echo -e "[Main]\ndns=none\n#plugins=ifcfg-rh,ibft" | sudo tee -a /etc/NetworkManager/NetworkManager.conf
  sudo systemctl restart NetworkManager.service

  echo -e "$yellow_b $red waiting 10 seconds for restarting NetworkManager.service$reset\n"
  sleep 10

  backup /etc/resolv.conf
  echo -e "nameserver 181.41.194.177\nnameserver 181.41.194.186" | sudo tee -a /etc/resolv.conf
}

fisher_installer(){
  local -n packages=$1

  for package in "${packages[@]}"; do
    INFO "$package"
    fish --command "fisher install $package"
    INFO "done."
    echo
  done
}

install_fish_plugins(){

  local plugins=("PatrickF1/fzf.fish" "franciscolourenco/done" "jorgebucaran/spark.fish" "jorgebucaran/autopair.fish" "nickeb96/puffer-fish" "meaningful-ooo/sponge")

  #i know its better to not it but fuck it i dont want to mess with bash
  if ask_prompt "install fish plugins? (y/n):  "; then
    INFO "installing fish plugins..."
    echo
    fisher_installer plugins
  fi
}

configure_zoxide(){

  local bash_config
  bash_config="eval \"$(zoxide init bash)\""
  local fish_config='zoxide init fish | source'

  ask_prompt "do you want to backup config.fish? (y/n):  " && backup ~/.config/fish/config.fish
  ask_prompt "do you want to backup .bashrc? (y/n):  " && backup ~/.bashrc

  INFO "configuring zoxide..."


  if ! grep "$bash_config" ~/.bashrc &> /dev/null; then
    echo "$bash_config" >> ~/.bashrc
  fi

  if ! grep "$fish_config" ~/.config/fish/config.fish &> /dev/null; then
    echo "$fish_config" >> ~/.config/fish/config.fish
  fi

  if ask_prompt "set an alias for cd to zoxide? (fish shell only) (y/n):  "; then

    #it is very important to alias this in config.fish after source"ing" zoxide
    #becuase if aliasing accure before zoxide initialis z and cd will call each other recursively
    #and the main reason for putting this in this file instead of ~/.config/fish/conf.d/alias.fish
    #is that by defualt all .fish files in ~/.config/fish/conf.d/ will be run before ~/.config/fish/config.fish
    #and abow situation might occur when accidently sourcing multiple files or config.fish more
    #than once
    
    if ! eval "$(grep 'alias cd="z"' ~/.config/fish/config.fish)" &> /dev/null; then
      echo -e 'alias cd="z"\n' >> ~/.config/fish/config.fish
    fi

    INFO "done"
  fi
}

install_packages(){

  local -n packages_to_install=$1
  local terminate_app_str=$2
  local pacman_confirm=${3:"--noconfirm"}

  INFO "following packages will be installed:"

  #readarray -d " " -t array <<< "$packages_to_install"

  #for (( n=0; n < ${#array[*]}; n++)) do
    #echo -e "\t${array[n]}"
  #done

  for pkg in "${packages_to_install[@]}"; do
    echo -e "\t$pkg"
  done


  if ! eval "$( ask_prompt "press y to continue:  ")"; then
    if [ "$terminate_app_str" = "yes" ]; then
      WARN "this packages are important to for furthur installation and are 50% of what this script is about
if you accidently passed no its time control+c now and start over."
      return
    fi

    echo "moving on..."
    return
  fi

  INFO "installing packages"
  yay -S --needed "$pacman_confirm" "${packages_to_install[@]}"
}


 optional_packages(){

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
  office_editsion=(libreoffice-fresh onlyoffice-bin )
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


  if ask_prompt "install steam? (y/n):	";then
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

configure_bare_git(){
  if ask_prompt "create a git for your configurations? you can add your dotfiles in it and sync with bare git. (y/n)"; then

    git "init --bare $HOME/.cfg"

    /usr/bin/git "--git-dir=$HOME/.cfg/ --work-tree=$HOME config --local status.showUntrackedFiles no"

    echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> "$HOME/.config/fish/conf.d/alias.fish"

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
  fi
}

configure_system(){
  #chnge shell for user
  #i dont like this if statement
  if ask_prompt "change shell to fish? y/n:  "; then
    if sudo chsh "--shell $(which fish) $(whoami)"; then
      Warn "shell changed. restart terminal or source profile."
    else
      ERROR "changeing shell to fish failed for the user \"$(whoami)\"
change it yourself after installation"
    fi
  else
    echo "user shell remained unchanged"
  fi

  #change shell for root
  #i dont like this code duplication
  if ask_prompt "change shell to fish?($red_b root$reset) y/n:  "; then
    if sudo chsh --shell "$(which fish)" root ; then
      WARN "shell changed. restart terminal or source profile."
    else
      ERROR "changeing shell to fish failed for the root user \"$(whoami)\"
change it yourself after installation"
    fi
  else
    echo "root user shell remained unchanged"
  fi

  #add persian keyboard
  if ask_prompt "add windows keybord layout for persian?$yellow kde now have persian windows layout (y/n):  "; then
    git clone https://github.com/sinadarvi/windows-persian-keyboard-for-linux.git
    cd windows-persian-keyboard-for-linux
    sudo chmod +x ./install
    sudo ./install
    cd ..
    sudo rm -r windows-persian-keyboard-for-linux
    INFO "moving on..."
  fi

  #set eza aliases
  if ask_prompt "set aliases for ls to eza? (fish sell only) (y/n):  "; then

    local alias_path=~/.config/fish/conf.d/alias.fish

    if [ -f "$alias_path" ] && [ $( ask_prompt "do you want to backup $alias_path?") ]; then
      backup "$alias_path"
    fi

    touch $alias_path

    if ! grep "alias ls='eza --color=always --sort=size'" ~/.config/fish/conf.d/alias.fish &> /dev/null; then
    tee -a $alias_path > /dev/null << EOT
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
  fi

  INFO "installing fisher..."

  fish --command "curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher"
  echo "done"

  configure_zoxide


  sudo rm -rf /usr/share/sddm/themes/{elarun, maldives, maya} || { ERROR "Removal of unwanted folders failed (sddm).";  }

  #configuring procs
  local cwd
  cwd=$(pwd)

  cd "$HOME/.config/fish/conf.d/"

  if ! [ -f ./procs.fish ]; then
    procs --gen-completion fish
  fi
  cd "$cwd"

   #add starship
    INFO "installing startship"
    curl -sS https://starship.rs/install.sh | sh
   if ! grep 'starship init fish | source' ~/.config/fish/config.fish &> /dev/null; then
       echo 'starship init fish | source' >> ~/.config/fish/config.fish
   fi

   if ! grep 'starship init bash' ~/.bashrc &> /dev/null; then
       echo -e "eval \"$(starship init bash)\"" >> ~/.bashrc
   fi

   configure_bare_git

    sudo systemctl enable bluetooth.service
    sudo systemctl enable --now bluetooth
}


install_scintific(){


   ! eval "$( ask_prompt "install scientific apps? $yellow you may not need them.$reset (y/n):  ") " &&  return

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

change_mirrors(){

  ! eval "$(ask_prompt "change mirrors? (rate-mirrors program will be installed) y/n:	")" && return

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
    backup /etc/pacman.d/mirrorlist;
  fi

  local http="--protocol http"
  local https="--protocol https"
  local protocol="$http $https"

  if ! eval "$( ask_prompt "do you want to include http? y/n:	")" ; then
    protocol=$https;
  fi

  INFO "updating arch mirrorlist"
  rate-mirrors --allow-root "$protocol" arch | sudo tee /etc/pacman.d/mirrorlist

  #updating	endeavourOs mirrorlist
  ! eval "$( ask_prompt "do you want to update EndeavourOs mirrorlist as well?") " && return

   eval "$( ask_prompt "do want to backup endeavouros-mirrorlist?(recommended) y/n:	") " && backup /etc/pacman.d/endeavouros-mirrorlist

  if  ask_prompt "do you want to include http? y/n:	"; then
    protocol="$http $https"
  else
    protocol=$https
  fi

  INFO "updating endeavourOs mirrorlist"

  rate-mirrors --allow-root "$protocol" endeavouros | sudo tee /etc/pacman.d/endeavouros-mirrorlist
}

 yay_clean_up() {

  local number_of_lines=$1

  ! eval "$(ask_prompt "do you want to clear package installation cache? (y/n):	")" && return

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


  ! eval "$(ask_prompt "prossed with operation?(y/n):	")" && return

  yay -Scc
 }

 install_zen_kernel() {


    WARN "zen kernel(or any over kernels over than vanila linux) may have some problems like for example pc may not shutdown properly sometimes. use at your own risk"
    ! eval "$(ask_prompt "do you want to install and change kernel to zen-kernel? (y/n):	")" && return

    INFO "current kernel: $(uname -r)"

    sudo pacman --needed --noconfirm -S  linux-zen linux-zen-headers

    sudo grub-mkconfig -o /boot/grub/grub.cfg

    INFO "install complited, check kernel after reboot with 'uname -r' command"
  }

 install_fonts() {
  local font_packages=(ttf-firacode ttf-ms-win11-auto ttf-ms-win10-auto ttf-jetbrains-mono-nerd cantarell-fonts ttf-noto-nerd ttf-nerd-fonts-symbols-mono ttf-font-awesome awesome-terminal-fonts ttf-bitstream-vera ttf-dejavu ttf-liberation noto-fonts-extra ttf-opensans adobe-source-sans-pro-fonts terminus-font ttf-droid ttf-hack ttf-ms-fonts steam-fonts)

  ! eval "$(ask_prompt "install fonts? (y/n):	")" && return

  install_packages font_packages "no"
 }

dotnet_installer(){
  local -n packages=$1

  for package in "${packages[@]}"; do
    INFO "$package"
    dotnet tool install -g "$package"
    INFO "done."
    echo2
  done
}

install_dotnet_tools(){
   ! eval "$( ask_prompt "install dotnet cli tools? (y/n):  ") " && return

  sudo dotnet workload update

  local plugins=("dotnet-script" "Nuke.GlobalTool" "csharprepl" "dotnet-depends" "ilspycmd" "dotnet-grpc" "Microsoft.dotnet-httprepl" "GitVersion.Tool" "dotnet-ef")

  WARN "dotnet is very slow to download and install tools so dont panic if it looks stuck. just be patient each package may take 5 to 10 mins to install dont cancell operation."
  INFO "installing dotnet cli tools..."
  dotnet_installer plugins
}

install_linq_pad(){
  ! eval "$(ask_prompt "install linq pad? (dotnet play ground good for sql; wine must been installed) (y/n):	")" && return

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

  wine LINQPad7Setup_Downloadly.ir.exe &> /dev/null

  cp -rf Crack/* "$HOME/.wine/drive_c/Program Files/LINQPad7/" &> /dev/null

  cd "$temp_dir"

  http -d https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/runtime-desktop-7.0.17-windows-x64-installer

  WARN "this is a windows app installer you must install it with it's GUI it's recommended to not change defualt path. "

  local message="press return to countinue."
  echo -en "$blue$message$reset" >&2
  read -r

  wine ./windowsdesktop-runtime-7.0.17-win-x64.exe &> /dev/null

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

   ! eval "$(ask_prompt "install dotnet group? (sdk $(pacman -Qi dotnet-sdk | rg Version)) (y/n)?:	")" && return

   install_packages dotnet_packages "no"

  #***rider***
  rider_editsions=(rider rider-eap)
  install_optional_package "rider(dotnet IDE)" rider_editsions "$rider_description"

   #shell auto completion
   if ! grep 'complete -f -c dotnet -a "(dotnet complete (commandline -cp))"' ~/.config/fish/config.fish &> /dev/null; then
    INFO "configuring fish shell auto completrion."
    echo 'complete -f -c dotnet -a "(dotnet complete (commandline -cp))"' >> "$HOME/.config/fish/config.fish"
   fi

   if ! grep '_dotnet_bash_complete' ~/.bashrc &> /dev/null; then

    INFO "configuring fish shell auto completrion."

   tee -a ~/.bashrc > /dev/null << EOT
# bash parameter completion for the dotnet CLI

function _dotnet_bash_complete()
{
  local cur="${COMP_WORDS[COMP_CWORD]}" IFS=$'\n' # On Windows you may need to use use IFS=$'\r\n'
  local candidates

  read -d '' -ra candidates < <(dotnet complete --position "${COMP_POINT}" "${COMP_LINE}" 2>/dev/null)

  read -d '' -ra COMPREPLY < <(compgen -W "${candidates[*]:-}" -- "$cur")
}

complete -f -F _dotnet_bash_complete dotnet
EOT
  fi

   if ask_prompt "do you want to instal ILSpy? it's dotnet decompiler (decompiling windows apps on linux is partial) (y/n):	";then
    yay --noconfirm --needed -S avaloniailspy
   fi

   install_dotnet_tools

   install_linq_pad
}

install_invidia_packages(){
  ! eval "$( ask_prompt "are you an invidia user?(y/n): ")" && return

  install_packages invidia_packages "yes"
}

#--------------------------------main-----------------------------------

 main(){

  #use a simple help about script

   opts=$(getopt --options h --longoptions 'help' -n bootstrap -- "$@")

   eval set -- "$opts"

   #this wont work and need debuging

   while [ -n "$*" ]; do
    case "$1" in
    -h | --help) usage; shift; exit;;
    --) break;;
    *)   ERROR "Unrecognized option '$1'"
            usage;;
    esac
   done

  if (( $EUID == 0 )); then

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
  cat  <<EOF
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

   Yellow "------------------------------------------Nvidia packages---------------------------------------------"
   install_packages invidia_packages
   echo2

   Yellow "-----------------------------------------configuring system-------------------------------------------"
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
    7) configure timeshift for system snapshots

    good luck!"

  if ask_prompt "do you want to restart now?"; then
    WARN "rebooting in 10 seconds."
    sleep 10
    reboot
  fi

 }

main "$@"
