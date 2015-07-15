#!/bin/bash
function print_linebreaker {
	printf "\n"
	echo "--------------------------------------------"
}

function read_input {
	while [[ ! $input =~ (y|n|Y|N|yes|no) ]]; do
		read input
	done
}

readonly YES_REGEX="(y|Y|yes)"

echo "------------------"
echo "--- By NineTen ---"
echo "------------------"

echo "Copy .vim files and .vimrc? (y/n)"
echo "(WARNING: this replaces your existing files)"
read_input

if [[ $input =~ $YES_REGEX ]]; then
	echo "installing .vim and .vimrc..."
	echo "deleting old .vim files..."
	rm -rf ~/.vim
	echo "copying new .vim files..."
	cp -R .vim* ~/
	echo "copying new .vimrc..."
	cp .vimrc ~/
fi

print_linebreaker
input=""

echo "Copy .bash_profile and .bash_rc? (y/n)"
echo "(WARNING: this replaces your existing files)"
read_input

if [[ $input =~ $YES_REGEX ]]; then
	echo "installing .bash_profile and .bashrc..."
	echo "copying new .bash_profile files..."
	cp .bash_profile ~/
	echo "copying new .bashrc files..."
	cp .bashrc ~/
fi

print_linebreaker
echo "done."
