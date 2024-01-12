function update() {
    echo "# Execute automatic upgrades."

    # Updates apt packages.
    echo -e "\n# Execute \`sudo apt update\`."
    sudo apt update
    echo -e "\n# Execute \`sudo apt -y upgrade\`."
    sudo apt -y upgrade

    # Clean up.
    echo -e "\n# Execute \`sudo apt -y autoremove\`."
    sudo apt -y autoremove
    echo -e "\n# Execute \`sudo apt autoclean\`."
    sudo apt autoclean
    echo -e "\n# Execute \`sudo apt autopurge\`."
    sudo apt autopurge

    # Updates pyenv.
    if [ -v PYENV_ROOT ]; then
        echo -e "\n# Execute \`git -C ${PYENV_ROOT} pull\`."
        git -C ${PYENV_ROOT} pull

        echo -e "\n# Latest Python version provided by \`pyenv\`: \
$(pyenv install --list | grep -E "^\s*3\.[0-9]+\.[0-9]+\s*$" | sed "s/\s//g" | sort -V | tail -n 1)"
    fi

    # Updates Rust toolchains and rustup.
    if [ -d "$HOME/.rustup" ]; then
        echo -e "\n# Execute \`rustup update\`."
        rustup update
    fi

    # Updates packages for the venv environment in the home directory.
    if [ -f "$HOME/.venv/bin/pip3" -a -f "$HOME/requirements.txt" ]; then
        echo -e "\n# Execute \`$HOME/.venv/bin/pip3 install -Ur $HOME/requirements.txt\`"
        $HOME/.venv/bin/pip3 install -Ur $HOME/requirements.txt
    fi
}

function new_contest() {
    if [ $# -eq 1 -a $# -eq 2 ]; then
        echo "Usage: new_contest <CONTEST NAME> [SETUP FILE]"
        return 1
    fi

    setup_file="new.sh"

    if [ $# -eq 2 ]; then
        setup_file=$2
    fi

    if [ ! -f $setup_file ]; then
        echo "Not found \`$setup_file\`" >&2
    fi

    ./$setup_file $1
    cd $1
}

function venv() {
    if [ $# -eq 0 ]; then
        source .venv/bin/activate
    elif [ $# -eq 1 ]; then
        source $1/bin/activate
    else
        echo "Usage: venv [TARGET DIRECTORY]"
        return 1
    fi
}
