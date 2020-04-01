#Fredrik's zsh config

setopt prompt_subst

[ -f "$HOME/zsh/aliasrc" ] && source "$HOME/zsh/aliasrc"

fpath=(/home/fredrsa/zsh/plugins/zsh-completions/src
       ~/zsh/.zfunc
       $fpath
)

autoload -U git_ps1
autoload -U colors && colors
PS1='%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%m %{$fg[magenta]%}%~%{$fg[yellow]%}$(git_ps1)%{$fg[red]%}]%{$reset_color%}$%b '

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

autoload -U compinit && compinit
zstyle ':completion:*' special-dirs true 
zstyle ':completion:*' menu select 
zstyle ':completion:*' use-cache 1 
zmodload zsh/complist
_comp_options+=(globdots)

CASE_SENSITIVE="true"

#Vim mode
bindkey -v 

#Bindings for vim navigation.
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

#Binding so backspace works "normally"
bindkey -v '^?' backward-delete-char 

source /Users/fredrik/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null 
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor line)
