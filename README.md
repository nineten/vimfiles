# Vimfiles
Personal vimfiles by Jayden Ma

Original mango theme from [https://github.com/goatslacker/mango.vim](https://github.com/goatslacker/mango.vim)


## Setup
- After clone this repo run the following commands to clone the plugins:
- git submodule init
- git submodule update
- Run install.sh or Copy and replace files into home directory


## Plugins Used
##### [NERDTree](https://github.com/scrooloose/nerdtree)
- Directory browser
- &lt;Ctrl-n&gt; to toggle
- &lt;Shift-c&gt; to change directory to

##### [NERDCommentor](https://github.com/scrooloose/nerdcommenter)
- Quick comment / uncomment
- visual selection + &lt;leader-c-c&gt; to comment out
- visual selection + &lt;leader-c-u&gt; to uncomment

##### [vim-sensible](https://github.com/tpope/vim-sensible)
- Defaults settings on vim

##### [vim-surround](https://github.com/tpope/vim-surround)
- Quick surround text
- visual selection + &lt;Shift+s&gt; + [any delimiter eg. " ' &lt;a&gt;] to surround text
- &lt;c-s&gt; + [existing delimiter] + [new delimiter] to change delimiter
- &lt;d-s&gt; + [existing delimiter] to delete delimiter

##### [vim-airline](https://github.com/bling/vim-airline)
- Status/Tabline

##### [vim-fugitive](https://github.com/tpope/vim-fugitive)
- Quick git commands and show Branch on Status/Tabline

##### [CtrlP](https://github.com/kien/ctrlp.vim)
- Full path file finder
- &lt;Ctrl-p&gt; + file name to find file. Enter to open.

##### [syntastic](https://github.com/scrooloose/syntastic)
- Syntax checker

##### [ag](https://github.com/rking/ag.vim)
- Silver Searcher plugin (ag)
- :Ag + [search term] to search for term in all files in directory

