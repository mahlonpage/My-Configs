#Each function represents the actions to route into a given classes folder and run relative commands
#They end in nc to represent "no code" pairing with the normal version aliases that append 'code .'

export COURSE_LOC=~/Documents/cs/classes/ #Course folder location

function cdclass() {
    case $1 in

        "ml")
            cd ${COURSE_LOC}ml
            ;;
        "ai")
            cd ${COURSE_LOC}ai
            ;;
        *)
            echo "Error: Usage cdclass with arg1 = PLACEHOLDER TEXT"
            ;;
    esac
}

function ml() {
    cdclass "ml"
    venv
    cd ./hw5-code-mahlonpage
}

function ai() {
    cdclass "ai"
    venv
    cd ./hw4-constrained-optimization
}

#Current Courses (but also opens vscode)
alias mlc='ml; code .'
alias aic='ai; code .'
