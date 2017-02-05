# Clear terminal scrollback.
alias cls="printf '\033c'"

# Get week number
alias week="date +%V"

# Colorize output for grep commands.
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

# Colorize output for ls command.
alias ls="ls --color=auto"

# Some handy shortcuts.
alias root="cd /"
alias home="cd ~"
alias dev="cd ~/Development"
alias dots="cd ~/.dotfiles"
alias config="cd ${XDG_CONFIG_HOME}"
alias update="sudo pacman -Syu"
alias battery="acpi -b"
alias vim="nvim"

# Better tree.
alias tree="tree -aC -I '.git|node_modules' --dirsfirst"

# Navigate to the previous directory.
alias back="cd ${OLDPWD}"

# Make TMUX use the correct configuration file.
alias tmux="tmux -f ${XDG_CONFIG_HOME}/tmux/.tmux.conf"

# Reload Zsh configuration.
alias reload="source ${XDG_CONFIG_HOME}/zsh/.zshrc"
