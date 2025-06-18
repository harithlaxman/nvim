# ----------- Plugins -----------

# Powerlevel10k
source $ZPLUGINS/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# ZSH-Syntax-Highlighting
if [[ -f $ZPLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
    source $ZPLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# ----------- Python -----------

# Pyenv
eval "$(pyenv init - zsh)"
