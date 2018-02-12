# CLI Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias ll="$(brew --prefix coreutils)/libexec/gnubin/ls -ahlF --color --group-directories-first"

# Directories
alias repo="cd $HOME/Repositories"

# Laravel
alias art="php artisan"
alias artcc='php artisan cache:clear'
alias fresh="php artisan migrate:fresh --seed"

# Others
alias "opn"="subl ."