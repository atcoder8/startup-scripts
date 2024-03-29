alias compete='cargo compete'
alias c='compete'

alias assist_tools="$HOME/.venv/bin/python3 $HOME/app/assist_tools/assist_tools.py"
alias a='assist_tools'

alias g="g++ -std=gnu++17 -Wall -Wextra -O2 -DONLINE_JUDGE -I$HOME/lib/ac-library -I$HOME/lib/boost"

alias ojd='if [ -d test ]; then rm -r test; fi && oj download'
alias ojt='oj test -m ignore-spaces'
alias ojs='oj submit --yes'

alias latest_python_version='pyenv install --list | grep -E "^\s*3\.[0-9]+\.[0-9]+\s*$" | sed "s/\s//g" | sort -V | tail -n 1'

alias clip='xclip -selection clipboard'

alias snippet='create-snippet'

alias py="$HOME/.venv/bin/python3"
alias pi="$HOME/.venv/bin/pip3"

alias s="source $HOME/.bashrc"

alias untar='tar -xvf'
