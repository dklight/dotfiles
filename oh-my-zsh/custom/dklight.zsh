# Configure dircolors
eval "`dircolors -b ~/.dircolors`"

# Aliases
alias ls="ls -lh --color=auto"

# Color terminal that works with GNU Screen
export TERM=xterm-256color

# Default Vagrant provider
export VAGRANT_DEFAULT_PROVIDER=libvirt

# Include personal bin
# TODO Remove
export PATH=$PATH:~/bin

# Disable screen sleeping in Ubuntu
xset -dpms
xset s off

# Set ssh passphrase dialog for KDE
export SSH_ASKPASS=/usr/bin/ksshaskpass

# Store SSH passphrase on the first connection
ssh() {
    if ! ssh-add -l &>/dev/null; then
        ssh-add </dev/null &>/dev/null
    fi
    command ssh "$@"
}
