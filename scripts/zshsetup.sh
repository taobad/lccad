#! /bin/sh 
echo "ZSH Setup ..."

# script takes in two arguments (username and ip_address)
username=$1
ip_addr=$2

# Install ZSH
echo "Installing ZSH"
ssh ${username}@${ip_addr} yum install zsh 

# Set default shell to zsh.
echo "Setting default shell to ZSH ..."
chsh -s /bin/zsh

# Create default ZSH config/run zsh to get default config.
echo "Creating default ZSH config ..."
touch ~/.zshrc

# Clone/pull oh-my-zsh
echo "Cloning oh-my-zsh ..."
git clone https://github.com/robbyrussell/oh-my-zsh.git

echo "Copying oh-my-zsh to remote ..."
scp -r ./oh-my-zsh ${username}@{ip_addr}:/home/${username}/.oh-my-zsh 

# Backup default zsh config.
echo "Backing up default zsh config to ~/.zshrc.orig"
cp ~/.zshrc ~/.zshrc.orig

# Create new ZSH config with oh-my-zsh 
echo "Creating new ZSH config with oh-my-zsh ..."
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

# SSH into host server
ssh ${username}@${ip_addr}
