success () {
    style $GREEN_BG
    echo -n " Success! "
    style $RESET

    style $GREEN $BOLD
    echo -e " ${1}"
    style $RESET
}

info () {
    style $BLUE_BG
    echo -n " Info "
    style $RESET

    style $BLUE $BOLD
    echo -e " ${1}"
    style $RESET
}

question () {
    style $CYAN_BG
    echo -n " Question "
    style $RESET

    style $CYAN $BOLD
    echo -e " ${1}"
    style $RESET
}


warning () {
    style $YELLOW_BG
    echo -n " Warning "
    style $RESET

    style $YELLOW $BOLD
    echo -e " ${1}"
    style $RESET
}

error () {
    style $RED_BG
    echo -n " ERROR "
    style $RESET

    style $RED $BOLD
    echo -e " ${1}"
    style $RESET
}

header () {
    style $BOLD
    echo -e $1
    style $RESET
}

point () {
    style $BOLD $YELLOW
    echo -n "* "
    style $RESET
    echo -e $1
}
