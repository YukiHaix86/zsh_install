

# Autoinstaller & Updater when setting up a new Laptop / PC with Ubuntu or Regolith 20.04 LTS

/usr/bin/apt update
/usr/bin/apt upgrade
/usr/bin/apt -y install zsh curl lynx 

#Install Oh-My-ZSH
#Original Script sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sh ./install.sh

#Waiting for install to finish because of a weird bug
#sleep 3m

#Install Typewritten Theme

git clone https://github.com/reobin/typewritten.git "$HOME/.zsh/typewritten"

#Append configuratio to ZSHRC

echo "fpath+=$HOME/.zsh/typewritten
autoload -U promptinit; promptinit
prompt typewritten" >> .zshrc
