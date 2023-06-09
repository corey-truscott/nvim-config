#!/bin/sh

# moves all old configuration files to backup directories
preserve_old_config() {
  echo "preserving old configuration of neovim...\n"

  mv ~/.config/nvim ~/.config/nvim.bak
  echo "moved \"~/.config/nvim\" to \"~/.config/nvim.bak\"\n"

  mv ~/.local/share/nvim ~/.local/share/nvim.bak
  echo "moved \"~/.local/share/nvim\" to \"~/.local/share/nvim.bak\""

  mv ~/.local/state/nvim ~/.local/state/nvim.bak
  echo "moved \"~/.local/state/nvim\" to \"~/.local/state/nvim.bak\""

  mv ~/.cache/nvim ~/.cache/nvim.bak
  echo "moved \"~/.cache/nvim\" to \"~/.cache/nvim.bak\""
}

destroy_old_config() {
  rm -rf ~/.config/nvim/
  rm -rf ~/.local/share/nvim/
  rm -rf ~/.local/state/nvim
  rm -rf ~/.cache/nvim
}

# installs the new configuration
install_new_config() {
  echo "ensuring required directories exist...\n"
  mkdir ~/.config/nvim
  mkdir ~/.local/share/nvim
  echo "cloning git repo...\n"
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
  }

  # check xclip
  [ $(which xclip) ] ||
    echo "\nwarning: it is highly recommended that you install xclip before proceeding, although this is optional\n"

  # check fd
  [ $(which fd) ] ||
    echo "\nwarning: it is highly recommended that you install fd before proceeding, although this is optional\n"

install() {
  # check if required packages are installed
  check_installed_pkgs

  # promting for choice_a
  echo "do you want to preserve your current neovim configuration (warning: this is irreversible)"
  read -p "(y)yes/(n)no: " choice_a

  case $choice_a in
    [yY]* ) echo "\npreserving configuration\n" && preserve_old_config ;;
    [nN]* ) echo "\ndeleting old configuration\n" && destroy_old_config ;;
    *) echo "invalid response, try again.\n" && exit ;;
  esac

  # cloning the new configuration 
  sleep 1
  install_new_config

  nvim -c q

  clear
  echo "\n==============================="
  echo "Installation has been completed"
  echo "===============================\n"
}

install
