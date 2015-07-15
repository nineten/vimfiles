call pathogen#infect()
set background=dark
color mango_pudding 
syntax on
filetype plugin indent on
set tabstop=2
set shiftwidth=2
autocmd BufNewFile,BufRead Gemfile set filetype=ruby
set number
map <leader>n :NERDTreeToggle<CR>
"Show hidden files in NerdTree
let NERDTreeShowHidden=1
"autopen NERDTree and focus cursor in new document
"autocmd VimEnter * NERDTree
"ctrlP setup
let g:ctrlp_show_hidden = 1
let g:NERDTreeChDirMode       = 2
let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_dont_split = 'NERD'
"custom commands
command Rresize execute "vertical resize 31"
"jsx inclusion
let g:jsx_ext_required = 0
"mapping blackhole register to delete
map <leader>d "_d

nnoremap <S-j> :m .+1<CR>==
nnoremap <S-k> :m .-2<CR>==
inoremap <S-j> <Esc>:m .+1<CR>==gi
inoremap <S-k> <Esc>:m .-2<CR>==gi
vnoremap <S-k> :m '<-2<CR>gv=gv
vnoremap <S-j> :m '>+1<CR>gv=gv

