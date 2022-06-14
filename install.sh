#!/bin/bash
# Install homebrew if not existed
if [ ! -f "/opt/homebrew/bin/brew" ]
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    sudo softwareupdate --install-rosetta
fi
brew install --cask \
    anydesk \
    copyq \
    firefox \
    freetube \
    keepassxc \
    microsoft-teams \
    rancher \
    syncthing \
    telegram \
    thunderbird \
    visual-studio-code \
    # Use rancher instead for better perfomance
    # docker \

brew install \
    chezmoi \
    docker \
    docker-compose \
    fish \
    tmux \

# Docker-compose plugin for docker
mkdir -p ~/.docker/cli-plugins
ln -sfn /opt/homebrew/opt/docker-compose/bin/docker-compose ~/.docker/cli-plugins/docker-compose