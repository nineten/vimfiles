# Vimfiles
Personal vimfiles by Jayden Ma

Original mango theme from [https://github.com/goatslacker/mango.vim](https://github.com/goatslacker/mango.vim)


## Setup
#### Install
- After clone this repo run the following commands to clone the plugins:
- git submodule init
- git submodule update
- Run install.sh or Copy and replace files into home directory
- Respond *"y"* to the script for vim configs
	- **WARNING**: this replaces all your .vim and .vimrc
	- If you are new to vim responding *"y"* is fine.
- Respond *"n"* to the script for bash configs
	- I would recommend not to use my bash configs because it contains machine specific configs used for rvm / postgres
	- However if you are new u might want to copy the lines in .bash_profile where the git branch is parsed and displayed on the console
 
#### Additional Bash configs (Optional)
- Load jayden.terminal into terminal configs
- Install [Terminus TTF font](http://files.ax86.net/terminus-ttf/)


## Plugins Used
##### [NERDTree](https://github.com/scrooloose/nerdtree)
- Directory browser
- &lt;Leader-n&gt; to toggle
- &lt;Shift-c&gt; to change directory to

##### [NERDCommentor](https://github.com/scrooloose/nerdcommenter)
- Quick comment / uncomment
- visual selection + &lt;Leader-c-c&gt; to comment out
- visual selection + &lt;Leader-c-u&gt; to uncomment

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
- &lt;Ctrl-p&gt; + file name to find file. 
- &lt;Ctrl-v&gt; over the file name to open a new vertical split

##### [syntastic](https://github.com/scrooloose/syntastic)
- Syntax checker

##### [ag](https://github.com/rking/ag.vim)
- Silver Searcher plugin (ag)
- :Ag + [search term] to search for term in all files in directory


## Custom Commands/Mappings
##### \<Leader\> d
- to blackhole register "\_d (Deletes without copying)

##### \<Leader\> y
- to clipboard register "+y

##### \<Shift-k\>
- swaps current line with line above

##### \<Shift-j\>
- swaps current line with line below

##### \<Shift-LeftArrow\>
- make vertical split smaller

##### \<Shift-RightArrow\>
- make vertical split larger 

##### \<Leader\> =
- make splits equal in size 


## Other Useful Commands
##### v + a + t
- select the (outer) tag and place cursor on the end
- (works with d / y instead of v)

##### v + i + t
- select the (inner) tag and place cursor on the end
- (works with d / y instead of v)

#### Other References
- [http://vim.rtorr.com/](http://vim.rtorr.com/)
