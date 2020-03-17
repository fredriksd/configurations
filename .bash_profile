__git_ps1()
{
   (echo -n '[' && git rev-parse --abbrev-ref HEAD 2> /dev/null | tr -d '\n' && echo  -n ']') | sed 's/\[\]//'
}

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]core: \[\033[33;1m\]\w\[\033[m\]\[\033[36m\] \`__git_ps1\`\[\033[35m\]$\[\033[0m\] "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

[ -r ~/.bashrc ] && . ~/.bashrc 
