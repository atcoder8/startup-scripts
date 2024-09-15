if [ -d "$HOME/bin" ]; then
    export PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ]; then
    export PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/app/android-studio/bin" ]; then
    export PATH="$HOME/app/android-studio/bin:$PATH"
fi
