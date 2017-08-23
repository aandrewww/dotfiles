export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="clean"

plugins=(git docker docker-compose chucknorris brew osx react-native npm)

export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin"

source $HOME/.aliases
source $HOME/.exports
source $ZSH/oh-my-zsh.sh
