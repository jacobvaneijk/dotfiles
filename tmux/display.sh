# Start the window and pane numbering at 1.
set -g base-index 1
set -g pane-base-index 1

# Renumber the windows when a window is closed.
set -g renumber-windows on

# Automatically rename a window to reflect the current program.
setw -g automatic-rename on

# Set the terminal title.
set -g set-titles on
set -g set-titles-string "#W@#S"
