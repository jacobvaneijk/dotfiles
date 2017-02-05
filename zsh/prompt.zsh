setopt promptsubst

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' formats ' %b' 'x%R'

vcs_info

git_dirty() {
    # Check if the Git repository is dirty.
    command git diff --quiet --ignore-submodules HEAD &>/dev/null;

    (( $? == 1 )) && echo "%F{001}✗" || echo "%F{002}✔"
}

git_info() {
    # Check if where are inside a Git repository.
    command git rev-parse --is-inside-work-tree &>/dev/null || return

    vcs_info

    echo "$(git_dirty)%f${vcs_info_msg_0_}"
}

export PROMPT="%F{013}%n@%m %F{012}%~%F{015}$ "
export RPROMPT='`git_info`'
