# Local bin directories before anything else
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# Load Node global installed binaries
export PATH="$HOME/.node/bin:$PATH"

# Composer binaries
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Use project specific binaries before global ones
export PATH="node_modules/.bin:vendor/bin:$PATH"

# Make sure coreutils are loaded before system commands
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

# Load custom commands
export PATH="$DOTFILES/bin:$PATH"
