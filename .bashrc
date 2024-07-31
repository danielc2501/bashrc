# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

export EDITOR='nvim'
export VISUAL='nvim'

export BROWSER="firefox"

alias v=nvim
alias in='cd $HOME/Documents/Remote\ Vault/0.\ Inbox/'
alias ob='cd $HOME/Documents/Remote\ Vault/'
alias h='cd $HOME'
alias rm= 'remouse --orientation right --mode fit --monitor 1 --password pydrnAL0c8'
