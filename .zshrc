
fpath=(~/.zsh/functions ~/.zsh/completions $fpath)

autoload -U compinit
compinit -i

for config (~/.zsh/*.zsh); do
  source $config
done
unset config


