#!/usr/bin/env sh
sudo softwareupdate --install-rosetta

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew update
brew install git ruby node npm protobuf redis mysql@5.7 rabbitmq mercurial wget php zsh htop go

# apps
brew install --cask google-chrome iterm2 folx dropbox adobe-acrobat-reader textmate skype slack firefox vlc zoom viber snes9x microsoft-edge openemu anydesk
# utils
brew install --cask little-snitch istat-menus clipy grandperspective ipartition itsycal spectacle vipriser cd-to blackhole-2ch osxfuse handbrake the-unarchiver
# dev tools
brew install --cask oracle-jdk docker sequel-pro ledger-live visual-studio-code goland phpstorm tunnelblick dosbox-x postman wireshark altserver ifunbox fork expandrive

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# default-writes
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ptrinh/macbook-setup/main/default-writes.sh)"

cd Downloads
curl -O https://raw.githubusercontent.com/MartinSeeler/iterm2-material-design/master/material-design-colors.itermcolors
curl -O https://dl.google.com/go/go1.16beta1.darwin-arm64.pkg
sudo installer -verboseR -pkg "go1.16beta1.darwin-arm64.pkg"



# To upgrade all softwares installed by cask later, just run this below command:
# brew upgrade --cask --greedy
