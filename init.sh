#!/bin/sh

exe() { echo "\$ ${@/eval/}" ; "$@" ; }

exe sudo pacman -S tmux bat telegram-desktop firefox docker vim yay ripgrep

exe ln -v ./.vimrc ~/

exe ln -v ./.tmux.conf ~/

exe yay -S nekoray-bin sing-geoip-db sing-geoip-rule-set sing-geosite-db sing-geosite-rule-set

exe curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

exe export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")" [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

exe nvm install latest

exe npm i -g pnpm

exe git clone https://github.com/KhashayarKhm/nvim.git ~/.config/nvim

exe make -C ~/config/nvim install
