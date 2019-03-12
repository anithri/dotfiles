
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

# Encrypted Environment 
[ -e "${HOME}/.zshrc_private" ]     && source "${HOME}/.zshrc_private"

