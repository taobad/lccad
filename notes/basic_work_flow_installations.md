#Basic Work Flow
## Install Zsh
run `sudo apt-get update` && `sudo apt-get -y install` zsh
check version if install was sucessful `zsh --version`
Make Zsh your default shell `zhsh -s /bin/zsh`.

## Using Z with Zsh
Run `printf "\n\n#initialize Z (https://github.com/rupa/z) \n. ~/z.sh \n\n" >> .zshrc`. This command appends . ~/z.sh to .zshrc file, which tells it to run Z on start-up
Reload shell `source ~/.zshrc`    
