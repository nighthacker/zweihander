
local pre=(~/.zsh/**/pre.init.zsh)
local post=(~/.zsh/**/post.init.zsh)

for listed in $pre; do
  source "$listed"
done
unset listed

autoload -U compinit
compinit -i

for listed in $post; do
  source "$listed"
done
unset listed


