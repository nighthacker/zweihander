
pdir="$(dirname "$0")"

for script ('aliases' 'functions' 'prompt' 'settings' 'terminal'); do
  source "$pdir/$script.zsh"
done
