# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
#ZSH_THEME="robbyrussell"
source ~/powerlevel10k/powerlevel10k.zsh-theme

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-open)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Force path array to be unique making PATH not have duplicates
typeset -U path PATH

# Update PATH with necessary files
export PATH="~/bin:$PATH"
export PATH="$PATH:/usr/local/bin/python3.12"
export PATH="$PATH:/Applications/Racket v8.14/bin"

#Loads in zsh preferences from zsh folder (divided into files for ease of access)
for config (~/dot-files/zsh/*.zsh) source $config

# Now we can run any custom commands from there
tmed
