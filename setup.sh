brew install zsh &&
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &&
brew install --cask alacritty &&
brew install romkatv/powerlevel10k/powerlevel10k &&
echo 'source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc