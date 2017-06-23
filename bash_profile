# bash_profile: executed by bash for login shells

# If not running interactively, don't do anything
if [ -z "$PS1" ]; then
    return
fi

# Source the local bashrc
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

while true; do
    if test -n "`tmux showb 2> /dev/null`"; then
        tmux saveb -|pbcopy && tmux deleteb
    fi
    sleep 0.5
done

#" vim: filetype=sh
