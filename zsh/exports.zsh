# Set common applications.
export EDITOR="nvim"
export VISUAL=$EDITOR
export BROWSER="firefox"
export PAGER="less"

# Set environment variable for Go.
export GOPATH="${HOME}/go"
export GOBIN="${GOPATH}/bin"

# Make the dotfiles script runnable throughout the system.
export PATH="${PATH}:${HOME}/.dotfiles/bin"

# Add the Rust toolchain to the path.
export PATH="${PATH}:${HOME}/.cargo/bin"

# Add Composer vendor bin directory to the path.
export PATH="${PATH}:${HOME}/.config/composer/vendor/bin"

# Add Flutter bin directory to the path.
export PATH="${PATH}:/opt/flutter/bin"

# Add Go `bin` location to the path.
export PATH="${PATH}:${HOME}/go/bin"
