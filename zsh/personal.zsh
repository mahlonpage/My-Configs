#My Aliases
alias c='clear'
alias cs='cd ~/Documents/cs/'
alias v='code .'
alias s='sqlite3'
alias p='python3'
alias ls='lsd' #use lsd for pretty printing
alias please='sudo $(fc -ln -1)'

#Enqueue
#Takes song Zack is currently listening to and adds it to my playlist
alias a='/Users/mahlonpage/Documents/cs/tuningfork/venv/bin/python3 /Users/mahlonpage/Documents/cs/tuningfork/enqueue.py -zis'
#Shows song Zack is listening to.
alias zack='/Users/mahlonpage/Documents/cs/tuningfork/venv/bin/python3 /Users/mahlonpage/Documents/cs/tuningfork/enqueue.py -zi'

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
        "conda")
            vim ~/dot-files/zsh/conda.zsh
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
            echo "         conda"
            echo "         h (help)"
            ;;
        *)
            cd ~/dot-files/
            ;;
  esac
}
