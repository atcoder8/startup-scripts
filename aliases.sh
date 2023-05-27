alias compete='cargo compete'
alias c='compete'

alias assist_tools="$HOME/.venv/bin/python3 $HOME/assist_tools/assist_tools.py"
alias a='assist_tools'

alias g='g++ -std=gnu++17 -Wall -Wextra -O2 -DONLINE_JUDGE -I/home/cycle/lib/ac-library -I/home/cycle/lib/boost_1_72_0'

alias ojd='if [ -d test ]; then rm -r test; fi && oj download'
alias ojt='oj test -m ignore-spaces'
alias ojs='oj submit --yes'

alias latest_python_version='pyenv install --list | grep -E "^\s*3\.[0-9]+\.[0-9]+\s*$" | sed "s/\s//g" | sort -V | tail -n 1'

alias clip='copyq add - >/dev/null'

alias snippet='create-snippet'

alias py="$HOME/.venv/bin/python3"
alias pi="$HOME/.venv/bin/pip3"
