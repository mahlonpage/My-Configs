#My Aliases
alias c='clear'
alias cs='cd ~/Documents/cs'
alias p11='python3.11'
alias p12='python3.12'
alias myip='ifconfig -l | xargs -n1 ipconfig getifaddr'
alias ls='lsd' #use lsd for pretty printing
alias text='python3 /Users/mahlonpage/Documents/cs/active_projects/cli_text/main.py'
alias venv='source ./venv/bin/activate'

function regex()    {
    /usr/local/bin/python3 /Users/mahlonpage/Documents/cs/active_projects/rENGex/code/rENGex.py $@
}

#Enqueue
MUSIC='/Users/mahlonpage/Documents/cs/active_projects/tuningfork/venv/bin/python3 /Users/mahlonpage/Documents/cs/active_projects/tuningfork/enqueue.py'
#Takes song Zack is currently listening to and adds it to my playlist
alias a="$MUSIC -z -s SHARED"
#Shows song Zack is listening to.
alias zack="$MUSIC -z"
# Use tuning fork
alias tune="$MUSIC"

# My functions

# Restart terminal in ~/ and reset to default venv and conda
function def()  {
  cd ~/
  $aliases[c]
  conda deactivate &> /dev/null
  deactivate &> /dev/null
  exec $SHELL -l
}

# Git add, commit with message, push
function gall() {
  git add -A
  git commit -m "$([ "$1" != "" ] && echo "$1" || echo "minor tweak")"
  git push
}

function z()    {
    case "$1" in

        "c")
            vim ~/dot-files/zsh/classes.zsh
            ;;
        "p")
            vim ~/dot-files/zsh/personal.zsh
            ;;
        "ssh")
            vim ~/dot-files/zsh/ssh.zsh
            ;;
        "vim")
            vim ~/dot-files/zsh/vim.zsh
            ;;
        "norm")
            vim ~/dot-files/zshrc
            ;;
        "h")
            echo "Options: p (personal)"
            echo "         c (class)"
            echo "         norm (~/.zshrc)"
            echo "         ssh"
            echo "         vim"
            echo "         h (help)"
            ;;
        *)
            cd ~/dot-files/
            ;;
  esac
}
