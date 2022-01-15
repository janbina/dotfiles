eval (ssh-agent -c) >> /dev/null
ssh-add -q ~/.ssh/bitbucket
ssh-add -q ~/.ssh/github
ssh-add -q ~/.ssh/gitlab
ssh-add -q ~/.ssh/seznam

set PATH ~/scripts ~/bin ~/.local/share/gem/ruby/3.0.0/bin ~/go/bin ~/.cargo/bin $PATH

# Hide the fish greeting
set fish_greeting ""

starship init fish | source

