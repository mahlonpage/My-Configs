#Each function represents the actions to route into a given classes folder and run relative commands
#They end in nc to represent "no code" pairing with the normal version aliases that append 'code .'

export COURSE_LOC=~/Documents/cs/classes/ #Course folder location

function cdclass() {
    case $1 in

        "temp")
            cd ${COURSE_LOC}temp
            ;;
        "logic")
            cd ${COURSE_LOC}1710
            ;;
        "agt")
            cd ${COURSE_LOC}2440
            ;;
        *)
            echo "Error: Usage cdclass with arg1 = PLACEHOLDER TEXT"
            ;;
    esac
}

function logic() {
    cdclass "logic"
    venv
}

function agt() {
    cdclass "agt"
    venv
}

function res()    {
    cd ~/Documents/cs/research/code
}

#Current Courses (but also opens vscode)
alias logicc='logic; code .;'
alias agtc='agt; code .;'
alias resc='res; venv; code .;'
