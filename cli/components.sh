# Contains "Components" for showing text in the terminal differently

header () {
    style $BOLD
    echo -e $1
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
