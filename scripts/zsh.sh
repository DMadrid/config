chsh -s /bin/zsh &&
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &&
echo 'source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc