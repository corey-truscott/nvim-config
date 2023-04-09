#!/bin/sh

# moves all old configuration files to backup directories
preserve_old_config() {
  echo "preserving old configuration of neovim...\n"

  mv ~/.config/nvim ~/.config/nvim.bak
  echo "moved \"~/.config/nvim\" to \"~/.config/nvim.bak\"\n"

  mv ~/.local/share/nvim ~/.local/share/nvim.bak
  mkdir ~/.local/share/nvim
  echo "moved \"~/.local/share/nvim\" to \"~/.local/share/nvim.bak\""
}

destroy_old_config(){
  echo "deleting old configuration of neovim...\n"
  rm -rf ~/.config/nvim/
  rm -rf ~/.local/share/nvim/
}

# installs the new configuration
install_new_config(){
  echo "cloning git repo..."
  git clone https://github.com/corey-truscott/nvim-config.git ~/.config/nvim
}

# checks if git, neovim and ripgrep are installed
check_installed_pkgs() {
  RED='\033[0;31m'
  NC='\033[0m'

  # check git
  [ $(which git) ] ||
    echo "\n${RED}error: git is not installed, please install it via your distrotubtions package manager${NC}"

  [ $(which git) ] ||
    exit

  # check nvim
  [ $(which nvim) ] ||
    echo "\n${RED}error: neovim is not installed, please install it via your distrotubtions package manager${NC}"

  [ $(which nvim) ] ||
    exit

  # check ripgrep
  [ $(which rg) ] ||
    echo "\n${RED}error: ripgrep is not installed, please install it via your distrotubtions package manager${NC}"

  [ $(which rg) ] ||
    exit

  echo "dependencies are all installed."
  }

# check if required packages are installed
check_installed_pkgs

# promting for choice
read -p "do you want to preserve your current neovim configuration (warning: this is irreversible) (y)yes/(n)no: " choice

case $choice in
  [yY]* ) echo "preserving configuration\n" && preserve_old_config ;;
  [nN]* ) echo "deleting old configuration\n" && destroy_old_config ;;
  *) echo "invalid response, try again.\n" && exit ;;
esac

# cloning the new configuration 
sleep 1
install_new_config
echo "installation is complete, please enter the \"nvim\" command to install the plugins."
