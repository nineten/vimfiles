call pathogen#infect()
set background=dark
color mango_pudding 
syntax on
filetype plugin indent on
set tabstop=2
set shiftwidth=2
autocmd BufNewFile,BufRead Gemfile set filetype=ruby
set number
map <C-n> :NERDTreeToggle<CR>
"Show hidden files in NerdTree
let NERDTreeShowHidden=1
"autopen NERDTree and focus cursor in new document
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
