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

function conda_delete() {
  conda env remove -n $1
}