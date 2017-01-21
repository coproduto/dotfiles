alias semacs='HOME=~/spacemacs emacs'
alias tsemacs='HOME=~/spacemacs emacs -nw'
alias temacs='emacs -nw'
alias dotfile='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

export ANDROID_HOME="/home/castilho/Android/Sdk"
export NODE_PATH="/usr/bin/node"

if [ -d $ANDROID_HOME ]; then
    export PATH=$PATH:${ANDROID_HOME}/tools
    export PATH=$PATH:${ANDROID_HOME}/platform-tools
fi

if [ -d $HOME/bin ]; then
    export PATH="$HOME/bin:$PATH"
fi

if [ -f $HOME/.bash_funcs ]; then
   $HOME/.bash_funcs
fi

if [ -d /usr/local/heroku ]; then
    export PATH="/usr/local/heroku/bin:$PATH"
fi

command -v opam > /dev/null 2>&1 && (eval `opam config env`)

export PATH="$HOME/.rvm/bin:$PATH"

 # Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" && {
    rvm use 2>&1 > /dev/null
}

source ~/.bashrc.secret
