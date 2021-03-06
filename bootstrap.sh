#!/bin/bash
cd "$(dirname "$0")"
git pull
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
EXCLUDED=( ".brew" ".git" ".DS_Store" "bootstrap.sh" "README.md" "init" ".osx" )

function createLinks() {
    for file in `ls -A $DIR/`
    do
        echo $file
        if (! isExcluded $file)
        then
            if [ -d "$file" ] ; then
                ln -fs $DIR/$file $HOME
                echo "Directory symlink created for $file"
            else
                ln -fs $DIR/$file $HOME/$file
                echo "Symlink created for $file"
            fi
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
source ~/.zsh_profile

# Set up Dein for VIM
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
mkdir ~/.vim/bundles
sh ./installer.sh ~/.vim/bundles
rm -f ./installer.sh
