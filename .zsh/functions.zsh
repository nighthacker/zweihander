
function genpass() {
  echo "$2" | shasum | openssl base64 | cut -c 1-$1
}

alias genpass10='genpass 10'
alias genpass6='genpass 6'

function aliasfor(){
  grep -is $1 .zsh/aliases.zsh | sed 's/alias //g;s/=/ maps to /g'
}

function rj(){
  javac $1 && java $1:r
}

function ctop(){
  cat ~/.zsh_history | cut -c16- | sort | uniq -c | sort -rn | head
}

# https://twitter.com/rob_pike/status/397507643037605888
function rm {
  for i; do if test -d $i; then /bin/rmdir $i; else /bin/rm $i; fi done;
}
