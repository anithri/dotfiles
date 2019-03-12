# ENV Variables
[ -e "${HOME}/.zshrc_env" ]     && source "${HOME}/.zshrc_env"

# Aliases
[ -e "${HOME}/.zshrc_aliases" ] && source "${HOME}/.zshrc_aliases"

# Machine specific rc
[ -e "${HOME}/.zshrc_local" ] && source "${HOME}/.zshrc_local"

source $ZSH/oh-my-zsh.sh
plugins=(asdf autojump aws bundler bgnotify git rails ruby npm yarn history)

# Application specific rc
[ -e "${HOME}/.zshrc_vendor" ] && source "${HOME}/.zshrc_vendor"


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/scottp/.npm-global/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/scottp/.npm-global/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/scottp/.npm-global/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /home/scottp/.npm-global/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /home/scottp/.npm-global/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /home/scottp/.npm-global/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh