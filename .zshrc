# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Enable plugins.
plugins=(git brew history kubectl docker docker-compose chucknorris brew osx react-native npm)

# Custom $PATH with extra locations.
export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin"

if [ -f $HOME/.aliases ]
then
	source $HOME/.aliases
fi

if [ -f $HOME/.exports ]
then
	source $HOME/.exports
fi

source $ZSH/oh-my-zsh.sh
