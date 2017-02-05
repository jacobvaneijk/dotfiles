# Redraw the statusline every 10 seconds.
set -g status-interval 10

# Change the statusline length.
set -g status-left-length 32
set -g status-right-length 150

# Theme for the statusline.
set -g status-bg default
set -g status-fg colour255

set -g status-left "#[fg=colour117,bold]♟ #S "
set -g status-right "#(bash ~/.config/tmux/segments/current_song.sh) #[fg=colour255,nobold]%d %b %Y #[fg=colour117,bold]#(whoami)"

# Theme for the window tabs.
set -g window-status-format "#[fg=colour241]#I #W"
set -g window-status-current-format "#[fg=colour255,bold]#I #W"

# Theme for the pane borders.
set -g pane-border-style fg=colour246
set -g pane-active-border-style fg=colour075
