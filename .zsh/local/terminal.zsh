
if [[ "$TERM_PROGRAM" == "Apple_Terminal" ]]; then
  HOST="$(hostname)"
  
  function urlencode() {
    setopt localoptions extendedglob
    input=( ${(s::)1} )
    print ${(j::)input/(#b)([^A-Za-z0-9_.\!~*\'\(\)-])/%${(l:2::0:)$(([##16]#match))}}
  }

  function update_terminalapp_cwd() {
    emulate -L zsh
    
    local URL_PATH="$(urlencode $PWD)"
    [[ $? != 0 ]] && return 1
     
    printf '\e]7;%s\a' "file://$HOST/$URL_PATH"
  }

  precmd_functions+=(update_terminalapp_cwd)
  update_terminalapp_cwd
fi
