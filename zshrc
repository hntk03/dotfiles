# Homebrew
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

export PATH="$HOME/.nodebrew/current/bin:$PATH"

export CPLUS_INCLUDE_PATH="$HOME/Github/ac-library:$CPLUS_INCLUDE_PATH"
export LDFLAGS="-L/opt/homebrew/opt/readline/lib -L/opt/homebrew/opt/libiconv/lib"
export CPPFLAGS="-I/opt/homebrew/opt/readline/include -I/opt/homebrew/opt/libiconv/include"
export LIBS="-liconv"
export optflags="-O2 -fno-fast-math -ggdb3"

export PATH="/opt/homebrew/opt/libiconv/bin:$PATH"

# vim
export PATH="/opt/homebrew/opt/vim/bin:$PATH"

# uv
export PATH="$HOME/.local/bin:$PATH"

# color for tig and etc
export TERM=xterm

# gitのブランチ名を常に表示する
autoload -Uz vcs_info
precmd() { vcs_info  }
setopt prompt_subst
PROMPT='%1~ ${vcs_info_msg_0_}%# '
zstyle ':vcs_info:git:*' formats '(%b)'

# エイリアス
alias gs='git status'
alias ls='ls -G'

# fzf
source <(fzf --zsh)
