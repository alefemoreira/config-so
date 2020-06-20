sudo apt update
sudo apt upgrade
# if kde neon = `sudo pkcon update`

# Up to Watch Files
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc sysctl.conf && sudo sysctl -p

# Install git
sudo apt install git

# Install ViM
sudo apt install vim

# Config Git
cp git/.gitconfig ~/

#Install gitHUB
sudo snap install hub --classic

# Install code
sudo snap install code --classic

# Settings do VSCode
# Install Fira Code
sudo cp FiraCode/otf /usr/share/fonts/opentype

# Install arquivos de configurações VSCode
cp vscode/keybindings.json /home/aldebaran/.config/Code/User/
cp vscode/settings.json /home/aldebaran/.config/Code/User/

# # Install extesions
code --install-extension dbaeumer.vscode-eslint
code --install-extension esbenp.prettier-vscode
code --install-extension dracula-theme.theme-dracula
code --install-extension mikestead.dotenv
code --install-extension kamikillerto.vscode-colorize
code --install-extension pkief.material-icon-theme
code --install-extension davidanson.vscode-markdownlint
code --install-extension christian-kohler.npm-intellisense
code --install-extension eg2.vscode-npm-script
code --install-extension ms-vscode.cpptools
code --install-extension danielpinto8zz6.c-cpp-compile-run

# Install Latte Dock
sudo add-apt-repository ppa:rikmills/latte-dock
sudo apt update
sudo apt-get install latte-dock

# Install KeepassXC
sudo add-apt-repository ppa:phoerious/keepassxc
sudo apt-get update
sudo apt install keepassxc

# Install o nvm
cd ~/ 
git clone https://github.com/nvm-sh/nvm.git .nvm
cd ~/.nvm
git checkout v0.35.3
. nvm.sh

echo "export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion" >> ~/.bashrc

# Install latest Node LTS Version
nvm install --lts

# Install Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install --no-install-recommends yarn
yarn --version #Prints Yarn Version
#export PATH="$PATH:/opt/yarn-[version]/bin"
echo "export PATH="$PATH:`yarn global bin`"" >> ~/.bashrc 

# Install XCLip
sudo apt install xclip

echo "Enter your email: "
read email

# Gera SSH to github
ssh-keygen -t rsa -b 4096 -C "$email"
eval "$(ssh-agent -s)"
# ssh-add ~/.ssh/id_rsa
ssh-add -k ~/.ssh/id_rsa
xclip -sel clip < ~/.ssh/id_rsa.pub

# Install Java

echo "

export JAVA_HOME="$HOME/.jvm/jdk-14.0.1"
export CLASSPATH="$JAVA_HOME/lib"
export MANPATH="$MANPATH:$JAVA_HOME/man"
export PATH="$PATH:$JAVA_HOME/bin"
" >> ~/.bashrc

# Install Android Studio

# Install o IntelliJ
sudo snap install intellij-idea-community --classic

# Install Insomnia
sudo snap install insomnia

# install fish
#sudo apt-add-repository ppa:fish-shell/release-3 
#sudo apt-get update && sudo apt-get upgrade
#sudo apt-get install fish 
#sudo chsh -s /usr/bin/fish

# get back - sudo chsh -s 'which bash'

echo "NOW INSTALL:
  * Android Studio
  * JDK em .jvm/
  * Add SSh on GITHUB
CUSTOMIZE
To be happy"
