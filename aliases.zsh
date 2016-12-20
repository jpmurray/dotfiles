# CLI Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias reloadcli="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="$(brew --prefix coreutils)/libexec/gnubin/ls -ahlF --color --group-directories-first"
alias weather="curl -4 http://wttr.in"

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias repo="cd $HOME/Repositories"

# Laravel
alias artisan="php artisan"

# Composer
# Commented out, since it’s in the path
#alias composer="/usr/local/bin/composer"

# Finder
alias showf="defaults write com.apple.finder AppleShowAllFiles YES;
killall Finder /System/Library/CoreServices/Finder.app"
alias hidef="defaults write com.apple.finder AppleShowAllFiles NO;
killall Finder /System/Library/CoreServices/Finder.app"