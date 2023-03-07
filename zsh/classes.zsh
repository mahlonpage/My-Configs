#Data Science Virtual Environment
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#Data Science Python 3.7.9 work around
alias ibrew="arch -x86_64 /usr/local/bin/brew"

#Each function represents the actions to route into a given classes folder and run relative commands
#They end in nc to represent "no code" pairing with the normal version aliases that append 'code .'

export COURSE_LOC=~/Documents/cs/curr_classes/ #Course folder location

function datanc() {
    source ~/cs1951a_venv/bin/activate
    cd ${COURSE_LOC}data/
}

function dlnc()   {
    conda activate csci1470
    cd ${COURSE_LOC}dl/
}

function cybernc()   {
    cd ${COURSE_LOC}cyber/dev-env/home/
}

function resnc()    {
    cd ~/Desktop/Research/    
}

#Current Courses (but also opens vscode)
alias data='datanc; code .;'
alias dl='dlnc; code .;'
alias cyber='cybernc; code .;'
alias res='resnc; code .;'
