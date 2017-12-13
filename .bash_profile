if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

if [ "$(uname)" == "Darwin" ]; then
    which -s brew && \
        [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && \
        . $(brew --prefix)/etc/profile.d/autojump.sh

    [[ -s /usr/local/opt/autoenv/activate.sh ]] && \
        . /usr/local/opt/autoenv/activate.sh
else
    # Ubuntu
    [[ -s /usr/share/autojump/autojump.sh ]] && \
        . /usr/share/autojump/autojump.sh

    # Arch
    [[ -s /etc/profile.d/autojump.bash ]] && \
        echo hi && . /etc/profile.d/autojump.bash

    [[ -s ~/.autoenv/activate.sh ]] && . ~/.autoenv/activate.sh
fi
