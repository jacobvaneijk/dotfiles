# Use `Ctrl + a` as the default command prefix.
unbind C-b
set -g prefix C-a
bind C-a send-prefix

# Reload configuration.
bind r source-file ~/.config/tmux/.tmux.conf

# Saner window splitting.
bind v split-window -h
bind s split-window -v

# Shift in combination with arrow keys to navigate between windows.
unbind n
unbind p
bind -n S-Left previous-window
bind -n S-Right next-window

# Move around panes with `hjkl`.
bind -r h select-pane -L
bind -r j select-pane -D
bind -r k select-pane -U
bind -r l select-pane -R

# Resize panes with `HJKL`.
bind -r H resize-pane -L 5
bind -r J resize-pane -D 5
bind -r K resize-pane -U 5
bind -r L resize-pane -R 5

# Find a session and switch to it.
bind C-f command-prompt -p find-session "switch-client -t %%"
