#Each function represents the actions to route into a given classes folder and run relative commands
#They end in nc to represent "no code" pairing with the normal version aliases that append 'code .'

export COURSE_LOC=~/Documents/cs/classes/ #Course folder location

function cdclass() {
    case $1 in

        "temp")
            cd ${COURSE_LOC}temp
            ;;
        *)
            echo "Error: Usage cdclass with arg1 = PLACEHOLDER TEXT"
            ;;
    esac
}

#function formal() {
#    cdclass formal
#}

function res()    {
    cd ~/Documents/cs/research
}

#Current Courses (but also opens vscode)
#alias formalc='formal; code .;'
#alias musc='cdclass music;'
alias resc='res; code .;'
