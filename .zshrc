#Fredrik's zsh config

[ -f "$HOME/zsh/aliasrc" ] && source "$HOME/zsh/aliasrc"
[ -f "$HOME/zsh/.zsh_functions" ] && source "$HOME/zsh/.zsh_functions"

fpath=(/home/fredrsa/zsh/plugins/zsh-completions/src
$fpath
)

autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

autoload -U compinit && compinit
_comp_options+=(globdots)
zstyle ':completion:*' special-dirs true 
zstyle ':completion:*' menu select 
CASE_SENSITIVE="true"
zmodload zsh/complist

#Bindings for vim navigation.
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history


source /Users/fredrik/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null 
