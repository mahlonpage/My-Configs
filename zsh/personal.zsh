#My Aliases
alias closeterm='~/dot-files/shellscripts/close_zshell_hotkey_window.sh'
alias c='clear'
alias cs='cd ~/Documents/cs'
alias p11='python3.11'
alias p12='python3.12'
alias myip='ifconfig -l | xargs -n1 ipconfig getifaddr'
alias ls='lsd' #use lsd for pretty printing
alias newpy='code ~/Documents/cs/temp.py; sleep 1.5; closeterm'

# Utilities
alias harmonic='python3.12 ~/Documents/cs/probability_and_games/harmonic_number_calculation.py'

# Resize terminal
alias tsmall='resize_terminal 200'
alias tmed='resize_terminal 320'
alias tbig='resize_terminal 600'
alias tmax='resize_terminal 900'

# Venv creation/activation
alias venv='source ./venv/bin/activate'
alias makevenv='p12 -m venv ./venv'

#Enqueue
MUSIC='/Users/mahlonpage/Documents/cs/tuningfork/venv/bin/python3 /Users/mahlonpage/Documents/cs/active_projects/enqueue.py'
alias a="$MUSIC -z -s SHARED" # Add current zack song to my playlist
alias zack="$MUSIC -z" # Show current zack song
alias tune="$MUSIC" # Use tuningfork

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
