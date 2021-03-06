#!/bin/sh

echo "Setting up your Mac..."

# Enable installation from anywhere again
sudo spctl --master-disable

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Myqsl DB is installed, but we still need to get it to run at boot
brew services start mysql

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Make ZSH the default shell environment
chsh -s $(which zsh)

# Remove last login in terminal
touch .hushlogin

# Install Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Install Prestissimo, it just make things faster for composer!
/usr/local/bin/composer global require "hirak/prestissimo"

# Install global Composer packages
/usr/local/bin/composer global require laravel/installer laravel-zero/installer laravel/valet phpunit/phpunit squizlabs/php_codesniffer friendsofphp/php-cs-fixer phpmd/phpmd

# Install some node global packages
npm install --global yarn
yarn global add jshint csslint sass-lint lesshint

# Install Laravel Valet
$HOME/.composer/vendor/bin/valet install

# Create repositories directory
mkdir $HOME/Repositories
mkdir $HOME/Repositories/Perso
mkdir $HOME/Repositories/Clients
mkdir $HOME/Repositories/Tools

# Park our repository folder in Valet
cd $HOME/Repositories/Perso
valet park
cd $HOME/Repositories/Clients
valet park
cd $HOME/Repositories/Tools
valet park

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Symlink the Mackup config file to the home directory
ln -s $HOME/.dotfiles/.mackup.cfg $HOME/.mackup.cfg

# Set my global gitignore
git config --global core.excludesfile $HOME/.dotfiles/.gitignore_global

# Configure zsh to my liking
## Install pure
cd $HOME/.dotfiles/pure
ln -s "$PWD/pure.zsh" /usr/local/share/zsh/site-functions/prompt_pure_setup
ln -s "$PWD/async.zsh" /usr/local/share/zsh/site-functions/async

# Set macOS preferences
# We will run this last because this will reload the shell
cd $HOME/.dotfiles
source .macos
