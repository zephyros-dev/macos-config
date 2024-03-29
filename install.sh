#!/bin/bash
# Install homebrew if not existed
if [ ! -f "/opt/homebrew/bin/brew" ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    sudo softwareupdate --install-rosetta
fi

brew install --cask \
    anydesk \
    cloudflare-warp \
    copyq \
    docker \
    firefox \
    flameshot \
    microsoft-teams \
    onlyoffice \
    sloth \
    thunderbird \
    visual-studio-code

# Docker-compose plugin for docker
mkdir -p ~/.docker/cli-plugins
ln -sfn /opt/homebrew/opt/docker-compose/bin/docker-compose ~/.docker/cli-plugins/docker-compose

# Personal
brew install --cask \
    alt-tab \
    freetube \
    jellyfin-media-player \
    keepassxc \
    logseq \
    monitorcontrol \
    moonlight \
    nomachine \
    parsec \
    rectangle \
    slack \
    syncthing \
    telegram \
    transmission-remote-gui

# Development software
brew install \
    awscli

brew install --cask \
    lens

# Personal terminal software
brew install \
    awscli \
    chezmoi \
    fish \
    iperf3 \
    tmux

# Prevent macOS from writing .DS_Store on network share
# https://support.apple.com/en-us/HT208209
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE
