[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

. /home/castilho/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
