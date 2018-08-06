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

# Transfer a file using transfer.sh.
transfer() {
    if [ $# -eq 0 ];
    then
        echo "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"
        return 1
    fi

    tmpfile=$( mktemp -t transferXXX )
    file=$1

    if tty -s;
    then
        basefile=$(basename "$file" | sed -e 's/[^a-zA-Z0-9._-]/-/g')

        if [ ! -e $file ];
        then
            echo "File $file doesn't exists."
            return 1
        fi

        if [ -d $file ];
        then
            zipfile=$( mktemp -t transferXXX.zip )
            cd $(dirname $file) && zip -r -q - $(basename $file) >> $zipfile
            curl --progress-bar --upload-file "$zipfile" "https://transfer.sh/$basefile.zip" >> $tmpfile
            rm -f $zipfile
        else
            curl --progress-bar --upload-file "$file" "https://transfer.sh/$basefile" >> $tmpfile
        fi
    else
        curl --progress-bar --upload-file "-" "https://transfer.sh/$file" >> $tmpfile
    fi

    cat $tmpfile
    rm -f $tmpfile
}
