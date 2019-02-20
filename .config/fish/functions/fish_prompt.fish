set -e __fish_git_prompt_show_informative_status
set -e __fish_git_prompt_showdirtystate
set -e __fish_git_prompt_showstashstate
set -e __fish_git_prompt_showuntrackedfiles
set -e __fish_git_prompt_showupstream
set __fish_git_prompt_color_branch red

function fish_prompt --description "Write out custom fish prompt"
    echo -n -s (__fish_git_prompt "[%s] ") (set_color $fish_color_cwd) (prompt_pwd) (set_color normal) " \$ " 
end
