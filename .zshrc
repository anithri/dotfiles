# Source zim
if [[ -s ${ZDOTDIR:-${HOME}}/.zim/init.zsh ]]; then
  source ${ZDOTDIR:-${HOME}}/.zim/init.zsh
fi

# Application specific rc
[ -e "${HOME}/.zshrc_vendor" ] && source "${HOME}/.zshrc_vendor"

# ENV Variables
[ -e "${HOME}/.zshrc_env" ]     && source "${HOME}/.zshrc_env"

# Aliases
[ -e "${HOME}/.zshrc_aliases" ] && source "${HOME}/.zshrc_aliases"

# Machine specific rc
[ -e "${HOME}/.zshrc_local" ] && source "${HOME}/.zshrc_local"

# History settings
setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=20000
SAVEHIST=$HISTSIZE
HISTFILE=~/.zsh_history

# Final Path Adjustments
export PATH="$HOME/bin/:$HOME/.local/bin:$HOME/.dotfiles/bin:$HOME/.npm-global/bin:$HOME/.yarn/bin:$PATH:$HOME/.rvm/bin"

export EDITOR=/usr/bin/vi

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/scottp/4winds/solarAPI/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/scottp/4winds/solarAPI/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/scottp/4winds/solarAPI/node_modules/tabtab/.completions/sls.zsh ]] && . /home/scottp/4winds/solarAPI/node_modules/tabtab/.completions/sls.zsh
