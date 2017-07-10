local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
local k8ctx="%{$fg[yellow]%}foo%{$reset_color%}"

function _k8sctx() {
  local k8sctx
  k8sctx=$(cat ~/.kube/config | grep "current-context:" | sed "s/current-context: //")
  echo "%{$fg[yellow]%}$k8sctx%{$reset_color%}"
}

PROMPT='${ret_status} $(_k8sctx) %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
