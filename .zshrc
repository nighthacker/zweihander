
fpath=(.zsh/functions .zsh/completions $fpath)

autoload -U compinit
compinit -i

for config (.zsh/aliases.zsh .zsh/settings.zsh .zsh/functions.zsh); do
  source $config
done
unset config


