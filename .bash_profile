[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

#Try to find Heroku tools
if [ ! -d /usr/local/heroku ]; then
    echo >&2 "Heroku tools were not found."
fi

command -v opam > /dev/null 2>&1 || {
    echo >&2 "OPAM was not found, so OCaml env could not be set."
}

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

. /home/castilho/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/castilho/.sdkman"
[[ -s "/home/castilho/.sdkman/bin/sdkman-init.sh" ]] && source "/home/castilho/.sdkman/bin/sdkman-init.sh"
