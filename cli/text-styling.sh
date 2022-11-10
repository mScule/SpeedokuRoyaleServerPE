# Black
BLACK="30"
BLACK_BG="40"

# White
WHITE="97"
WHITE_BG="107"

# Red
RED="31"
RED_BG="41"

# Green
GREEN="32"
GREEN_BG="42"

# Yellow
YELLOW="33"
YELLOW_BG="43"

# Blue
BLUE="34"
BLUE_BG="44"

# Magenta
MAGENTA="35"
MAGENTA_BG="45"

# Cyan
CYAN="36"
CYAN_BG="46"

# Stylings
RESET="0"
BOLD="1"
FAINT="2"
ITALIC="3"
UNDERLINED="4"

style () {
    for i in "$@"
    do
        if [[ $i == $1 ]];
        then
            STYLE="${i}"
        else
            STYLE="${STYLE};${i}"
        fi
    done
    echo -e -n "\e[${STYLE}m"
}
