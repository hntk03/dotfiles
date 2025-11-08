# Homebrew
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

# RVM
echo 'source $HOME/.rvm/scripts/rvm' >> ~/.zshrc

export PATH="$HOME/.nodebrew/current/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export CPLUS_INCLUDE_PATH="$HOME/Github/ac-library:$CPLUS_INCLUDE_PATH"
export LDFLAGS="-L/opt/homebrew/opt/readline/lib -L/opt/homebrew/opt/libiconv/lib"
export CPPFLAGS="-I/opt/homebrew/opt/readline/include -I/opt/homebrew/opt/libiconv/include"
export LIBS="-liconv"
export optflags="-O2 -fno-fast-math -ggdb3"


export PATH="/opt/homebrew/opt/libiconv/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# vim
export PATH="/opt/homebrew/opt/vim/bin:$PATH"
