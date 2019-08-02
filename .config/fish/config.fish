set -x GNU_PATH /usr/local/opt/coreutils/libexec/gnubin /usr/local/opt/gnu-tar/libexec/gnubin /usr/local/opt/gnu-sed/libexec/gnubin /usr/local/opt/grep/libexec/gnubin
set -x PYTHON_PATH ~/Library/Python/3.7/bin
set -gx PATH $GNU_PATH $PYTHON_PATH $PATH
