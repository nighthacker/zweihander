function genpass() {
  echo -n "$2" | shasum | openssl base64 | cut -c 1-$1 | tr -d '\n' 
}

alias genpass12='genpass 12'
alias genpass10='genpass 10'
alias genpass6='genpass 6'

function find-alias(){
  grep -is $1 .zsh/aliases.zsh | sed 's/alias //g;s/=/ maps to /g'
}

function run-java(){
  javac $1 && java $1:r
}
alias rj='run-java'

function tab-color() {
  echo -ne "\033]6;1;bg;red;brightness;$1\a"
  echo -ne "\033]6;1;bg;green;brightness;$2\a"
  echo -ne "\033]6;1;bg;blue;brightness;$3\a"
}

function tab-reset() {
  echo -ne "\033]6;1;bg;*;default\a"
}

function git-goto-root(){
  cd ./$(git rev-parse --show-cdup)
}
alias gr='git-root'

function git-drift(){
  git difftool --dir-diff "$(git rev-parse --abbrev-ref --symbolic-full-name @{u})" "$(git rev-parse --abbrev-ref HEAD)"
}
alias gd='git-drift'
