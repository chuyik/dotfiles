#!/bin/sh

if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Homebrew Mirror - Tsinghua
## homebrew-core
cd "$(brew --repo)"
# git remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
# git remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git
## homebrew-bottles
# if ! grep "HOMEBREW_BOTTLE_DOMAIN" $HOME/.bash_profile > /dev/null 2>&1 ; then
#     echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles' >> $HOME/.bash_profile
# fi
source $HOME/.bash_profile


echo "Installing homebrew packages..."
source $DOTFILES/functions/brew_functions.sh

# cli tools
brew_install_or_upgrade ack
brew_install_or_upgrade tree
brew_install_or_upgrade wget

# development server setup
brew_install_or_upgrade nginx

# node.js
# brew install https://raw.githubusercontent.com/lalitkapoor/nvm-auto-switch/master/homebrew/nvm-auto-switch.rb

# python
brew_install_or_upgrade python

# development tools
brew_install_or_upgrade zsh
brew_install_or_upgrade git
brew_install_or_upgrade git-lfs
brew_install_or_upgrade autojump
# brew_install_or_upgrade thefuck

brew_install_or_upgrade tmux
brew_install_or_upgrade reattach-to-user-namespace

## Autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
