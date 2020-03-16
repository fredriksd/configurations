alias ll='ls -l' 
alias v='vim'

function branches()
{
  git branch -a | sed 's/^[^\w+]//g' 
}

function sb()
{
   local branches=`git branch -a | sed 's/^[^\w+]//g'`
   select branch in ${branches} 
   do
      git checkout ${branch}
      return
   done
}
