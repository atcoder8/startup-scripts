function ac_new() {
    if [ $# -ne 1 ]; then
        echo "Usage: ac_new <CONTEST NAME>"
        return 1
    fi

    cd $HOME/atcoder
    ./new.sh $1
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
