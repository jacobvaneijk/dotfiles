# Set $XDG_CONFIG_HOME if it's not set.
if [[ -z "${XDG_CONFIG_HOME}" ]]; then
    export XDG_CONFIG_HOME="${HOME}/.config"
fi

# Load all of the zsh files.
for file in $(find $ZDOTDIR/*.zsh);
do
    source $file
done
