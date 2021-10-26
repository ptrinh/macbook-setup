#!/usr/bin/env sh
echo Installing Rosetta...
sudo softwareupdate --install-rosetta

echo Installing Homebrew...
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
export PATH=/opt/homebrew/bin:$PATH
brew update

echo Installing basic homebrew softwares...
brew install git php ruby node npm protobuf redis mysql rabbitmq mercurial wget zsh htop go mackup

# apps
echo Installing desktop apps...
brew install --cask google-chrome iterm2 folx dropbox adobe-acrobat-reader ledger-live textmate skype slack firefox vlc zoom viber microsoft-edge openemu anydesk microsoft-office steam
# utils
echo Installing utilities...
brew install --cask little-snitch istat-menus clipy grandperspective ipartition rectangle vipriser cd-to blackhole-2ch osxfuse handbrake the-unarchiver textbar adguard android-file-transfer balenaetcher sidequest openkey
# dev tools
echo Installing dev tools...
brew install --cask oracle-jdk docker sequel-ace visual-studio-code goland phpstorm tunnelblick dosbox-x postman wireshark altserver ifunbox sourcetree proxyman android-platform-tools zsh-syntax-highlighting docker

# default-writes
echo Setting default-writes...
sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ptrinh/macbook-setup/main/default-writes.sh)"

cd Downloads
curl -O https://raw.githubusercontent.com/MartinSeeler/iterm2-material-design/master/material-design-colors.itermcolors

# oh-my-zsh
echo Installing Oh-my-zsh...
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

echo "Next step: Sync Dropbox then use 'mackup restore' to restore dot files and other configurations"

# To upgrade all softwares installed by cask later, just run this below command:
# brew upgrade --cask --greedy
