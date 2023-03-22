#Data Science Virtual Environment
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Sets Java 1.8 for PySpark for Data Science Project MapReduce
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_301.jdk/Contents/Home

#Data Science Python 3.7.9 work around
alias ibrew="arch -x86_64 /usr/local/bin/brew"

#Each function represents the actions to route into a given classes folder and run relative commands
#They end in nc to represent "no code" pairing with the normal version aliases that append 'code .'

export COURSE_LOC=~/Documents/cs/curr_classes/ #Course folder location

function cdclass() {
    case $1 in

        "data")
            cd ${COURSE_LOC}data/
            ;;
        "cyber")
            cd ${COURSE_LOC}cyber/dev-env/home/
            ;;
        "dl")
            cd ${COURSE_LOC}dl/
            ;;
        *)
            echo "Error: Usage cdclass with arg1 = data, cyber, dl"
    esac
}

function data() {
    source ${COURSE_LOC}data/cs1951a_venv/bin/activate
    cdclass data
}

function dl()   {
    conda activate csci1470
    cdclass dl
}

function cyber()   {
    cdclass cyber
}

function res()    {
    cd ~/Desktop/Research/    
}

#Current Courses (but also opens vscode)
alias datac='data; code .;'
alias dlc='dl; code .;'
alias cyberc='cyber; code .;'
alias resc='res; code .;'
