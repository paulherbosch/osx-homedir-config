# iterm2 profile switcher
it2prof(){
  echo -e "\033]50;SetProfile=$1\a"
}

alias tc-light='it2prof light'
alias tc-atom='it2prof Atom'
alias tc-def='it2prof Default'

# pretty colors in terminal on osx
export CLICOLOR=1
export TERM=xterm-color
export LSCOLORS=ExFxCxDxBxegedabagacad
export VIM_APP_DIR=/Applications/MacVim-7_2-stable-1_2/
export PATH=$PATH:~/bin:/opt/bin:~/packer
export SVN_EDITOR=vim
export EDITOR=vim
export LC_CTYPE="en_US.UTF-8"
export VAGRANT="TRUE"

# linode mysql tunnel
alias linode-mysql-tunnel-start='ssh -fNg -L 3307:127.0.0.1:3306 paul@139.162.151.134'

# go
export GOPATH=/Users/paul/gocode
export PATH=$PATH:~/gocode/bin

# increase default bash_history
HISTFILESIZE=10000

# general
alias pubkey='cat ~/.ssh/id_rsa.pub | pbcopy'
alias :q='exit'
alias sduo='sudo'
alias edithost='sudo vim /etc/hosts'
alias la='ls -alh'

# vagrant aliases
alias vu='vagrant up'
alias vh='vagrant halt'
alias vr='vagrant reload'
alias vs='vagrant ssh'
alias vp='vagrant provision'

# outgoing ip
alias outip='curl -s ip.appspot.com;echo'

# enable terminal vi mode
set -o vi

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# set prompt
# export PS1="\w $ "
export PS1="[\u@mbp \w]# "

# use ruby 2.1.1 with custom gemset for Chef
rvm 2.1.1

# dig short
alias shord='dig +short '

# ssl shortcuts
alias readcert='openssl x509 -text -noout -in'
alias readcsr='openssl req -text -noout -verify -in'

# chef switch
alias chefswitch='/Users/paul/git-repos/chef-tools/chefswitch.sh'
alias chefnodes='/Users/paul/git-repos/chef-tools/chefnodes.sh'
