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
#12/17/24

show_help() {
    cat << EOF
Usage: $0 USERNAME [SHELL]

Will Initialize pacman plus Creates a new user and adds them to the sudoers file.

Arguments:
  USERNAME      Name of the new user to be created
  SHELL         Optional: Specify the user's login shell (default: /bin/bash)

Options:
  -h, --help    Show this help message and exit

Examples:
  $0 newuser
  $0 newuser zsh
EOF
}

if [[ "$1" == "-h" || "$1" == "--help" ]]; then
    show_help
    exit 0
fi

if [ -z "$1" ]; then
    echo "Error: No username provided."
    echo "Use -h or --help for usage information."
    exit 1
fi

#initializing pacman key system
pacman-key --init
pacman-key --populate archlinux

#downloading rank-mirrors
echo "Downloading rank-mirrors..."

releases_url="https://github.com/westandskif/rate-mirrors/releases"
html=$(curl -s $releases_url)

latest_tag=$(echo "$html" | grep -oP '(?<=releases/tag/)[^"]+' | head -1)

url="https://github.com/westandskif/rate-mirrors/releases/download/$latest_tag/rate-mirrors-$latest_tag-x86_64-unknown-linux-musl.tar.gz"

curl -LO "$url"

file_name=$(basename "$url")
echo "Downloaded the latest x86_64 .tar.gz file: $file_name"

tar xzvf "$file_name" 

extracted_dir=$(basename "$file_name" .tar.gz)
rate_mirrors_binary="$extracted_dir/rate_mirrors"

chmod +x $rate_mirrors_binary

eval "$rate_mirrors_binary --allow-root --protocol https arch" | grep -v '^#'| tee /etc/pacman.d/mirrorlist
rm -r "$extracted_dir" "$file_name"

#updating system and installing packages
pacman-key --refresh-keys
pacman -Sy --noconfirm archlinux-keyring
pacman -Syu --noconfirm 
pacman -Sy --noconfirm base base-devel git wget fish neovim fastfetch 

#setting locale
echo "en_US.UTF8 UTF8" > /etc/locate.gen
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
export LANG=en_US.UTF-8

#creating user
echo "set the password for root:"
passwd

echo "creating user..."

new_username="$1"

shell_name="${2:-bash}"
user_shell="/bin/$shell_name"

if ! command -v "$shell_name" &> /dev/null; then
    echo "$shell_name is not installed. Installing..."
    pacman -Sy --noconfirm "$shell_name" 
fi

# create a new user and add to the wheel group
useradd -m -G wheel -s "$user_shell" "$new_username"

echo "set the password for $new_username:"
passwd "$new_username"

# uncomment the line to allow the wheel group to use sudo
sed -i 's/^# %wheel ALL=(ALL) ALL/%wheel ALL=(ALL) ALL/' /etc/sudoers
sed -i 's/^# %wheel ALL=(ALL:ALL) ALL/%wheel ALL=(ALL:ALL) ALL/' /etc/sudoers

cat <<EOF | tee /etc/wsl.conf
[boot]
systemd=true

[user]
default=$new_username
EOF

echo "User $new_username with shell $user_shell has been created and added to the sudoers file."
