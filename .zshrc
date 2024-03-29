clear
ZSH_DISABLE_COMPFIX=true
ZSH_THEME="osx"
plugins=(git fzf-tab zsh-autosuggestions zsh-syntax-highlighting bgnotify)

PATH="$PREFIX/bin:$HOME/.local/bin:$PATH:/system/xbin"
export PATH

export TERM=xterm-256color 

source $HOME/.oh-my-zsh/oh-my-zsh.sh
source $HOME/.oh-my-zsh/themes/icons
source $HOME/.aliases
source $HOME/.autostart
