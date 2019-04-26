if [ ! -d ~/.asdf ]; then
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.1
fi

if [ ! -d ~/.yadm ]; then
  yadm clone https://github.com/anithri/dotfiles --no-bootstrap 
  yadm stash drop
  yadm decrypt
fi

if [ ! -d ~/.oh-my-zsh ]; then
  git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

if [ ! -d ~/.oh-my-zsh/plugins/liquidprompt ]; then
  git clone https://github.com/nojhan/liquidprompt.git ~/.oh-my-zsh/plugins/liquidprompt
fi

if [ ! -d ~/Tools/liquidprompt ]; then
  git clone https://github.com/nojhan/liquidprompt.git ~/Tools/liquidprompt
fi

if [ ! -d ~/Tools/polybar ]; then
  git clone https://github.com/jaagr/polybar.git ~/Tools/polybar
fi

if [ ! -d ~/Tools/polybar-scripts ]; then
  git clone https://github.com/x70b1/polybar-scripts.git ~/Tools/polybar-scripts
fi
