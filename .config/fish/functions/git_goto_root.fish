function git_goto_root --description "Change current directory to git root"
  cd ./(git rev-parse --show-cdup)
end
