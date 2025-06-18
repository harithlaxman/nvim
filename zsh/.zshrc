# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ----------- History -----------

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt HIST_IGNORE_DUPS   # Don't save duplicate lines 
setopt SHARE_HISTORY      # Share history between sessions

# ----------- Set envs -----------

for file in $ZDOTDIR/*.zsh; do
    [[ $file == $ZDOTDIR/.zshrc ]] && continue
    source $file
done

# ----------- Path Config -----------

path=(
   $path
   $HOME/bin
   $SCRIPTS
)

# Remove duplicate entries and non-existent directories
typeset -U path
path=($^path(N-/))

export PATH

