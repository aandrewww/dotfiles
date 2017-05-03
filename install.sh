#!/usr/bin/env bash

#   Run shells
#   ------------------------------------------------------------

# Set macOS defaults
sh ./macos/set-defaults.sh

# Install homebrew and homebrew bundles
cd ./homebrew
sh ./install.sh 2>&1
echo "› brew update"
brew update
echo "› brew bundle"
brew bundle
cd ..

#   Setup shell
#   ------------------------------------------------------------

cd ./shell

git pull origin master;

function doIt() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		-avh --no-perms . ~;
	source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
