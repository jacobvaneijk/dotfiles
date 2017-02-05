# Use `Ctrl + a` as the default command prefix.
unbind C-b
set -g prefix C-a
bind C-a send-prefix

# Reload configuration.
bind r source-file ~/.config/tmux/.tmux.conf

# Saner window splitting.
bind v split-window -h
bind s split-window -v

# Prefix in combination with [hl] to navigate between windows.
unbind n
unbind p
bind -r h previous-window
bind -r l next-window

# Find a session and switch to it.
bind C-f command-prompt -p find-session "switch-client -t %%"
