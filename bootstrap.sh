#!/bin/bash
cd "$(dirname "$0")"
git pull
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
EXCLUDED=( ".brew" ".git" ".DS_Store" "bootstrap.sh" "README.md" "init" ".osx" )

function createLinks() {
    for file in `ls -A $DIR/`
    do
        if (! isExcluded $file)
        then
            ln -fs $DIR/$file $HOME/$file
            echo "Symlink created for $file"
        fi
    done
}

function isExcluded() {
    for i in ${EXCLUDED[@]}
    do
        if [ $i == $1 ]
        then
            return 0
        fi
    done
    return 1
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	createLinks
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		createLinks
	fi
fi
unset createLinks
unset isExcluded
source ~/.bash_profile
