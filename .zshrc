
fpath=(.zsh/functions .zsh/completions $fpath)

autoload -U compinit
compinit -i

for config (.zsh/aliases .zsh/settings); do
  source $config
done
unset config


