# Move up the directory tree numerically (e.g. `up 3` executes `cd ../../..`).
function up() {
    if [[ "$#" < 1 ]]; then
        cd ..
    else
        cd_str=""

        for i in v{1..$1}; do
            cd_str="../${cd_str}"
        done

        cd $cd_str
    fi
}

# Find plain text occurrences in files in the current directory.
function fif() {
    grep -rnw '.' -e "$@"
}
