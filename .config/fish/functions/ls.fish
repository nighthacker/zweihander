function ls --wraps ls --description 'alias ls=ls -atGF'
  command ls -atGF $argv
end
