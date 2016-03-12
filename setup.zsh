#!/usr/local/bin/zsh

-zsh-fetch-github () {
  local user="$1"
  local repo="$2"
  local root="$3"

  git clone -q --single-branch --recursive "https://github.com/$user/$repo.git" "$root/$repo"
}

-zsh-bootstrap () {
  local home="$1"
  local moduleroot="$home"
  local prefile="$home/pre.init.zsh"
  local postfile="$home/post.init.zsh"

  touch $prefile
  touch $postfile

  # 1. Completions
  -zsh-fetch-github "zsh-users" "zsh-completions" $moduleroot
  echo "fpath=($moduleroot/zsh-completions/src \$fpath)" >> $prefile

  # 2. Syntax Highlighting
  -zsh-fetch-github "zsh-users" "zsh-syntax-highlighting" $moduleroot
  echo "source $moduleroot/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> $postfile

  # 3. Auto Suggestions
  -zsh-fetch-github "zsh-users" "zsh-autosuggestions" $moduleroot
  echo "source $moduleroot/zsh-autosuggestions/zsh-autosuggestions.zsh" >> $postfile
}

-zsh-bootstrap "$1"
