set -x GNU_PATH /usr/local/opt/coreutils/libexec/gnubin /usr/local/opt/gnu-tar/libexec/gnubin /usr/local/opt/gnu-sed/libexec/gnubin /usr/local/opt/grep/libexec/gnubin
set -x PYTHON_PATH ~/Library/Python/3.7/bin
set -x RUBY_PATH /usr/local/opt/ruby/bin /usr/local/lib/ruby/gems/2.6.0/bin
set -x GO_PATH ~/go/bin
set -gx PATH $GNU_PATH $PYTHON_PATH $RUBY_PATH $GO_PATH $PATH

if [ -f "$HOME/google-cloud-sdk/path.fish.inc" ]; . "$HOME/google-cloud-sdk/path.fish.inc"; end
