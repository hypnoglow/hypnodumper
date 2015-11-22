declare -g _SELF="hypnodumper"

# Note that all colors are bold
declare -g _COLOR_RED="\033[01;31m"
declare -g _COLOR_GREEN="\033[01;32m"
declare -g _COLOR_YELLOW="\033[01;33m"
declare -g _COLOR_BLUE="\033[01;34m"
declare -g _COLOR_PURPLE="\033[01;35m"
declare -g _COLOR_CYAN="\033[01;36m"
declare -g _COLOR_RESET="\033[0m"

_error() {
    echo -e "${_COLOR_PURPLE}${_SELF}${_COLOR_RESET} ${_COLOR_CYAN}[$(date +'%Y-%m-%dT%H:%M:%S%z')]${_COLOR_RESET} ${_COLOR_RED}ERROR${_COLOR_RESET}: $@" >&2
}

_info() {
    echo -e "${_COLOR_PURPLE}${_SELF}${_COLOR_RESET} ${_COLOR_CYAN}[$(date +'%Y-%m-%dT%H:%M:%S%z')]${_COLOR_RESET} ${_COLOR_GREEN}INFO${_COLOR_RESET}: $@"
}

