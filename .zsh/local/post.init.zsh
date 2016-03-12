
pdir="$(dirname "$0")"

for script ('aliases' 'functions' 'prompt' 'settings'); do
  source "$pdir/$script.zsh"
done
