#!/bin/bash
# Install homebrew if not existed
if [ ! -f "/opt/homebrew/bin/brew" ]
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    sudo softwareupdate --install-rosetta
fi
# Work software
    # Choosing between rancher and docker desktop
    # Docker-desktop has VirtioFS which improves bind mount perfomance significantly
    # Rancher-desktop is open source but have some rough edges

brew install --cask \
    anydesk \
    cloudflare-warp \
    copyq \
    docker \
    firefox \
    flameshot \
    microsoft-teams \
    onlyoffice \
    thunderbird \
    visual-studio-code \

# For installing Rancher-desktop
# brew install --cask rancher \
# && brew install docker docker-compose \

# Use amd64 images for best compatibility
# touch ~/.bash_profile
# grep -qxF 'export DOCKER_DEFAULT_PLATFORM=linux/amd64' ~/.bash_profile || echo \
# 'export DOCKER_DEFAULT_PLATFORM=linux/amd64' >> ~/.bash_profile

# Docker-compose plugin for docker
mkdir -p ~/.docker/cli-plugins
ln -sfn /opt/homebrew/opt/docker-compose/bin/docker-compose ~/.docker/cli-plugins/docker-compose

# Personal
brew install --cask \
    calibre \
    freetube \
    keepassxc \
    logseq \
    moonlight \
    nomachine \
    parsec \
    rectangle \
    syncthing \
    telegram \
    transmission-remote-gui \
    zerotier-one \

# Personal terminal software
brew install \
    chezmoi \
    fish \
    tmux \
