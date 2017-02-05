# Enable truecolors.
set -g default-terminal "xterm-termite"
set-option -ga terminal-overrides ",xterm-termite:Tc"

# Limit scrollback buffer to 5000 lines.
set -g history-limit 5000

# No delay for escape key press.
set -s escape-time 0
