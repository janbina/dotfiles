eval (ssh-agent -c) >> /dev/null
ssh-add -q ~/.ssh/bitbucket
ssh-add -q ~/.ssh/github
ssh-add -q ~/.ssh/gitlab
ssh-add -q ~/.ssh/seznam

set PATH ~/scripts ~/bin ~/.gem/ruby/2.6.0/bin ~/go/bin $PATH

# Hide the fish greeting
set fish_greeting ""

starship init fish | source

