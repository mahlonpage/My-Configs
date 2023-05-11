SSH_HOME='~/Documents/cs/mount_browncs'

#Functions to mount my SSH_HOME to brown systems and to remount if necessary
function myfuse()   {
    sshfs mpage7@ssh.cs.brown.edu:/home/mpage7 $SSH_HOME
    cd $SSH_HOME
}

function fixfuse()  {
    diskutil unmount force $SSH_HOME
    myfuse
}

alias sshccv='ssh mpage7@ssh.ccv.brown.edu' #ssh into ccv (oscar)

#ssh into brown cs with first argument being computer preference
function sshcs() {
    if [ -z "$1" ]; then
        ssh -t mpage7@ssh.cs.brown.edu host=aluminum
    elif [ "$1" = "random" ]; then
        ssh mpage7@ssh.cs.brown.edu
    else
        ssh -t mpage7@ssh.cs.brown.edu host=$1
    fi
}
