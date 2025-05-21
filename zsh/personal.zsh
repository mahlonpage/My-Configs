#My Aliases
alias closeterm='~/dot-files/shellscripts/close_zshell_hotkey_window.sh'
alias c='clear'
alias cs='cd ~/Documents/cs'
alias p11='python3.11'
alias p12='python3.12'
alias myip='ifconfig -l | xargs -n1 ipconfig getifaddr'
alias ls='lsd' #use lsd for pretty printing
alias newpy='code ~/Documents/cs/random/temp.py; sleep 1.5; closeterm'

alias harmonic='python3.12 ~/Documents/cs/active_projects/probability_and_cards/harmonic.py'

# Resize terminal
alias tsmall='resize_terminal 200'
alias tmed='resize_terminal 320'
alias tbig='resize_terminal 600'
alias tfull='resize_terminal 900'

# Venv creation/activation
alias venv='source ./venv/bin/activate'
alias makevenv='p12 -m venv ./venv'

# My Tools
alias text='python3 /Users/mahlonpage/Documents/cs/active_projects/cli_text/main.py'
alias budget='source /Users/mahlonpage/Documents/cs/active_projects/personal_finances/venv/bin/activate; p12 /Users/mahlonpage/Documents/cs/active_projects/personal_finances/code/categorizing_game.py; def'
alias categories='code /Users/mahlonpage/Documents/cs/active_projects/personal_finances/data/categorizations.csv'

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

# Resize the terminal window
function resize_terminal() {
    osascript -e "tell application \"iTerm2\" to tell current window to set bounds to {0, 24, 1440, $1}"
}

# Handles going to zshell file configs
function z()    {
    case "$1" in

        "p")
            vim ~/dot-files/zsh/personal.zsh
            ;;
        "vim")
            vim ~/dot-files/zsh/vim.zsh
            ;;
        "norm")
            vim ~/dot-files/zshrc
            ;;
        "h")
            echo "Options: p (personal)"
            echo "         norm (~/.zshrc)"
            echo "         vim"
            echo "         h (help)"
            ;;
        *)
            cd ~/dot-files/
            ;;
  esac
}
