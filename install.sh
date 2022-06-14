#!/bin/bash
# Install homebrew if not existed
if [ ! -f "/opt/homebrew/bin/brew" ]
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    sudo softwareupdate --install-rosetta
fi
# Work software
brew install --cask \
    anydesk \
    cloudflare-warp \
    copyq \
    firefox \
    flameshot \
    microsoft-teams \
    onlyoffice \
    rancher \
    thunderbird \
    visual-studio-code \
    # Use rancher instead for better perfomance
    # docker \

# Personal
brew install --cask \
    freetube \
    keepassxc \
    syncthing \
    telegram \
    transmission-remote-gui \

brew install \
    chezmoi \
    docker \
    docker-compose \
    fish \
    tmux \

# Docker-compose plugin for docker
mkdir -p ~/.docker/cli-plugins
ln -sfn /opt/homebrew/opt/docker-compose/bin/docker-compose ~/.docker/cli-plugins/docker-compose