# Set common applications.
export EDITOR="nvim"
export VISUAL=$EDITOR
export BROWSER="firefox"
export PAGER="less"

# Make the dotfiles script runnable throughout the system.
export PATH="${PATH}:${HOME}/.dotfiles/bin"

# Add the Rust toolchain to the path.
export PATH="${PATH}:${HOME}/.cargo/bin"
