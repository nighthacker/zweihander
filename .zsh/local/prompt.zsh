autoload colors; colors;
autoload vcs_info;
setopt prompt_subst;

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' formats "%{$fg_bold[red]%}[%b]%{$reset_color%}"
zstyle ':vcs_info:git*' actionformats "[%b]"

precmd() { vcs_info }
if [ -z $STY ]; then
  PROMPT='${vcs_info_msg_0_} %{$fg_bold[blue]%}%(!.%1~.%~) %{$fg_bold[green]%}$ %_%{$reset_color%}'
else 
  PROMPT='%(!.%{$fg_bold[red]%}.%{$fg_bold[green]%}%n) %{$fg_bold[red]%}%(!.%1~.%~) %_%{$reset_color%} '
fi
