
# History

HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history
setopt hist_find_no_dups

# Grep

export GREP_COLORS='ms=01;31:mc=01;31:sl=:cx=:fn=35:ln=32:bn=32:se=36'

# I/O

setopt correct
unsetopt flowcontrol

# Directories

setopt auto_name_dirs
setopt auto_pushd
setopt pushd_ignore_dups

# Completions

unsetopt menu_complete
setopt auto_menu
setopt complete_in_word
setopt always_to_end

zmodload -i zsh/complist

# Keys

bindkey "^[[3~" delete-char

# Env 

export JAVA_HOME=$(/usr/libexec/java_home)
