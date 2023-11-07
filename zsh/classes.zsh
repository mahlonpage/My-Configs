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
        "music")
            cd ${COURSE_LOC}musc\ 1210/
            ;;
        *)
            echo "Error: Usage cdclass with arg1 = data, cyber, dl"
            ;;
    esac
}

function formal() {
    cdclass formal
}

function res()    {
    cd ~/Documents/cs/research
}

#Current Courses (but also opens vscode)
alias formalc='formal; code .;'
alias musc='cdclass music;'
alias resc='res; code .;'
