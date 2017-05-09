#
# .bashrc
#

export NODE_PATH="/usr/bin/node"

if [ -d $ANDROID_HOME ]; then
    export PATH=$PATH:${ANDROID_HOME}/tools
    export PATH=$PATH:${ANDROID_HOME}/platform-tools
fi

# If not running interactively, only set environment
[[ $- != *i* ]] && return

alias dotfile='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

[[ -d $HOME/bin ]] && export PATH="$HOME/bin:$PATH"

if [ -f $HOME/.bash_funcs ]; then
   $HOME/.bash_funcs
fi

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/emacs

source ~/.bashrc.secret

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/castilho/.sdkman"
[[ -s "/home/castilho/.sdkman/bin/sdkman-init.sh" ]] && source "/home/castilho/.sdkman/bin/sdkman-init.sh"
