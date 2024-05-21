#Each function represents the actions to route into a given classes folder and run relative commands
#They end in nc to represent "no code" pairing with the normal version aliases that append 'code .'

export COURSE_LOC=~/Documents/cs/classes/ #Course folder location

function cdclass() {
    case $1 in

#        "logic")
#            cd ${COURSE_LOC}1710
#            ;;
        *)
            echo "Error: Usage cdclass with arg1 = PLACEHOLDER TEXT"
            ;;
    esac
}

#function logic() {
#    cdclass "logic"
#    venv
#}

#Current Courses (but also opens vscode)
#alias logicc='logic; code .;'
