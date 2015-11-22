# Simple config reader

function conf_read() {
    shopt -s extglob
    configfile=$1

    while IFS='= ' read lhs rhs
    do
        if [[ ! $lhs =~ ^\ *# && -n $lhs ]]; then
            rhs="${rhs%%\#*}"    # Del in line right comments
            rhs="${rhs%%*( )}"   # Del trailing spaces
            rhs="${rhs%\"*}"     # Del opening string quotes
            rhs="${rhs#\"*}"     # Del closing string quotes

            # We need to pass -g flag to declare variable that will be
            # available in includer-file.
            declare -g $lhs="$rhs"
        fi
    done < $configfile
}

