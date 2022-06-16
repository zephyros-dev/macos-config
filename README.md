# General setup
1. Install software
```
./install.sh
```
2. Allow install 3rd party apps
https://it.nmu.edu/docs/allowing-third-party-applications-install-macbook
3. Launch Rancher application once to setup docker
- Change the Container runtime to dockerd for docker to work
# Personal setup
1. Setup Syncthing and run at startup in GUI
   1. Setup Keepassxc sync
   2. Setup Logseq sync
2. Setup Keepassxc and run at startup in GUI
3. Setup Wireguard from Appstore  
- The GUI is not available in brew
4. Reset launchpad apps ordering
```
defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock
```
# Troubleshooting
## External display does not works
- Some external displays does not work without proper refresh rate. Turn on vnc in preferences and vnc into the display to change it