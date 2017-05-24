#
# .bashrc
#

export NODE_PATH="/usr/bin/node"

if [ -d $ANDROID_HOME ]; then
    export PATH=$PATH:${ANDROID_HOME}/tools
    export PATH=$PATH:${ANDROID_HOME}/platform-tools
fi

export SDKMAN_DIR="/home/castilho/.sdkman"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
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

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
[[ -s "/home/castilho/.sdkman/bin/sdkman-init.sh" ]] && source "/home/castilho/.sdkman/bin/sdkman-init.sh"
