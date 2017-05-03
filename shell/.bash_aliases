alias ls='ls -GFhl'
alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias la='ls -FGlAhp'
alias less='less -FSRXc'

# Easier navigation
alias .='echo $PWD'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ..l/'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias ~="cd ~"

# Shortcuts
alias dropbox="cd ~/Dropbox"
alias dl="cd ~/Downloads"
alias dt ="cd ~/Desktop"
alias work="cd ~/Work"
alias workp="cd ~/Work/projects"
alias g="git"
alias h="history"
alias j="jobs"

# PS
alias psa="ps aux"
alias psg="ps aux | grep "
alias psr='ps aux | grep ruby'

# Vagrant aliases
alias vag='vagrant'
alias vagup='vagrant up'
alias vagdestroy='vagrant destroy'
alias vagssh='vagrant ssh'
alias vaghalt='vagrant halt'

# Docker aliases
alias d='docker $*'
alias d-c='docker-compose $*'

# Redis aliases
alias redis-start='brew services start redis'
alias redis-stop='brew services stop redis'
# Mongo aliases
alias mongo-start='brew services start mongodb'
alias mongo-stop='brew services stop mongodb'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Get macOS Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update; sudo gem cleanup'

# Homebrew
alias brewu='brew update  && brew upgrade --all && brew cleanup && brew prune && brew doctor'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Show/hide hidden files in Finder
alias showFiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hideFiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Simulator
alias simulator='open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app'

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# File size
alias fs="stat -f \"%z bytes\""

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# Open Sublime
alias subl='/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'
