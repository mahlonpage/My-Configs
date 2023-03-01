# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load 
ZSH_THEME="robbyrussell"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/mahlonpage/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/mahlonpage/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/mahlonpage/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/mahlonpage/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

#Data Science Virtual Environment
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


#My Aliases
alias c='clear'
alias cs='cd ~/Documents/git_lc/'
alias z='vim ~/.zshrc'
alias v='code .'
alias s='sqlite3'
alias p='python3'
#Takes song Zack is currently listening to and adds it to my playlist
alias a='/Users/mahlonpage/Documents/cs/tuningfork/venv/bin/python3 /Users/mahlonpage/Documents/cs/tuningfork/enqueue.py -zis'
#Shows song Zack is listening to.
alias zack='/Users/mahlonpage/Documents/cs/tuningfork/venv/bin/python3 /Users/mahlonpage/Documents/cs/tuningfork/enqueue.py -zi'

#My Functions
function def()	{
  cd ~/
  $aliases[c]
  conda deactivate &> /dev/null
  deactivate &> /dev/null
  exec $SHELL -l
}

function gall()	{
  git add -A
  git commit -m "$([ "$1" != "" ] && echo "$1" || echo "minor tweak")"
  git push	
}

function conda_delete() {
  conda env remove -n $1
}

#Data Science Python 3.7.9 work around
alias ibrew="arch -x86_64 /usr/local/bin/brew"

#Each function represents the actions to route into a given classes folder and run relative commands
#They end in nc to represent "no code" pairing with the normal version aliases that append 'code .'

#Location of my Computer Science Course Folder
export COURSE_LOC=~/Documents/cs/curr_classes/

function datanc() {
    source ~/cs1951a_venv/bin/activate
    cd ${COURSE_LOC}data/
}

function dlnc()   {
    conda activate csci1470
    cd ${COURSE_LOC}dl/
}

function cybernc()   {
    cd ${COURSE_LOC}cyber/dev-env/
}

#Current Courses (but also opens vscode)
alias data='datanc; code .;'
alias dl='dlnc; code .;'
alias cyber='cybernc; code .;'
