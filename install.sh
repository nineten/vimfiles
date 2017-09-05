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

echo "Copy .vim files? (y/n)"
echo "(WARNING: this replaces your existing files)"
read_input

if [[ $input =~ $YES_REGEX ]]; then
	echo "installing .vim..."
	echo "deleting old .vim files..."
	rm -rf ~/.vim
	echo "copying new .vim files..."
	cp -R .vim* ~/
fi

print_linebreaker
input=""

echo "Copy .vimrc? (y/n)"
echo "(WARNING: this replaces your existing files)"
read_input

if [[ $input =~ $YES_REGEX ]]; then
	echo "installing .vimrc..."
	echo "deleting old .vimrc..."
	rm ~/.vimrc
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
