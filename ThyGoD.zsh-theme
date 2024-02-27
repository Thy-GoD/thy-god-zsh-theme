#!/bin/zsh
# Based on gnzh/bira's code, Inspired by Spaceship.

setopt prompt_subst

() {
  local PR_USER PR_USER_OP PR_PROMPT PR_HOST PR_SYMBOL
  local USER_SYMBOL ROOT_SYMBOL
  
  # Custom symbols have been removed as they may conflict with the initiation process, 
  # do copy paste your own from online.
  
  USER_SYMBOL='>>>'
  ROOT_SYMBOL='💀'
  
  # Check the UID
  if [[ $UID -ne 0 ]]; then # normal user
    PR_USER='%F{blue}%n%f'
    PR_USER_OP='%F{blue}%#%f'
    PR_SYMBOL="%B%F{cyan}${USER_SYMBOL}%f"
  else # root
    PR_USER='%B%F{red}%n%f'
    PR_USER_OP='%B%F{red}%#%f'
    PR_SYMBOL="${ROOT_SYMBOL}"
  fi
  
  # Checks if command has an error code or not.
  # Returns green arrow when there is no error.
  # Returns red cross when there is an error.
  
  PR_PROMPT="%(?.%B%F{green}→ %f.%B%F{red}⨯ %f)"
  
  # Check if we are on SSH or not
  if [[ -n "$SSH_CLIENT"  ||  -n "$SSH2_CLIENT" ]]; then
    PR_HOST='%B%F{blue}%M%f' # SSH
  else
    PR_HOST='%F{blue}%M%f' # no SSH
  fi
  
  # Sets Prompt Variables.
  local return_code="%(?..%F{red}%? %f)"
  local user_host="${PR_USER}%F{cyan}${PR_SYMBOL}${PR_HOST}"
  local current_dir="%B%F{204}%~%f%b"
  local git_branch='$(git_super_status)'
  
  # Sets Prompt Layout
  NEWLINE=$'\n'
  PROMPT="${NEWLINE}${user_host} ${current_dir} ${git_branch} ${NEWLINE}$PR_PROMPT"
  RPROMPT="${return_code}"
  
  # Sets Configurations for Plugins.
  ZSH_THEME_GIT_PROMPT_PREFIX="%F{123}~["
  ZSH_THEME_GIT_PROMPT_SUFFIX="%B%F{135}]%f"
  ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}%{✔%G%}"
  ZSH_THEME_GIT_PROMPT_SEPARATOR="%F{123}]%f%F{250}:%f%B%F{135}["
  ZSH_THEME_GIT_PROMPT_BRANCH="%F{123}"
  ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[red]%}%{●%G%}"
  ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[red]%}%{✖%G%}"
  ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg_bold[blue]%}%{✚%G%}"
  ZSH_THEME_GIT_PROMPT_DELETED="%{$fg_bold[blue]%}%{-%G%}"
  ZSH_THEME_GIT_PROMPT_BEHIND="%{↓%G%}"
  ZSH_THEME_GIT_PROMPT_AHEAD="%{↑%G%}"
  ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%}%{…%G%}"
  ZSH_THEME_GIT_PROMPT_STASHED="%{$fg_bold[blue]%}%{⚑%G%}"
}
