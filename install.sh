#!/bin/bash
echo "installing vimfiles..."
echo "deleting old .vim files..."
rm -rf ~/.vim
echo "copying new .vim files..."
cp -R .vim* ~/
echo "done."
