# CLI Shortcuts
alias copyssh="more $HOME/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"
alias reloadcli="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="$(brew --prefix coreutils)/libexec/gnubin/ls -ahlF --color --group-directories-first"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"
alias loadkey="ssh-add -A"

# Edit my SSH hosts config in Sublime
alias sshosts='code ~/.ssh/config'

# Homebrew
alias brewupdate='brew update; brew upgrade; brew cleanup;'
alias brewoutdated='brew outdated; brew cask outdated'

# Directories
alias repo="cd $HOME/Repositories"
alias clients="cd $HOME/Repositories/Clients"
alias perso="cd $HOME/Repositories/Perso"
alias tools="cd $HOME/Repositories/Tools"
alias dotfiles="cd $DOTFILES"

# Laravel
alias art="php artisan"
alias artcc='php artisan cache:clear'
alias fresh="php artisan migrate:fresh --seed"
alias tinker="php artisan tinker"
alias dumpserv="php artisan dump-server"
alias laratest="phpunit && php artisan dusk"
newalice() {
    composer create-project jpmurray/alice $1 -s dev --remove-vcs
}

# Composer
alias cgu='composer self-update; composer global update'
alias cu='composer update'
alias cr="composer require"
alias cdu="composer dump-autoload"

# Others
alias "opn"="subl ."

# Keybase
decryptPGP() {
	keybase pgp decrypt -i $1 -o $2
}