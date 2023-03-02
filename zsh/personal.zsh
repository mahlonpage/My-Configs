#My Aliases
alias c='clear'
alias cs='cd ~/Documents/cs/'
alias z='cd ~/dot-files/zsh; ls'
alias v='code .'
alias s='sqlite3'
alias p='python3'
#Takes song Zack is currently listening to and adds it to my playlist
alias a='/Users/mahlonpage/Documents/cs/tuningfork/venv/bin/python3 /Users/mahlonpage/Documents/cs/tuningfork/enqueue.py -zis'
#Shows song Zack is listening to.
alias zack='/Users/mahlonpage/Documents/cs/tuningfork/venv/bin/python3 /Users/mahlonpage/Documents/cs/tuningfork/enqueue.py -zi'

#My Functions
function def()  {
  cd ~/
  $aliases[c]
  conda deactivate &> /dev/null
  deactivate &> /dev/null
  exec $SHELL -l
}

function gall() {
  git add -A
  git commit -m "$([ "$1" != "" ] && echo "$1" || echo "minor tweak")"
  git push
}

