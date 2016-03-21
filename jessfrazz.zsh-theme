ZSH_THEME_GIT_PROMPT_ADDED='+'
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DELETED='%{-%}'
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_MODIFIED='!'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[255]%}on %{$FG[061]%}"
ZSH_THEME_GIT_PROMPT_RENAMED='='
ZSH_THEME_GIT_PROMPT_STASHED='$'
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_UNTRACKED='?'

git_prompt() {
	local branch="$(git_prompt_info)"
	if [[ -n "${branch}" ]]; then
		local s="$(git_prompt_status)"
		if [[ -n "${s}" ]]; then
			echo "${branch} %{$FG[033]%}[${s}]"
		else
			echo "${branch}"
		fi
	fi
}

if [[ "${UID}" -eq 0 ]]; then
	userStyle="%{$FG[124]%}"
else
	userStyle="%{$FG[166]%}"
fi

if [[ -n "${SSH_TTY}" ]]; then
	hostStyle="%{$FG[124]%}"
else
	hostStyle="%{$FG[136]%}"
fi

PROMPT=$'
%{$FX[bold]%}${userStyle}%n %{$FG[255]%}at ${hostStyle}%m %{$FG[255]%}in %{$FG[064]%}%~ $(git_prompt)
%{$FG[255]%}$%{$FX[reset]%} '
PROMPT2='%{$FG[136]%}→ %{$FX[reset]%}'

# vim: set syn=sh:
