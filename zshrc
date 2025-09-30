# Homebrew
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

# rbenv
export PATH="/opt/homebrew/opt/rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"

export PATH="$HOME/.nodebrew/current/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export CPLUS_INCLUDE_PATH="$HOME/Github/ac-library:$CPLUS_INCLUDE_PATH"
export LDFLAGS="-L/opt/homebrew/opt/readline/lib"
export CPPFLAGS="-I/opt/homebrew/opt/readline/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/readline/lib/pkgconfig"
