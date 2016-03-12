autoload colors; colors;
setopt prompt_subst

if [ -z $STY ]; then
  PROMPT='%(!.%{$fg_bold[red]%}.%{$fg_bold[green]%}%n) %{$fg_bold[blue]%}%(!.%1~.%~) %_%{$reset_color%} '
else 
  PROMPT='%(!.%{$fg_bold[red]%}.%{$fg_bold[green]%}%n) %{$fg_bold[red]%}%(!.%1~.%~) %_%{$reset_color%} '
fi
