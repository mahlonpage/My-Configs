#Data Science Virtual Environment
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#Each function represents the actions to route into a given classes folder and run relative commands
#They end in nc to represent "no code" pairing with the normal version aliases that append 'code .'

export COURSE_LOC=~/Documents/cs/classes/ #Course folder location

function cdclass() {
    case $1 in

        "formal")
            cd ${COURSE_LOC}formal\ proof/fpv2023
            ;;
        "data")
            cd ${COURSE_LOC}databases
            ;;
        *)
            echo "Error: Usage cdclass with arg1 = data, cyber, dl"
    esac
}

function formal() {
    cdclass formal
}

function data()   {
    cdclass data
}

function res()    {
    cd ~/Documents/cs/curr_classes/research
}

#Current Courses (but also opens vscode)
alias datac='data; code .;'
alias formalc='formal; code .;'
alias resc='res; code .;'
